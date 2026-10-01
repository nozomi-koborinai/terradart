/// Cloud Run quickstart -- Phase 4.5 Wave 3 end-to-end example.
///
/// Defines an `ApiServiceStack` that provisions a Cloud Run v2 Service
/// (`api`) running `gcr.io/cloudrun/hello`, with:
/// - 1 literal env var (`LOG_LEVEL=info`) via the sealed `EnvVarFromLiteral`,
/// - 1 secret-backed env var (`DB_PASSWORD` from Secret Manager) via the
///   sealed `EnvVarFromSecret`,
/// - 1 HTTP port (8080),
/// - service-level scaling capped at 4 instances (`ServiceScaling`),
/// - ingress restricted to internal + load balancer traffic
///   (`Ingress.internalLoadBalancer`),
///
/// demonstrating the sealed `EnvVarSource` dispatch and the typed
/// enum/helper coverage from `google_cloud_run_v2_service`.
///
/// Wave 5 Batch 2 also provisions a companion Cloud Run v2 **Job**
/// (`nightly-cleanup`) running a single container that prints a message.
/// The Job is the curated parent for `cloud_run_v2_job_iam_member` shipped
/// in Wave 5 Batch 3.
///
/// Wave 5 Batch 3 wires two IAM members on top: `roles/run.invoker` to
/// `allUsers` on the service (public HTTPS endpoint) and the same role to
/// a dedicated SA on the job (the standard Cloud Scheduler trigger
/// pattern).
///
/// Wave 25 adds a Serverless VPC Access connector and pins the service
/// revision to it via `template.vpcAccess` (`VpcAccessEgress.privateRangesOnly`).
///
/// Wave 32 adds Memorystore Redis and [Apis.enable] propagation
/// ([TimeSleep] after API enablement), wiring the cache's typed `host` ref
/// into the service env (`REDIS_HOST`).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/memcache.dart';
import 'package:terradart_google/redis.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_time/terradart_time.dart';

final class ApiServiceStack extends Stack {
  ApiServiceStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
          const TimeProvider(),
        ],
      ) {
    // ---- API enablement + Wave 25 VPC Access + Wave 32 Redis --------------
    //
    // [Apis.enable] enables the Compute, Run, Secret Manager, Service
    // Networking, VPC Access, Redis, and Memcache APIs and waits 60s for
    // propagation before dependents apply. Compute + Service Networking back
    // the Private Service Access (PSA) chain the Memorystore instances peer
    // into; without them apply fails with "Google private service access is
    // not enabled".

    final apiDeps = Apis.enable(
      this,
      barrels: [
        Barrels.compute,
        Barrels.cloudRun,
        Barrels.secretManager,
        Barrels.serviceNetworking,
        Barrels.redis,
        Barrels.memcache,
        Barrels.iapApi,
      ],
      propagationDelay: const Duration(seconds: 60),
    );

    final dbPassword = add(
      GoogleSecretManagerSecret(
        localName: 'db_password',
        secretId: .literal('api-db-password'),
        replication: .userManaged(
          .new(replicas: [.new(location: .literal('asia-northeast1'))]),
        ),
        dependsOn: apiDeps,
      ),
    );

    // The secret needs a VERSION holding the value; without it the service's
    // `versions/latest` reference 404s ("Secret ... versions/latest was not
    // found"). Write-only data keeps the value out of Terraform state (§10.4).
    final dbPasswordV1 = add(
      GoogleSecretManagerSecretVersion(
        localName: 'db_password_v1',
        secret: dbPassword.ref,
        payload: .writeOnly(
          secretDataWo: .literal('placeholder-secret-value'),
          secretDataWoVersion: .literal('1'),
        ),
        dependsOn: [ResourceDependency(dbPassword)],
      ),
    );

    // ---- Runtime service account for the Cloud Run service ----------------
    //
    // The service mounts `api-db-password` as a secret-backed env var. Cloud
    // Run reads that secret as the revision's *runtime* service account, not
    // the deployer. Left unset, the revision runs as the default compute SA
    // (`<num>-compute@developer.gserviceaccount.com`), which has no access to
    // the secret, so apply fails with "Permission denied on secret:
    // api-db-password ... must be granted roles/secretmanager.secretAccessor".
    // Provision a dedicated runtime SA, pin it via `template.serviceAccount`,
    // and grant it `roles/secretmanager.secretAccessor` scoped to the secret.

    final runtimeSa = add(
      GoogleServiceAccount(
        localName: 'api_runtime',
        accountId: .literal('api-runtime'),
        displayName: .literal('Cloud Run api runtime'),
      ),
    );

    final secretAccessor = add(
      GoogleSecretManagerSecretIamMember(
        localName: 'api_runtime_secret_accessor',
        secretId: .ref(dbPassword.secretIdRef),
        role: .literal('roles/secretmanager.secretAccessor'),
        member: .ref(runtimeSa.iamMember),
        dependsOn: [
          ResourceDependency(runtimeSa),
          ResourceDependency(dbPassword),
        ],
      ),
    );

    // ---- Private Service Access (PSA) for Memorystore ---------------------
    //
    // Memorystore Redis (private) and Memcache reach the project over VPC
    // peering, which requires a Private Service Access connection on a real
    // VPC. The `default` network has no PSA range, so apply fails with
    // "Google private service access is not enabled" / "Invalid authorized
    // network 'default'". Provision the standard three-resource PSA chain
    // against a dedicated VPC and point both caches at it:
    //
    //   1. GoogleComputeNetwork        — the consumer VPC.
    //   2. GoogleComputeGlobalAddress  — reserves an internal /16 for Google
    //      services to peer into (purpose VPC_PEERING, address_type INTERNAL).
    //   3. GoogleServiceNetworkingConnection — peers
    //      servicenetworking.googleapis.com into the VPC against that range.

    final vpc = add(
      GoogleComputeNetwork(
        localName: 'app_vpc',
        name: .literal('app-vpc'),
        autoCreateSubnetworks: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    final psaRange = add(
      GoogleComputeGlobalAddress(
        localName: 'psa_range',
        name: .literal('app-psa-range'),
        addressType: .literal(.internal),
        purpose: .literal(.vpcPeering),
        prefixLength: .literal(16),
        network: vpc.ref,
        dependsOn: apiDeps,
      ),
    );

    final psaConnection = add(
      GoogleServiceNetworkingConnection(
        localName: 'psa',
        network: vpc.ref,
        service: .literal('servicenetworking.googleapis.com'),
        reservedPeeringRanges: .literal([psaRange.nameRef.interpolation]),
        dependsOn: apiDeps,
      ),
    );

    final runConnector = GoogleVpcAccessConnector(
      localName: 'run_vpc',
      name: .literal('run-vpc'),
      region: .literal('asia-northeast1'),
      ipCidrRange: .literal('10.8.0.0/28'),
      network: vpc.ref,
      minCapacity: .minInstances(.literal(2)),
      maxCapacity: .maxInstances(.literal(3)),
      dependsOn: apiDeps,
    );
    add(runConnector);

    final cache = add(
      GoogleRedisInstance(
        localName: 'api_cache',
        name: .literal('api-cache'),
        memorySizeGb: .literal(1),
        region: .literal('asia-northeast1'),
        tier: .literal(.basic),
        // Private Service Access: peer the instance into the dedicated VPC
        // over the PSA range reserved above. The provider takes the network
        // id (projects/<project>/global/networks/<name>), not a short name.
        authorizedNetwork: vpc.ref,
        connectMode: .literal(.privateServiceAccess),
        dependsOn: [...apiDeps, ResourceDependency(psaConnection)],
      ),
    );

    add(
      GoogleMemcacheInstance(
        localName: 'api_sessions',
        name: .literal('api-sessions'),
        nodeCount: .literal(1),
        nodeConfig: MemcacheInstanceNodeConfig(
          cpuCount: .literal(1),
          memorySizeMb: .literal(1024),
        ),
        region: .literal('asia-northeast1'),
        // Memcache reaches the project only over Private Service Access, so
        // it must peer into a VPC that has a PSA connection. Point it at the
        // dedicated VPC's id (projects/<project>/global/networks/<name>) and
        // order it after the peering; a short name or the default network
        // (no PSA range) fails apply with "Google private service access is
        // not enabled".
        authorizedNetwork: vpc.ref,
        dependsOn: [...apiDeps, ResourceDependency(psaConnection)],
      ),
    );

    final apiService = GoogleCloudRunV2Service(
      localName: 'api',
      name: .literal('api'),
      location: .literal('asia-northeast1'),
      ingress: .literal(.internalLoadBalancer),
      // Cloud Run v2 services default deletion_protection=true, which makes
      // `terraform destroy` fail ("cannot destroy service without setting
      // deletion_protection=false"). Disable it so the sweep can tear down.
      deletionProtection: .literal(false),
      template: CloudRunV2ServiceTemplate(
        // Runtime identity for the revision — must be able to read the
        // secret-backed env var below (see the IAM member above).
        serviceAccount: .of(runtimeSa),
        vpcAccess: .new(
          connection: .connector(.ref(runConnector.selfLink)),
          egress: .literal(.privateRangesOnly),
        ),
        containers: [
          .new(
            image: .literal('gcr.io/cloudrun/hello'),
            env: [
              .new(
                name: .literal('LOG_LEVEL'),
                source: .value(.literal('info')),
              ),
              .new(
                name: .literal('DB_PASSWORD'),
                source: .valueSource(
                  .new(
                    secretKeyRef: .new(
                      secret: .literal('api-db-password'),
                      version: .literal('latest'),
                    ),
                  ),
                ),
              ),
              // Reaches the cache through the VPC connector below; the
              // interpolation also gives Terraform the redis -> service
              // ordering without an explicit dependsOn entry.
              .new(
                name: .literal('REDIS_HOST'),
                source: .value(.ref(cache.host)),
              ),
            ],
            ports: .new(containerPort: .literal(8080)),
            resources: .new(
              limits: .literal({'cpu': '1', 'memory': '512Mi'}),
              cpuIdle: .literal(true),
              startupCpuBoost: .literal(true),
            ),
          ),
        ],
      ),
      scaling: CloudRunV2ServiceScaling(
        minInstanceCount: .literal(0),
        maxInstanceCount: .literal(4),
        scalingMode: .literal(.automatic),
      ),
      dependsOn: [
        ...apiDeps,
        ResourceDependency(runConnector),
        // The secret version must exist (so `latest` resolves) and the runtime
        // SA must already have accessor on it, before the revision starts.
        ResourceDependency(dbPasswordV1),
        ResourceDependency(secretAccessor),
      ],
    );
    add(apiService);

    final batchWorkers = add(
      GoogleCloudRunV2WorkerPool(
        localName: 'batch_workers',
        name: .literal('batch-workers'),
        location: .literal('asia-northeast1'),
        launchStage: .literal(.ga),
        // Same deletion_protection=true default as the service — disable so
        // `terraform destroy` can remove the worker pool.
        deletionProtection: .literal(false),
        template: CloudRunV2WorkerPoolTemplate(
          containers: [.new(image: .literal('gcr.io/cloudrun/hello'))],
        ),
        dependsOn: apiDeps,
      ),
    );

    // ---- Cloud Run v2 Job: nightly cleanup --------------------------------
    //
    // One-shot batch container, run to completion. Triggered externally
    // (e.g. Cloud Scheduler -> Cloud Run Admin API); the Terraform
    // resource only defines the Job, not its executions.

    final nightlyJob = GoogleCloudRunV2Job(
      localName: 'nightly_cleanup',
      name: .literal('nightly-cleanup'),
      location: .literal('asia-northeast1'),
      // Cloud Run v2 jobs default deletion_protection=true, which blocks
      // `terraform destroy` ("cannot destroy job without setting
      // deletion_protection=false"). Disable it for the sweep.
      deletionProtection: .literal(false),
      template: CloudRunV2JobTemplate(
        template: .new(
          maxRetries: .literal(2),
          timeout: .literal('600s'),
          containers: [
            .new(
              image: .literal('gcr.io/cloudrun/hello'),
              args: .literal([
                '/bin/sh',
                '-c',
                'echo "nightly cleanup running"',
              ]),
              resources: .new(
                limits: .literal({'cpu': '1', 'memory': '512Mi'}),
              ),
            ),
          ],
        ),
        parallelism: .literal(1),
        taskCount: .literal(1),
      ),
      dependsOn: apiDeps,
    );
    add(nightlyJob);

    // ---- IAM: public-invoker on the service -------------------------------
    //
    // Wave 5 Batch 3. `allUsers` + `roles/run.invoker` makes the HTTPS
    // endpoint public; the actual network reach is still gated by
    // `Ingress.internalLoadBalancer` set on the service above. Use both
    // -- IAM allows the call, ingress decides whether the packet ever
    // reaches the IAM check.

    add(
      GoogleCloudRunV2ServiceIamMember(
        localName: 'api_public_invoker',
        name: .ref(apiService.nameRef),
        role: .literal('roles/run.invoker'),
        member: .literal('allUsers'),
        location: .literal('asia-northeast1'),
      ),
    );

    // IAP accessor on the Cloud Run service (project-scoped IAP web path).
    add(
      GoogleIapWebCloudRunServiceIamMember(
        localName: 'api_iap_accessor',
        cloudRunServiceName: .ref(apiService.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .ref(runtimeSa.iamMember),
        location: .literal('asia-northeast1'),
        dependsOn: [
          ResourceDependency(apiService),
          ResourceDependency(runtimeSa),
          ...apiDeps,
        ],
      ),
    );

    // ---- IAM: scheduler SA invoking the cleanup job -----------------------
    //
    // A dedicated SA that an external Cloud Scheduler entry would
    // authenticate as. Granting `roles/run.invoker` scoped to the job
    // lets that SA call Run Admin's `RunJob` API for `nightly-cleanup`
    // -- and nothing else in the project.

    final schedulerSa = GoogleServiceAccount(
      localName: 'cleanup_scheduler',
      accountId: .literal('cleanup-scheduler'),
      displayName: .literal('Nightly cleanup scheduler'),
    );
    add(schedulerSa);

    add(
      GoogleCloudRunV2JobIamMember(
        localName: 'nightly_cleanup_invoker',
        name: .ref(nightlyJob.nameRef),
        role: .literal('roles/run.invoker'),
        member: .ref(schedulerSa.iamMember),
        location: .literal('asia-northeast1'),
      ),
    );

    // ---- Wave 24: worker pool access --------------------------------------
    //
    // Worker pools have no request-driven invocation path, so the IAM API
    // rejects `roles/run.invoker` here ("Role roles/run.invoker is not
    // supported for this resource"). Grant the resource-scoped Cloud Run
    // Developer role (`roles/run.developer`) instead -- the documented role
    // for managing a worker pool and its revisions -- to the same SA.

    add(
      GoogleCloudRunV2WorkerPoolIamMember(
        localName: 'batch_workers_developer',
        name: .ref(batchWorkers.nameRef),
        role: .literal('roles/run.developer'),
        member: .ref(schedulerSa.iamMember),
        location: .literal('asia-northeast1'),
      ),
    );
  }
}
