/// Identity Platform quickstart — a multi-tenant Auth realm plus dummy
/// tenant OIDC IdP metadata (synth + validate).
///
/// Real apply is skipped for `terradart-validate` ([tool/apply_smoke_skip.yaml]):
/// tenant create returns 400 `INVALID_PROJECT_ID` after API enablement alone.
/// [GoogleIdentityPlatformConfig] is also deferred to [tool/example_debt.yaml]
/// (project singleton; create fails when Identity Platform is already on).
///
/// The OIDC IdP uses a dummy issuer and [enabled] `false`. It does not
/// complete OAuth or require a client secret. Default-supported IdPs and
/// SAML configs (real external credentials) stay out of this stack.
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

    final tenant = add(
      GoogleIdentityPlatformTenant(
        localName: 'app',
        // API: start with a letter; letters/digits/hyphens only; 4–20 chars.
        displayName: TfArg.literal('TerraDart-app'),
        allowPasswordSignup: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    // Tenant OIDC IdP metadata only. Dummy issuer, no client secret,
    // disabled so it cannot sign users in even if someone force-applies.
    add(
      GoogleIdentityPlatformTenantOauthIdpConfig(
        localName: 'demo_oidc',
        name: TfArg.literal('oidc.terradart'),
        tenant: TfArg.ref(tenant.nameRef),
        displayName: TfArg.literal('TerraDart dummy OIDC'),
        issuer: TfArg.literal('https://accounts.example.com'),
        clientId: TfArg.literal('terradart-dummy-client'),
        enabled: TfArg.literal(false),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
