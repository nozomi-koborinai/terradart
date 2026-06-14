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
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/memcache.dart';
import 'package:terradart_google/redis.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_google/time.dart';

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
      ],
      propagationDelay: const Duration(seconds: 60),
    );

    final dbPassword = add(
      GoogleSecretManagerSecret(
        localName: 'db_password',
        secretId: TfArg.literal('api-db-password'),
        replication: SecretManagerSecretReplication.userManaged([
          SecretManagerSecretReplica(
            location: TfArg.literal('asia-northeast1'),
          ),
        ]),
        dependsOn: apiDeps,
      ),
    );

    // The secret needs a VERSION holding the value; without it the service's
    // `versions/latest` reference 404s ("Secret ... versions/latest was not
    // found"). Write-only data keeps the value out of Terraform state (§10.4).
    final dbPasswordV1 = add(
      GoogleSecretManagerSecretVersion(
        localName: 'db_password_v1',
        secret: TfArg.ref(dbPassword.id),
        secretDataWo: TfArg.literal('apply-smoke-placeholder'),
        secretDataWoVersion: TfArg.literal(1),
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
        accountId: TfArg.literal('api-runtime'),
        displayName: TfArg.literal('Cloud Run api runtime'),
      ),
    );

    final secretAccessor = add(
      GoogleSecretManagerSecretIamMember(
        localName: 'api_runtime_secret_accessor',
        secretId: TfArg.ref(dbPassword.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: TfArg.ref(runtimeSa.iamMember),
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
        name: TfArg.literal('app-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    final psaRange = add(
      GoogleComputeGlobalAddress(
        localName: 'psa_range',
        name: TfArg.literal('app-psa-range'),
        addressType: TfArg.literal(GlobalAddressType.internal),
        purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
        prefixLength: TfArg.literal(16),
        network: TfArg.ref(vpc.id),
        dependsOn: apiDeps,
      ),
    );

    final psaConnection = add(
      GoogleServiceNetworkingConnection(
        localName: 'psa',
        network: TfArg.ref(vpc.id),
        service: TfArg.literal('servicenetworking.googleapis.com'),
        reservedPeeringRanges: TfArg.literal([psaRange.nameRef.interpolation]),
        dependsOn: apiDeps,
      ),
    );

    final runConnector = GoogleVpcAccessConnector(
      localName: 'run_vpc',
      name: TfArg.literal('run-vpc'),
      region: TfArg.literal('asia-northeast1'),
      ipCidrRange: TfArg.literal('10.8.0.0/28'),
      network: TfArg.ref(vpc.id),
      minInstances: TfArg.literal(2),
      maxInstances: TfArg.literal(3),
      dependsOn: apiDeps,
    );
    add(runConnector);

    final cache = add(
      GoogleRedisInstance(
        localName: 'api_cache',
        name: TfArg.literal('api-cache'),
        memorySizeGb: TfArg.literal(1),
        region: TfArg.literal('asia-northeast1'),
        tier: TfArg.literal(RedisInstanceTier.basic),
        // Private Service Access: peer the instance into the dedicated VPC
        // over the PSA range reserved above. The provider takes the network
        // id (projects/<project>/global/networks/<name>), not a short name.
        authorizedNetwork: TfArg.ref(vpc.id),
        connectMode: TfArg.literal(
          RedisInstanceConnectMode.privateServiceAccess,
        ),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(psaConnection),
        ],
      ),
    );

    add(
      GoogleMemcacheInstance(
        localName: 'api_sessions',
        name: TfArg.literal('api-sessions'),
        nodeCount: TfArg.literal(1),
        nodeConfig: MemcacheInstanceNodeConfig(
          cpuCount: TfArg.literal(1),
          memorySizeMb: TfArg.literal(1024),
        ),
        region: TfArg.literal('asia-northeast1'),
        // Memcache reaches the project only over Private Service Access, so
        // it must peer into a VPC that has a PSA connection. Point it at the
        // dedicated VPC's id (projects/<project>/global/networks/<name>) and
        // order it after the peering; a short name or the default network
        // (no PSA range) fails apply with "Google private service access is
        // not enabled".
        authorizedNetwork: TfArg.ref(vpc.id),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(psaConnection),
        ],
      ),
    );

    final apiService = GoogleCloudRunV2Service(
      localName: 'api',
      name: TfArg.literal('api'),
      location: TfArg.literal('asia-northeast1'),
      ingress: TfArg.literal(Ingress.internalLoadBalancer),
      // Cloud Run v2 services default deletion_protection=true, which makes
      // `terraform destroy` fail ("cannot destroy service without setting
      // deletion_protection=false"). Disable it so the sweep can tear down.
      deletionProtection: TfArg.literal(false),
      template: CloudRunV2ServiceTemplate(
        // Runtime identity for the revision — must be able to read the
        // secret-backed env var below (see the IAM member above).
        serviceAccount: TfArg.ref(runtimeSa.email),
        vpcAccess: CloudRunV2ServiceVpcAccess(
          connector: TfArg.ref(runConnector.selfLink),
          egress: TfArg.literal(VpcAccessEgress.privateRangesOnly),
        ),
        containers: [
          CloudRunV2ServiceServiceContainer(
            image: TfArg.literal('gcr.io/cloudrun/hello'),
            env: [
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('LOG_LEVEL'),
                source:
                    CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info')),
              ),
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('DB_PASSWORD'),
                source: CloudRunV2ServiceEnvVarFromSecret(
                  secret: TfArg.literal('api-db-password'),
                  version: TfArg.literal('latest'),
                ),
              ),
              // Reaches the cache through the VPC connector below; the
              // interpolation also gives Terraform the redis -> service
              // ordering without an explicit dependsOn entry.
              CloudRunV2ServiceEnvVar(
                name: TfArg.literal('REDIS_HOST'),
                source: CloudRunV2ServiceEnvVarFromLiteral(
                  TfArg.ref(cache.host),
                ),
              ),
            ],
            ports: CloudRunV2ServiceContainerPort(
              containerPort: TfArg.literal(8080),
            ),
            resources: CloudRunV2ServiceContainerResources(
              limits: TfArg.literal({'cpu': '1', 'memory': '512Mi'}),
              cpuIdle: TfArg.literal(true),
              startupCpuBoost: TfArg.literal(true),
            ),
          ),
        ],
      ),
      scaling: CloudRunV2ServiceServiceScaling(
        minInstanceCount: TfArg.literal(0),
        maxInstanceCount: TfArg.literal(4),
        scalingMode: TfArg.literal(ScalingMode.automatic),
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
        name: TfArg.literal('batch-workers'),
        location: TfArg.literal('asia-northeast1'),
        launchStage: TfArg.literal(CloudRunV2WorkerPoolLaunchStage.ga),
        // Same deletion_protection=true default as the service — disable so
        // `terraform destroy` can remove the worker pool.
        deletionProtection: TfArg.literal(false),
        template: CloudRunV2WorkerPoolTemplate(
          containers: const [
            {'image': 'gcr.io/cloudrun/hello'},
          ],
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
      name: TfArg.literal('nightly-cleanup'),
      location: TfArg.literal('asia-northeast1'),
      // Cloud Run v2 jobs default deletion_protection=true, which blocks
      // `terraform destroy` ("cannot destroy job without setting
      // deletion_protection=false"). Disable it for the sweep.
      deletionProtection: TfArg.literal(false),
      template: CloudRunV2JobTemplate(
        template: CloudRunV2JobTaskTemplate(
          maxRetries: TfArg.literal(2),
          timeout: TfArg.literal('600s'),
          containers: [
            CloudRunV2JobContainer(
              image: TfArg.literal('gcr.io/cloudrun/hello'),
              args: TfArg.literal([
                '/bin/sh',
                '-c',
                'echo "nightly cleanup running"',
              ]),
              resources: CloudRunV2JobContainerResources(
                limits: TfArg.literal({'cpu': '1', 'memory': '512Mi'}),
              ),
            ),
          ],
        ),
        parallelism: TfArg.literal(1),
        taskCount: TfArg.literal(1),
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
        name: TfArg.ref(apiService.nameRef),
        role: TfArg.literal('roles/run.invoker'),
        member: TfArg.literal('allUsers'),
        location: TfArg.literal('asia-northeast1'),
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
      accountId: TfArg.literal('cleanup-scheduler'),
      displayName: TfArg.literal('Nightly cleanup scheduler'),
    );
    add(schedulerSa);

    add(
      GoogleCloudRunV2JobIamMember(
        localName: 'nightly_cleanup_invoker',
        name: TfArg.ref(nightlyJob.nameRef),
        role: TfArg.literal('roles/run.invoker'),
        member: TfArg.ref(schedulerSa.iamMember),
        location: TfArg.literal('asia-northeast1'),
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
        name: TfArg.ref(batchWorkers.nameRef),
        role: TfArg.literal('roles/run.developer'),
        member: TfArg.ref(schedulerSa.iamMember),
        location: TfArg.literal('asia-northeast1'),
      ),
    );
  }
}
