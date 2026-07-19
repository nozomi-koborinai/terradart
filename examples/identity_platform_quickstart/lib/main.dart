/// Identity Platform quickstart — a multi-tenant Auth realm (synth + validate).
///
/// Real apply is skipped for `terradart-validate` ([tool/apply_smoke_skip.yaml]):
/// tenant create returns 400 `INVALID_PROJECT_ID` after API enablement alone.
/// [GoogleIdentityPlatformConfig] is also deferred to [tool/example_debt.yaml]
/// (project singleton; create fails when Identity Platform is already on).
///
/// IdP configs (OAuth / SAML / default supported IdPs) need real external
/// client credentials and are not exercised here.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/identity.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

final class IdentityPlatformStack extends Stack {
  IdentityPlatformStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
            const TimeProvider(),
          ],
        ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.identity],
      propagationDelay: const Duration(seconds: 60),
    );

    add(
      GoogleIdentityPlatformTenant(
        localName: 'app',
        // API: start with a letter; letters/digits/hyphens only; 4–20 chars.
        displayName: TfArg.literal('TerraDart-app'),
        allowPasswordSignup: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );
  }
}
