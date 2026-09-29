/// Identity Platform quickstart — a multi-tenant Auth realm plus dummy
/// project and tenant OIDC IdP metadata (synth + validate).
///
/// Applying needs Identity Platform multi-tenancy on a Firebase-linked
/// project: tenant create returns 400 `INVALID_PROJECT_ID` after API
/// enablement alone (see the README's "Before you apply").
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
import 'package:terradart_time/terradart_time.dart';

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
        displayName: .literal('TerraDart-app'),
        allowPasswordSignup: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    // Project-level OIDC IdP metadata. Dummy issuer, no client secret,
    // disabled so it cannot sign users in even if someone force-applies.
    add(
      GoogleIdentityPlatformOauthIdpConfig(
        localName: 'project_oidc',
        name: .literal('oidc.terradart-project'),
        displayName: .literal('TerraDart project dummy OIDC'),
        issuer: .literal('https://accounts.example.com'),
        clientId: .literal('terradart-dummy-client'),
        enabled: .literal(false),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );

    // Tenant OIDC IdP metadata. Dummy issuer, no client secret,
    // disabled so it cannot sign users in even if someone force-applies.
    add(
      GoogleIdentityPlatformTenantOauthIdpConfig(
        localName: 'demo_oidc',
        name: .literal('oidc.terradart'),
        tenant: .ref(tenant.nameRef),
        displayName: .literal('TerraDart dummy OIDC'),
        issuer: .literal('https://accounts.example.com'),
        clientId: .literal('terradart-dummy-client'),
        enabled: .literal(false),
        deletionPolicy: .literal('DELETE'),
        dependsOn: apiDeps,
      ),
    );
  }
}
