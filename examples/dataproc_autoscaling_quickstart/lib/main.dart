/// Dataproc autoscaling policy quickstart.
///
/// Enables `dataproc.googleapis.com` and creates a reusable
/// `google_dataproc_autoscaling_policy` (no cluster — metadata only).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Dataproc autoscaling policy stack (policy document only).
final class DataprocAutoscalingStack extends Stack {
  DataprocAutoscalingStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiDataproc = add(
      GoogleProjectService(
        localName: 'api_dataproc',
        service: TfArg.literal('dataproc.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleDataprocAutoscalingPolicy(
        localName: 'asp',
        policyId: TfArg.literal('terradart-asp'),
        location: TfArg.literal('us-central1'),
        workerConfig: DataprocAutoscalingPolicyWorkerConfig(
          maxInstances: TfArg.literal(3),
        ),
        basicAlgorithm: DataprocAutoscalingPolicyBasicAlgorithm(
          yarnConfig: DataprocAutoscalingPolicyBasicAlgorithmYarnConfig(
            gracefulDecommissionTimeout: TfArg.literal('30s'),
            scaleUpFactor: TfArg.literal(0.5),
            scaleDownFactor: TfArg.literal(0.5),
          ),
        ),
        dependsOn: [ResourceDependency(apiDataproc)],
      ),
    );
  }
}
