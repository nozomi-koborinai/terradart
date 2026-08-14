// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_tenant_oauth_idp_config`.
const Set<String> _googleIdentityPlatformTenantOauthIdpConfigSensitive =
    <String>{};

/// Factory wrapper for `google_identity_platform_tenant_oauth_idp_config`.
///
/// OIDC IdP configuration for a Identity Toolkit project within a tenant.
///
/// You must enable the [Google Identity
/// Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity)
/// in the marketplace prior to using this resource.
///
/// Identity Platform **tenant OIDC IdP** — Auth metadata that
/// names an OpenID Connect issuer for one tenant.
/// Creating the config does **not** complete OAuth, authenticate
/// a user, or generate Monthly Active Users.
///
/// [name] must start with `oidc.`. Prefer a thin smoke stack:
/// a dummy [issuer] (`https://accounts.example.com`), a dummy
/// [clientId], and [enabled] `false`. Omit [clientSecret] so
/// the authorization-code flow stays off. Set [deletionPolicy]
/// to `DELETE`.
///
/// `identity_platform_quickstart` is apply-smoke skipped
/// (tenant create returns 400 without GCIP multi-tenancy), so
/// this factory is synth + `terraform validate` only.
///
/// Example:
/// ```dart
/// GoogleIdentityPlatformTenantOauthIdpConfig(
///   localName: 'demo_oidc',
///   name: TfArg.literal('oidc.terradart'),
///   tenant: TfArg.ref(tenant.nameRef),
///   displayName: TfArg.literal('TerraDart dummy OIDC'),
///   issuer: TfArg.literal('https://accounts.example.com'),
///   clientId: TfArg.literal('terradart-dummy-client'),
///   enabled: TfArg.literal(false),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleIdentityPlatformTenantOauthIdpConfig extends Resource {
  static const String tfType =
      'google_identity_platform_tenant_oauth_idp_config';

  GoogleIdentityPlatformTenantOauthIdpConfig({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> tenant,
    required TfArg<String> displayName,
    required TfArg<String> issuer,
    required TfArg<String> clientId,
    TfArg<bool>? enabled,
    TfArg<String>? clientSecret,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'tenant': tenant,
           'display_name': displayName,
           'issuer': issuer,
           'client_id': clientId,
           if (enabled != null) 'enabled': enabled,
           if (clientSecret != null) 'client_secret': clientSecret,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformTenantOauthIdpConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
