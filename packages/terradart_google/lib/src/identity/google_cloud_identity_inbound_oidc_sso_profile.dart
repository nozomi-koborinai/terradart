// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_inbound_oidc_sso_profile`.
const Set<String> _googleCloudIdentityInboundOidcSsoProfileSensitive = <String>{
  'rp_config.client_secret',
};

/// Typed helper for the `idp_config` block of
/// `google_cloud_identity_inbound_oidc_sso_profile` (derived from provider schema).
@immutable
final class CloudIdentityInboundOidcSsoProfileIdpConfig {
  const CloudIdentityInboundOidcSsoProfileIdpConfig({
    this.changePasswordUri,
    required this.issuerUri,
  });

  final TfArg<String>? changePasswordUri;

  final TfArg<String> issuerUri;

  @internal
  Map<String, Object?> encode() => {
    'change_password_uri': ?changePasswordUri?.toTfJson(),
    'issuer_uri': issuerUri.toTfJson(),
  };
}

/// Typed helper for the `rp_config` block of
/// `google_cloud_identity_inbound_oidc_sso_profile` (derived from provider schema).
@immutable
final class CloudIdentityInboundOidcSsoProfileRpConfig {
  const CloudIdentityInboundOidcSsoProfileRpConfig({
    this.clientId,
    this.clientSecret,
  });

  final TfArg<String>? clientId;

  final Sensitive<String>? clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_inbound_oidc_sso_profile`.
///
/// An OIDC federation between a Google enterprise customer and an OIDC identity
/// provider.
///
/// The caller must be a Google Workspace / Cloud Identity administrator of the
/// customer with the SSO settings privilege (for example a super admin); Google
/// Cloud IAM roles are not sufficient.
///
/// If you are using User ADCs (Application Default Credentials) with this
/// resource, you must specify a `billing_project` and set
/// `user_project_override` to true in the provider configuration. Otherwise the
/// Cloud Identity API will return a 403 error. Your account must have the
/// `serviceusage.services.use` permission on the `billing_project` you defined.
final class GoogleCloudIdentityInboundOidcSsoProfile extends Resource {
  static const String tfType = 'google_cloud_identity_inbound_oidc_sso_profile';

  GoogleCloudIdentityInboundOidcSsoProfile(
    super.localName, {
    TfArg<String>? customer,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required CloudIdentityInboundOidcSsoProfileIdpConfig idpConfig,
    CloudIdentityInboundOidcSsoProfileRpConfig? rpConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer': ?customer,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'idp_config': TfArg.literal(idpConfig.encode()),
           if (rpConfig != null) 'rp_config': TfArg.literal(rpConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudIdentityInboundOidcSsoProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdentityInboundOidcSsoProfile>`.
  RefTo<GoogleCloudIdentityInboundOidcSsoProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `inbound_oidc_sso_profile_id` attribute.
  TfRef<String> get inboundOidcSsoProfileId =>
      TfRef.attribute<String>(this, 'inbound_oidc_sso_profile_id');

  /// Reference to `customer` attribute.
  TfRef<String> get customer => TfRef.attribute<String>(this, 'customer');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
