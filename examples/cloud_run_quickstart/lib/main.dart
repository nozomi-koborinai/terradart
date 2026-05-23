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
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/secret_manager.dart';

final class ApiServiceStack extends Stack {
  ApiServiceStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    add(
      GoogleSecretManagerSecret(
        localName: 'db_password',
        secretId: TfArg.literal('api-db-password'),
        replication: SecretManagerSecretReplication.userManaged([
          SecretManagerSecretReplica(
            location: TfArg.literal('asia-northeast1'),
          ),
        ]),
      ),
    );

    final apiService = GoogleCloudRunV2Service(
      localName: 'api',
      name: TfArg.literal('api'),
      location: TfArg.literal('asia-northeast1'),
      ingress: TfArg.literal(Ingress.internalLoadBalancer),
      template: CloudRunV2ServiceTemplate(
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
    );
    add(apiService);

    // ---- Cloud Run v2 Job: nightly cleanup --------------------------------
    //
    // One-shot batch container, run to completion. Triggered externally
    // (e.g. Cloud Scheduler -> Cloud Run Admin API); the Terraform
    // resource only defines the Job, not its executions.

    final nightlyJob = GoogleCloudRunV2Job(
      localName: 'nightly_cleanup',
      name: TfArg.literal('nightly-cleanup'),
      location: TfArg.literal('asia-northeast1'),
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
  }
}
