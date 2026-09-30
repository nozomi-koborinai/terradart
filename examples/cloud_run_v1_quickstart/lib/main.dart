/// Cloud Run v1 service quickstart.
///
/// Enables `run.googleapis.com` and creates a Knative
/// `google_cloud_run_service` from the official hello image, plus an
/// additive `roles/run.invoker` grant to an in-stack service account.
/// Prefer [GoogleCloudRunV2Service] for new stacks.
///
/// Default request-based billing does not charge while idle — this
/// example never sends requests and does not set min instances.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Cloud Run v1 stack: hello service + invoker member (no allUsers).
final class CloudRunV1Stack extends Stack {
  CloudRunV1Stack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiRun = add(
      GoogleProjectService(
        localName: 'api_run',
        service: .literal('run.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final invoker = add(
      GoogleServiceAccount(
        localName: 'run_invoker',
        accountId: .literal('run-v1-invoker'),
        displayName: .literal('Cloud Run v1 invoker'),
      ),
    );

    final hello = add(
      GoogleCloudRunService(
        localName: 'hello',
        location: .literal('us-central1'),
        name: .literal('terradart-run-v1'),
        template: CloudRunServiceTemplate(
          spec: CloudRunServiceSpec(
            containers: [
              CloudRunServiceContainers(
                image: .literal('us-docker.pkg.dev/cloudrun/container/hello'),
              ),
            ],
          ),
        ),
        traffic: [
          CloudRunServiceTraffic(
            percent: .literal(100),
            latestRevision: .literal(true),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(apiRun)],
      ),
    );

    add(
      GoogleCloudRunServiceIamMember(
        localName: 'invoker',
        service: .ref(hello.nameRef),
        location: .literal('us-central1'),
        role: .literal('roles/run.invoker'),
        member: .ref(invoker.iamMember),
        dependsOn: [
          ResourceDependency(apiRun),
          ResourceDependency(hello),
          ResourceDependency(invoker),
        ],
      ),
    );
  }
}
