// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_oauth_idp_config`.
const Set<String> _googleIdentityPlatformOauthIdpConfigSensitive = <String>{};

/// Typed helper for the `response_type` block of
/// `google_identity_platform_oauth_idp_config` (derived from provider schema).
@immutable
final class IdentityPlatformOauthIdpConfigResponseType {
  const IdentityPlatformOauthIdpConfigResponseType({this.code, this.idToken});

  final TfArg<bool>? code;

  final TfArg<bool>? idToken;

  Map<String, Object?> encode() => {
    'code': ?code?.toTfJson(),
    'id_token': ?idToken?.toTfJson(),
  };
}

/// Factory wrapper for `google_identity_platform_oauth_idp_config`.
///
/// OIDC IdP configuration for a Identity Toolkit project.
///
/// You must enable the [Google Identity
/// Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity)
/// in the marketplace prior to using this resource.
///
/// Identity Platform **project OIDC IdP** — Auth metadata that
/// names an OpenID Connect issuer for the project (not a tenant).
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
/// GoogleIdentityPlatformOauthIdpConfig(
///   'project_oidc',
///   name: TfArg.literal('oidc.terradart-project'),
///   displayName: TfArg.literal('TerraDart project dummy OIDC'),
///   issuer: TfArg.literal('https://accounts.example.com'),
///   clientId: TfArg.literal('terradart-dummy-client'),
///   enabled: TfArg.literal(false),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleIdentityPlatformOauthIdpConfig extends Resource {
  static const String tfType = 'google_identity_platform_oauth_idp_config';

  GoogleIdentityPlatformOauthIdpConfig(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? displayName,
    required TfArg<String> issuer,
    required TfArg<String> clientId,
    TfArg<bool>? enabled,
    TfArg<String>? clientSecret,
    IdentityPlatformOauthIdpConfigResponseType? responseType,
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
           'display_name': ?displayName,
           'issuer': issuer,
           'client_id': clientId,
           'enabled': ?enabled,
           'client_secret': ?clientSecret,
           if (responseType != null)
             'response_type': TfArg.literal(responseType.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformOauthIdpConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformOauthIdpConfig>`.
  RefTo<GoogleIdentityPlatformOauthIdpConfig> get ref => RefTo.of(this);

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
}
