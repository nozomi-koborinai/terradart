// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_identity_provider`.
const Set<String> _cloudflareZeroTrustAccessIdentityProviderSensitive =
    <String>{'config.client_secret', 'scim_config.secret'};

/// Zero Trust Access Identity Provider enum for `type`.
enum ZeroTrustAccessIdentityProviderType implements TerraformEnum {
  onetimepin('onetimepin'),
  azuread('azureAD'),
  saml('saml'),
  centrify('centrify'),
  facebook('facebook'),
  github('github'),
  googleApps('google-apps'),
  google('google'),
  linkedin('linkedin'),
  oidc('oidc'),
  okta('okta'),
  onelogin('onelogin'),
  pingone('pingone'),
  yandex('yandex'),
  cloudflare('cloudflare');

  const ZeroTrustAccessIdentityProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    this.forceAuthn,
    this.idpPublicCerts,
    this.issuerUrl,
    this.maxSsoUrlLength,
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
    this.useLoginHint,
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

  final TfArg<bool>? forceAuthn;

  final TfArg<List<Object?>>? idpPublicCerts;

  final TfArg<String>? issuerUrl;

  final TfArg<num>? maxSsoUrlLength;

  final TfArg<String>? oktaAccount;

  final TfArg<String>? oneloginAccount;

  final TfArg<String>? pingEnvId;

  final TfArg<bool>? pkceEnabled;

  final TfArg<ZeroTrustAccessIdentityProviderConfigPrompt>? prompt;

  final TfArg<bool>? restrictToAccountMembers;

  final TfArg<List<Object?>>? scopes;

  final TfArg<bool>? signRequest;

  final TfArg<String>? ssoTargetUrl;

  final TfArg<bool>? supportGroups;

  final TfArg<String>? tokenUrl;

  final TfArg<bool>? useLoginHint;

  final List<ZeroTrustAccessIdentityProviderConfigHeaderAttributes>?
  headerAttributes;

  Map<String, Object?> encode() => {
    'apps_domain': ?appsDomain?.toTfJson(),
    'attributes': ?attributes?.toTfJson(),
    'auth_url': ?authUrl?.toTfJson(),
    'authorization_server_id': ?authorizationServerId?.toTfJson(),
    'centrify_account': ?centrifyAccount?.toTfJson(),
    'centrify_app_id': ?centrifyAppId?.toTfJson(),
    'certs_url': ?certsUrl?.toTfJson(),
    'claims': ?claims?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'conditional_access_enabled': ?conditionalAccessEnabled?.toTfJson(),
    'directory_id': ?directoryId?.toTfJson(),
    'email_attribute_name': ?emailAttributeName?.toTfJson(),
    'email_claim_name': ?emailClaimName?.toTfJson(),
    'enable_encryption': ?enableEncryption?.toTfJson(),
    'force_authn': ?forceAuthn?.toTfJson(),
    'idp_public_certs': ?idpPublicCerts?.toTfJson(),
    'issuer_url': ?issuerUrl?.toTfJson(),
    'max_sso_url_length': ?maxSsoUrlLength?.toTfJson(),
    'okta_account': ?oktaAccount?.toTfJson(),
    'onelogin_account': ?oneloginAccount?.toTfJson(),
    'ping_env_id': ?pingEnvId?.toTfJson(),
    'pkce_enabled': ?pkceEnabled?.toTfJson(),
    'prompt': ?prompt?.toTfJson(),
    'restrict_to_account_members': ?restrictToAccountMembers?.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'sign_request': ?signRequest?.toTfJson(),
    'sso_target_url': ?ssoTargetUrl?.toTfJson(),
    'support_groups': ?supportGroups?.toTfJson(),
    'token_url': ?tokenUrl?.toTfJson(),
    'use_login_hint': ?useLoginHint?.toTfJson(),
    if (headerAttributes != null)
      'header_attributes': [for (final e in headerAttributes!) e.encode()],
  };
}

/// `prompt` — derived from the provider schema description.
enum ZeroTrustAccessIdentityProviderConfigPrompt implements TerraformEnum {
  login('login'),
  selectAccount('select_account'),
  none('none'),
  consent('consent');

  const ZeroTrustAccessIdentityProviderConfigPrompt(this.terraformValue);
  @override
  final String terraformValue;
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
    'attribute_name': ?attributeName?.toTfJson(),
    'header_name': ?headerName?.toTfJson(),
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

  final TfArg<ZeroTrustAccessIdentityProviderScimConfigIdentityUpdateBehavior>?
  identityUpdateBehavior;

  final TfArg<bool>? seatDeprovision;

  final TfArg<bool>? userDeprovision;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'identity_update_behavior': ?identityUpdateBehavior?.toTfJson(),
    'seat_deprovision': ?seatDeprovision?.toTfJson(),
    'user_deprovision': ?userDeprovision?.toTfJson(),
  };
}

/// `identity_update_behavior` — derived from the provider schema description.
enum ZeroTrustAccessIdentityProviderScimConfigIdentityUpdateBehavior
    implements TerraformEnum {
  automatic('automatic'),
  reauth('reauth'),
  noAction('no_action');

  const ZeroTrustAccessIdentityProviderScimConfigIdentityUpdateBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> name,
    TfArg<bool>? readOnly,
    TfArg<String>? samlCertificateSetId,
    required TfArg<ZeroTrustAccessIdentityProviderType> type,
    RefTo<CloudflareZone>? zoneId,
    required ZeroTrustAccessIdentityProviderConfig config,
    ZeroTrustAccessIdentityProviderScimConfig? scimConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'name': name,
           'read_only': ?readOnly,
           'saml_certificate_set_id': ?samlCertificateSetId,
           'type': type,
           'zone_id': ?zoneId?.encodeAs('id'),
           'config': TfArg.literal(config.encode()),
           if (scimConfig != null)
             'scim_config': TfArg.literal(scimConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessIdentityProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessIdentityProvider>`.
  RefTo<CloudflareZeroTrustAccessIdentityProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
