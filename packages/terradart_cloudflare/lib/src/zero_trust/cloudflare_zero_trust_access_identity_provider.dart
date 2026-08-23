// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_identity_provider`.
const Set<String> _cloudflareZeroTrustAccessIdentityProviderSensitive =
    <String>{'config.client_secret', 'scim_config.secret'};

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_access_identity_provider` (derived from provider schema).
@immutable
final class ZeroTrustAccessIdentityProviderConfig {
  const ZeroTrustAccessIdentityProviderConfig({
    this.appsDomain,
    this.attributes,
    this.authUrl,
    this.authorizationServerId,
    this.centrifyAccount,
    this.centrifyAppId,
    this.certsUrl,
    this.claims,
    this.clientId,
    this.clientSecret,
    this.conditionalAccessEnabled,
    this.directoryId,
    this.emailAttributeName,
    this.emailClaimName,
    this.enableEncryption,
    this.idpPublicCerts,
    this.issuerUrl,
    this.oktaAccount,
    this.oneloginAccount,
    this.pingEnvId,
    this.pkceEnabled,
    this.prompt,
    this.restrictToAccountMembers,
    this.scopes,
    this.signRequest,
    this.ssoTargetUrl,
    this.supportGroups,
    this.tokenUrl,
    this.headerAttributes,
  });

  final TfArg<String>? appsDomain;

  final TfArg<List<Object?>>? attributes;

  final TfArg<String>? authUrl;

  final TfArg<String>? authorizationServerId;

  final TfArg<String>? centrifyAccount;

  final TfArg<String>? centrifyAppId;

  final TfArg<String>? certsUrl;

  final TfArg<List<Object?>>? claims;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<bool>? conditionalAccessEnabled;

  final TfArg<String>? directoryId;

  final TfArg<String>? emailAttributeName;

  final TfArg<String>? emailClaimName;

  final TfArg<bool>? enableEncryption;

  final TfArg<List<Object?>>? idpPublicCerts;

  final TfArg<String>? issuerUrl;

  final TfArg<String>? oktaAccount;

  final TfArg<String>? oneloginAccount;

  final TfArg<String>? pingEnvId;

  final TfArg<bool>? pkceEnabled;

  final TfArg<String>? prompt;

  final TfArg<bool>? restrictToAccountMembers;

  final TfArg<List<Object?>>? scopes;

  final TfArg<bool>? signRequest;

  final TfArg<String>? ssoTargetUrl;

  final TfArg<bool>? supportGroups;

  final TfArg<String>? tokenUrl;

  final List<ZeroTrustAccessIdentityProviderConfigHeaderAttributes>?
  headerAttributes;

  Map<String, Object?> encode() => {
    if (appsDomain != null) 'apps_domain': appsDomain!.toTfJson(),
    if (attributes != null) 'attributes': attributes!.toTfJson(),
    if (authUrl != null) 'auth_url': authUrl!.toTfJson(),
    if (authorizationServerId != null)
      'authorization_server_id': authorizationServerId!.toTfJson(),
    if (centrifyAccount != null)
      'centrify_account': centrifyAccount!.toTfJson(),
    if (centrifyAppId != null) 'centrify_app_id': centrifyAppId!.toTfJson(),
    if (certsUrl != null) 'certs_url': certsUrl!.toTfJson(),
    if (claims != null) 'claims': claims!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (conditionalAccessEnabled != null)
      'conditional_access_enabled': conditionalAccessEnabled!.toTfJson(),
    if (directoryId != null) 'directory_id': directoryId!.toTfJson(),
    if (emailAttributeName != null)
      'email_attribute_name': emailAttributeName!.toTfJson(),
    if (emailClaimName != null) 'email_claim_name': emailClaimName!.toTfJson(),
    if (enableEncryption != null)
      'enable_encryption': enableEncryption!.toTfJson(),
    if (idpPublicCerts != null) 'idp_public_certs': idpPublicCerts!.toTfJson(),
    if (issuerUrl != null) 'issuer_url': issuerUrl!.toTfJson(),
    if (oktaAccount != null) 'okta_account': oktaAccount!.toTfJson(),
    if (oneloginAccount != null)
      'onelogin_account': oneloginAccount!.toTfJson(),
    if (pingEnvId != null) 'ping_env_id': pingEnvId!.toTfJson(),
    if (pkceEnabled != null) 'pkce_enabled': pkceEnabled!.toTfJson(),
    if (prompt != null) 'prompt': prompt!.toTfJson(),
    if (restrictToAccountMembers != null)
      'restrict_to_account_members': restrictToAccountMembers!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (signRequest != null) 'sign_request': signRequest!.toTfJson(),
    if (ssoTargetUrl != null) 'sso_target_url': ssoTargetUrl!.toTfJson(),
    if (supportGroups != null) 'support_groups': supportGroups!.toTfJson(),
    if (tokenUrl != null) 'token_url': tokenUrl!.toTfJson(),
    if (headerAttributes != null)
      'header_attributes': [for (final e in headerAttributes!) e.encode()],
  };
}

/// Typed helper for the `config.header_attributes` block of
/// `cloudflare_zero_trust_access_identity_provider` (derived from provider schema).
@immutable
final class ZeroTrustAccessIdentityProviderConfigHeaderAttributes {
  const ZeroTrustAccessIdentityProviderConfigHeaderAttributes({
    this.attributeName,
    this.headerName,
  });

  final TfArg<String>? attributeName;

  final TfArg<String>? headerName;

  Map<String, Object?> encode() => {
    if (attributeName != null) 'attribute_name': attributeName!.toTfJson(),
    if (headerName != null) 'header_name': headerName!.toTfJson(),
  };
}

/// Typed helper for the `scim_config` block of
/// `cloudflare_zero_trust_access_identity_provider` (derived from provider schema).
@immutable
final class ZeroTrustAccessIdentityProviderScimConfig {
  const ZeroTrustAccessIdentityProviderScimConfig({
    this.enabled,
    this.identityUpdateBehavior,
    this.seatDeprovision,
    this.userDeprovision,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? identityUpdateBehavior;

  final TfArg<bool>? seatDeprovision;

  final TfArg<bool>? userDeprovision;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (identityUpdateBehavior != null)
      'identity_update_behavior': identityUpdateBehavior!.toTfJson(),
    if (seatDeprovision != null)
      'seat_deprovision': seatDeprovision!.toTfJson(),
    if (userDeprovision != null)
      'user_deprovision': userDeprovision!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_identity_provider`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class CloudflareZeroTrustAccessIdentityProvider extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_identity_provider';

  CloudflareZeroTrustAccessIdentityProvider({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> name,
    TfArg<bool>? readOnly,
    TfArg<String>? samlCertificateSetId,
    required TfArg<String> type,
    TfArg<String>? zoneId,
    required ZeroTrustAccessIdentityProviderConfig config,
    ZeroTrustAccessIdentityProviderScimConfig? scimConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'name': name,
           if (readOnly != null) 'read_only': readOnly,
           if (samlCertificateSetId != null)
             'saml_certificate_set_id': samlCertificateSetId,
           'type': type,
           if (zoneId != null) 'zone_id': zoneId,
           'config': TfArg.literal(config.encode()),
           if (scimConfig != null)
             'scim_config': TfArg.literal(scimConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessIdentityProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
