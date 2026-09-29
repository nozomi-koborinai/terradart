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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiSource = add(
      GoogleProjectService(
        localName: 'api_sourcerepo',
        service: .literal('sourcerepo.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        localName: 'repo_reader',
        accountId: .literal('terradart-repo-reader'),
        displayName: .literal('Source repo reader'),
      ),
    );

    final repo = add(
      GoogleSourcerepoRepository(
        localName: 'hello',
        name: .literal('terradart-hello'),
        dependsOn: [ResourceDependency(apiSource)],
      ),
    );

    add(
      GoogleSourcerepoRepositoryIamMember(
        localName: 'reader',
        repository: .ref(repo.nameRef),
        role: .literal('roles/source.reader'),
        member: .ref(reader.iamMember),
        dependsOn: [ResourceDependency(repo), ResourceDependency(reader)],
      ),
    );
  }
}
