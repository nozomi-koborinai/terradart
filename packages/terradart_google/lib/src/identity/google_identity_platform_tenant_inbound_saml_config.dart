// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_tenant_inbound_saml_config`.
const Set<String> _googleIdentityPlatformTenantInboundSamlConfigSensitive =
    <String>{};

/// Typed helper for the `idp_config` block of
/// `google_identity_platform_tenant_inbound_saml_config` (derived from provider schema).
@immutable
final class IdentityPlatformTenantInboundSamlConfigIdpConfig {
  const IdentityPlatformTenantInboundSamlConfigIdpConfig({
    required this.idpEntityId,
    this.signRequest,
    required this.ssoUrl,
    required this.idpCertificates,
  });

  final TfArg<String> idpEntityId;

  final TfArg<bool>? signRequest;

  final TfArg<String> ssoUrl;

  final List<IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates>
  idpCertificates;

  Map<String, Object?> encode() => {
    'idp_entity_id': idpEntityId.toTfJson(),
    if (signRequest != null) 'sign_request': signRequest!.toTfJson(),
    'sso_url': ssoUrl.toTfJson(),
    'idp_certificates': [for (final e in idpCertificates) e.encode()],
  };
}

/// Typed helper for the `idp_config.idp_certificates` block of
/// `google_identity_platform_tenant_inbound_saml_config` (derived from provider schema).
@immutable
final class IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates {
  const IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates({
    this.x509Certificate,
  });

  final TfArg<String>? x509Certificate;

  Map<String, Object?> encode() => {
    if (x509Certificate != null)
      'x509_certificate': x509Certificate!.toTfJson(),
  };
}

/// Typed helper for the `sp_config` block of
/// `google_identity_platform_tenant_inbound_saml_config` (derived from provider schema).
@immutable
final class IdentityPlatformTenantInboundSamlConfigSpConfig {
  const IdentityPlatformTenantInboundSamlConfigSpConfig({
    required this.callbackUri,
    required this.spEntityId,
  });

  final TfArg<String> callbackUri;

  final TfArg<String> spEntityId;

  Map<String, Object?> encode() => {
    'callback_uri': callbackUri.toTfJson(),
    'sp_entity_id': spEntityId.toTfJson(),
  };
}

/// Factory wrapper for `google_identity_platform_tenant_inbound_saml_config`.
///
/// Inbound SAML configuration for a Identity Toolkit tenant.
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
final class GoogleIdentityPlatformTenantInboundSamlConfig extends Resource {
  static const String tfType =
      'google_identity_platform_tenant_inbound_saml_config';

  GoogleIdentityPlatformTenantInboundSamlConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> tenant,
    required IdentityPlatformTenantInboundSamlConfigIdpConfig idpConfig,
    required IdentityPlatformTenantInboundSamlConfigSpConfig spConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (project != null) 'project': project,
           'tenant': tenant,
           'idp_config': TfArg.literal(idpConfig.encode()),
           'sp_config': TfArg.literal(spConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIdentityPlatformTenantInboundSamlConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
