/// IAP settings quickstart — project-level `iap_web` settings.
///
/// Enables `iap.googleapis.com` and manages `google_iap_settings` for
/// `projects/<projectId>/iap_web`. Nested access/application blocks are
/// omitted (name-only) when the API accepts defaults.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// IAP settings stack: project-level web settings only.
final class IapSettingsStack extends Stack {
  IapSettingsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: TfArg.literal('iap.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleIapSettings(
        localName: 'web',
        name: TfArg.literal('projects/$projectId/iap_web'),
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );
  }
}
