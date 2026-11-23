// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_inbound_saml_sso_profile`.
const Set<String> _googleCloudIdentityInboundSamlSsoProfileSensitive =
    <String>{};

/// Typed helper for the `idp_config` block of
/// `google_cloud_identity_inbound_saml_sso_profile` (derived from provider schema).
@immutable
final class CloudIdentityInboundSamlSsoProfileIdpConfig {
  const CloudIdentityInboundSamlSsoProfileIdpConfig({
    this.changePasswordUri,
    required this.entityId,
    this.logoutRedirectUri,
    required this.singleSignOnServiceUri,
  });

  final TfArg<String>? changePasswordUri;

  final TfArg<String> entityId;

  final TfArg<String>? logoutRedirectUri;

  final TfArg<String> singleSignOnServiceUri;

  @internal
  Map<String, Object?> encode() => {
    'change_password_uri': ?changePasswordUri?.toTfJson(),
    'entity_id': entityId.toTfJson(),
    'logout_redirect_uri': ?logoutRedirectUri?.toTfJson(),
    'single_sign_on_service_uri': singleSignOnServiceUri.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_inbound_saml_sso_profile`.
///
/// A SAML federation between a Google enterprise customer and a SAML identity
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
final class GoogleCloudIdentityInboundSamlSsoProfile extends Resource {
  static const String tfType = 'google_cloud_identity_inbound_saml_sso_profile';

  GoogleCloudIdentityInboundSamlSsoProfile(
    super.localName, {
    TfArg<String>? customer,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required CloudIdentityInboundSamlSsoProfileIdpConfig idpConfig,
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
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudIdentityInboundSamlSsoProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdentityInboundSamlSsoProfile>`.
  RefTo<GoogleCloudIdentityInboundSamlSsoProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `inbound_saml_sso_profile_id` attribute.
  TfRef<String> get inboundSamlSsoProfileId =>
      TfRef.attribute<String>(this, 'inbound_saml_sso_profile_id');

  /// Reference to `sp_config` attribute.
  TfRef<List<Map<String, Object?>>> get spConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sp_config');

  /// Reference to `customer` attribute.
  TfRef<String> get customer => TfRef.attribute<String>(this, 'customer');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
