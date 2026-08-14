/// Dataproc autoscaling policy + workflow template quickstart.
///
/// Enables `dataproc.googleapis.com` and creates a reusable
/// `google_dataproc_autoscaling_policy` (no cluster — metadata only), plus an
/// additive IAM grant for a policy-reader service account, and a reusable
/// `google_dataproc_workflow_template` (DAG metadata only — create does not
/// instantiate a cluster or start jobs).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Dataproc autoscaling policy + workflow template stack (metadata only).
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

    final policy = add(
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

    final policyReader = add(
      GoogleServiceAccount(
        localName: 'policy_reader',
        accountId: TfArg.literal('terradart-asp-reader'),
        displayName: TfArg.literal('Dataproc autoscaling policy reader'),
      ),
    );

    add(
      GoogleDataprocAutoscalingPolicyIamMember(
        localName: 'policy_reader_grant',
        policyId: TfArg.literal('terradart-asp'),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(policyReader.iamMember),
        dependsOn: [
          ResourceDependency(policy),
          ResourceDependency(policyReader),
        ],
      ),
    );

    add(
      GoogleDataprocWorkflowTemplate(
        localName: 'sparkpi',
        name: TfArg.literal('terradart-wf'),
        location: TfArg.literal('us-central1'),
        placement: DataprocWorkflowTemplatePlacement(
          managedCluster: DataprocWorkflowTemplatePlacementManagedCluster(
            clusterName: TfArg.literal('terradart-wf-cluster'),
            config: DataprocWorkflowTemplatePlacementManagedClusterConfig(
              gceClusterConfig:
                  DataprocWorkflowTemplatePlacementManagedClusterConfigGceClusterConfig(
                zone: TfArg.literal('us-central1-a'),
              ),
            ),
          ),
        ),
        jobs: [
          DataprocWorkflowTemplateJobs(
            stepId: TfArg.literal('sparkpi'),
            sparkJob: DataprocWorkflowTemplateJobsSparkJob(
              mainClass: TfArg.literal('org.apache.spark.examples.SparkPi'),
            ),
          ),
        ],
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiDataproc)],
      ),
    );
  }
}
