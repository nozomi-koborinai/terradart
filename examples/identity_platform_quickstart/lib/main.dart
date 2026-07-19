/// Identity Platform quickstart — project config and a tenant.
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
      GoogleIdentityPlatformConfig(
        localName: 'default',
        authorizedDomains: TfArg.literal(const [
          'localhost',
          'terradart.example',
        ]),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleIdentityPlatformTenant(
        localName: 'app',
        displayName: TfArg.literal('TerraDart tenant'),
        allowPasswordSignup: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );
  }
}
