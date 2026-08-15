// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_tenant_default_supported_idp_config`.
const Set<String>
_googleIdentityPlatformTenantDefaultSupportedIdpConfigSensitive = <String>{};

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

  GoogleIdentityPlatformTenantDefaultSupportedIdpConfig({
    required super.localName,
    required TfArg<String> clientId,
    required TfArg<String> clientSecret,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? enabled,
    required TfArg<String> idpId,
    TfArg<String>? project,
    required TfArg<String> tenant,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id': clientId,
           'client_secret': clientSecret,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (enabled != null) 'enabled': enabled,
           'idp_id': idpId,
           if (project != null) 'project': project,
           'tenant': tenant,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformTenantDefaultSupportedIdpConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
