// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_default_supported_idp_config`.
const Set<String> _googleIdentityPlatformDefaultSupportedIdpConfigSensitive =
    <String>{};

/// Factory wrapper for `google_identity_platform_default_supported_idp_config`.
///
/// Configurations options for authenticating with a the standard set of
/// Identity Toolkit-trusted IDPs.
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
final class GoogleIdentityPlatformDefaultSupportedIdpConfig extends Resource {
  static const String tfType =
      'google_identity_platform_default_supported_idp_config';

  GoogleIdentityPlatformDefaultSupportedIdpConfig({
    required super.localName,
    required TfArg<String> clientId,
    required TfArg<String> clientSecret,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? enabled,
    required TfArg<String> idpId,
    TfArg<String>? project,
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
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformDefaultSupportedIdpConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformDefaultSupportedIdpConfig>`.
  RefTo<GoogleIdentityPlatformDefaultSupportedIdpConfig> get ref =>
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
}
