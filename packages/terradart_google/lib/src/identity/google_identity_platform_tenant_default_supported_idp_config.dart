// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../identity/google_identity_platform_tenant.dart'
    show GoogleIdentityPlatformTenant;

/// Sensitive field paths for `google_identity_platform_tenant_default_supported_idp_config`.
const Set<String>
_googleIdentityPlatformTenantDefaultSupportedIdpConfigSensitive = <String>{};

/// Identity Platform Tenant Default Supported Idp Config Idp enum for `idp_id`.
extension type const IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
  TfArg<String> _
) implements TfArg<String> {
  IdentityPlatformTenantDefaultSupportedIdpConfigIdpId.variable(String name)
    : this._(TfArg.variable(name));
  IdentityPlatformTenantDefaultSupportedIdpConfigIdpId.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const IdentityPlatformTenantDefaultSupportedIdpConfigIdpId.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const appleCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('apple.com'),
      );
  static const facebookCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('facebook.com'),
      );
  static const gcAppleCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('gc.apple.com'),
      );
  static const githubCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('github.com'),
      );
  static const googleCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('google.com'),
      );
  static const linkedinCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('linkedin.com'),
      );
  static const microsoftCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('microsoft.com'),
      );
  static const playgamesGoogleCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('playgames.google.com'),
      );
  static const twitterCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('twitter.com'),
      );
  static const yahooCom =
      IdentityPlatformTenantDefaultSupportedIdpConfigIdpId._(
        TfArgLiteral('yahoo.com'),
      );

  static const List<IdentityPlatformTenantDefaultSupportedIdpConfigIdpId>
  values = [
    appleCom,
    facebookCom,
    gcAppleCom,
    githubCom,
    googleCom,
    linkedinCom,
    microsoftCom,
    playgamesGoogleCom,
    twitterCom,
    yahooCom,
  ];
}

/// Factory wrapper for `google_identity_platform_tenant_default_supported_idp_config`.
///
/// Configurations options for the tenant for authenticating with a the standard
/// set of Identity Toolkit-trusted IDPs.
///
/// You must enable the [Google Identity
/// Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity)
/// in the marketplace prior to using this resource.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIdentityPlatformTenantDefaultSupportedIdpConfig
    extends Resource {
  static const String tfType =
      'google_identity_platform_tenant_default_supported_idp_config';

  GoogleIdentityPlatformTenantDefaultSupportedIdpConfig(
    super.localName, {
    required TfArg<String> clientId,
    required TfArg<String> clientSecret,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? enabled,
    required IdentityPlatformTenantDefaultSupportedIdpConfigIdpId idpId,
    TfArg<String>? project,
    required RefTo<GoogleIdentityPlatformTenant> tenant,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id': clientId,
           'client_secret': clientSecret,
           'deletion_policy': ?deletionPolicy,
           'enabled': ?enabled,
           'idp_id': idpId,
           'project': ?project,
           'tenant': tenant.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformTenantDefaultSupportedIdpConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformTenantDefaultSupportedIdpConfig>`.
  RefTo<GoogleIdentityPlatformTenantDefaultSupportedIdpConfig> get ref =>
      RefTo.of(this);

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

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `idp_id` attribute.
  TfRef<String> get idpId => TfRef.attribute<String>(this, 'idp_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');
}
