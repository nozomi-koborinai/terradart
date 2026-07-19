/// Cloud Source Repositories quickstart — repo + IAM.
///
/// Enables `sourcerepo.googleapis.com`, provisions a Git repository, and
/// grants an in-stack service account `roles/source.reader` on that repo.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/sourcerepo.dart';

/// Cloud Source Repositories stack: repository + IAM member.
final class SourcerepoStack extends Stack {
  SourcerepoStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiSource = add(
      GoogleProjectService(
        localName: 'api_sourcerepo',
        service: TfArg.literal('sourcerepo.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'repo_reader',
        accountId: TfArg.literal('terradart-repo-reader'),
        displayName: TfArg.literal('Source repo reader'),
      ),
    );

    final repo = add(
      GoogleSourcerepoRepository(
        localName: 'hello',
        name: TfArg.literal('terradart-hello'),
        dependsOn: [ResourceDependency(apiSource)],
      ),
    );

    add(
      GoogleSourcerepoRepositoryIamMember(
        localName: 'reader',
        repository: TfArg.ref(repo.nameRef),
        role: TfArg.literal('roles/source.reader'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(repo),
          ResourceDependency(reader),
        ],
      ),
    );
  }
}
