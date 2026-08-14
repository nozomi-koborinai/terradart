/// Firebase Security Rules ruleset quickstart.
///
/// Enables `firebaserules.googleapis.com` and creates an immutable
/// `google_firebaserules_ruleset` that denies all client Firestore
/// access. Creating the ruleset does not serve it — no
/// `google_firebaserules_release` is included, so existing rules stay
/// unchanged.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firebaserules.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Firebase Rules stack: unused deny-all ruleset (no release).
final class FirebaserulesStack extends Stack {
  FirebaserulesStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiRules = add(
      GoogleProjectService(
        localName: 'api_firebaserules',
        service: TfArg.literal('firebaserules.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleFirebaserulesRuleset(
        localName: 'deny_all',
        deletionPolicy: TfArg.literal('DELETE'),
        source: FirebaserulesRulesetSource(
          files: [
            FirebaserulesRulesetSourceFiles(
              name: TfArg.literal('firestore.rules'),
              content: TfArg.literal(
                'service cloud.firestore {'
                'match /databases/{database}/documents {'
                'match /{document=**} { allow read, write: if false; } } }',
              ),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(apiRules)],
      ),
    );
  }
}
