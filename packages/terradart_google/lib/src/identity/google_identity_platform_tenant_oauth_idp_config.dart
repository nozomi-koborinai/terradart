// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../identity/google_identity_platform_tenant.dart'
    show GoogleIdentityPlatformTenant;

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
///   'demo_oidc',
///   name: TfArg.literal('oidc.terradart'),
///   tenant: tenant.ref,
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

  GoogleIdentityPlatformTenantOauthIdpConfig(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleIdentityPlatformTenant> tenant,
    required TfArg<String> displayName,
    required TfArg<String> issuer,
    required TfArg<String> clientId,
    TfArg<bool>? enabled,
    TfArg<String>? clientSecret,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'tenant': tenant.encodeAs('name'),
           'display_name': displayName,
           'issuer': issuer,
           'client_id': clientId,
           'enabled': ?enabled,
           'client_secret': ?clientSecret,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformTenantOauthIdpConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformTenantOauthIdpConfig>`.
  RefTo<GoogleIdentityPlatformTenantOauthIdpConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');
}
