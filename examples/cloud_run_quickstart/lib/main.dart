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
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

class ApiServiceStack extends Stack {
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
        replication: Replication.userManaged([
          Replica(location: TfArg.literal('asia-northeast1')),
        ]),
      ),
    );

    add(
      GoogleCloudRunV2Service(
        localName: 'api',
        name: TfArg.literal('api'),
        location: TfArg.literal('asia-northeast1'),
        ingress: TfArg.literal(Ingress.internalLoadBalancer),
        template: Template(
          containers: [
            ServiceContainer(
              image: TfArg.literal('gcr.io/cloudrun/hello'),
              env: [
                EnvVar(
                  name: 'LOG_LEVEL',
                  source: EnvVarFromLiteral(TfArg.literal('info')),
                ),
                EnvVar(
                  name: 'DB_PASSWORD',
                  source: EnvVarFromSecret(
                    secret: TfArg.literal('api-db-password'),
                    version: TfArg.literal('latest'),
                  ),
                ),
              ],
              ports: ContainerPort(containerPort: TfArg.literal(8080)),
              resources: ContainerResources(
                limits: TfArg.literal({'cpu': '1', 'memory': '512Mi'}),
                cpuIdle: TfArg.literal(true),
                startupCpuBoost: TfArg.literal(true),
              ),
            ),
          ],
        ),
        scaling: ServiceScaling(
          minInstanceCount: TfArg.literal(0),
          maxInstanceCount: TfArg.literal(4),
          scalingMode: TfArg.literal(ScalingMode.automatic),
        ),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
