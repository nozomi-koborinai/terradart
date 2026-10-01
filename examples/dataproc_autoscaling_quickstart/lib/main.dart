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

import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Dataproc autoscaling policy + workflow template stack (metadata only).
final class DataprocAutoscalingStack extends Stack {
  DataprocAutoscalingStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiDataproc = add(
      GoogleProjectService(
        'api_dataproc',
        service: .literal('dataproc.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final policy = add(
      GoogleDataprocAutoscalingPolicy(
        'asp',
        policyId: .literal('terradart-asp'),
        location: .literal('us-central1'),
        workerConfig: DataprocAutoscalingPolicyWorkerConfig(
          maxInstances: .literal(3),
        ),
        basicAlgorithm: DataprocAutoscalingPolicyBasicAlgorithm(
          yarnConfig: .new(
            gracefulDecommissionTimeout: .literal('30s'),
            scaleUpFactor: .literal(0.5),
            scaleDownFactor: .literal(0.5),
          ),
        ),
        dependsOn: [apiDataproc],
      ),
    );

    final policyReader = add(
      GoogleServiceAccount(
        'policy_reader',
        accountId: .literal('terradart-asp-reader'),
        displayName: .literal('Dataproc autoscaling policy reader'),
      ),
    );

    add(
      GoogleDataprocAutoscalingPolicyIamMember(
        'policy_reader_grant',
        autoscalingPolicy: .literal('terradart-asp'),
        location: .literal('us-central1'),
        role: .literal('roles/viewer'),
        member: policyReader.principal,
        dependsOn: [policy, policyReader],
      ),
    );

    add(
      GoogleDataprocWorkflowTemplate(
        'sparkpi',
        name: .literal('terradart-wf'),
        location: .literal('us-central1'),
        placement: DataprocWorkflowTemplatePlacement(
          managedCluster: .new(
            clusterName: .literal('terradart-wf-cluster'),
            config: .new(
              gceClusterConfig: .new(zone: .literal('us-central1-a')),
            ),
          ),
        ),
        jobs: [
          DataprocWorkflowTemplateJobs(
            stepId: .literal('sparkpi'),
            sparkJob: .new(
              mainClass: .literal('org.apache.spark.examples.SparkPi'),
            ),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiDataproc],
      ),
    );
  }
}
