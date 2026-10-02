/// Cloud Source Repositories quickstart — repo + IAM.
///
/// Enables `sourcerepo.googleapis.com`, provisions a Git repository, and
/// grants an in-stack service account `roles/source.reader` on that repo.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

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
        'api_sourcerepo',
        service: .literal('sourcerepo.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final reader = add(
      GoogleServiceAccount(
        'repo_reader',
        accountId: .literal('terradart-repo-reader'),
        displayName: .literal('Source repo reader'),
      ),
    );

    final repo = add(
      GoogleSourcerepoRepository(
        'hello',
        name: .literal('terradart-hello'),
        dependsOn: [apiSource],
      ),
    );

    add(
      GoogleSourcerepoRepositoryIamMember(
        'reader',
        repository: repo.ref,
        role: .literal('roles/source.reader'),
        member: reader.principal,
        dependsOn: [repo, reader],
      ),
    );
  }
}
