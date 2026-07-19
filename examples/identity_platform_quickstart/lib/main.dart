/// Identity Platform quickstart — a multi-tenant Auth realm.
///
/// [GoogleIdentityPlatformConfig] is deferred to [tool/example_debt.yaml]: it is
/// a project singleton and `terradart-validate` already has Identity Platform
/// enabled, so create returns 400. Fresh projects can still use the factory.
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
