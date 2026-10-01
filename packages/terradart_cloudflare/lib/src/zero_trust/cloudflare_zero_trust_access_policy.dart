// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_policy`.
const Set<String> _cloudflareZeroTrustAccessPolicySensitive = <String>{};

/// Zero Trust Access Policy enum for `decision`.
extension type const ZeroTrustAccessPolicyDecision._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustAccessPolicyDecision.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustAccessPolicyDecision.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustAccessPolicyDecision.arg(TfArg<String> arg) : this._(arg);

  static const allow = ZeroTrustAccessPolicyDecision._(TfArgLiteral('allow'));
  static const deny = ZeroTrustAccessPolicyDecision._(TfArgLiteral('deny'));
  static const nonIdentity = ZeroTrustAccessPolicyDecision._(
    TfArgLiteral('non_identity'),
  );
  static const bypass = ZeroTrustAccessPolicyDecision._(TfArgLiteral('bypass'));

  static const List<ZeroTrustAccessPolicyDecision> values = [
    allow,
    deny,
    nonIdentity,
    bypass,
  ];
}

/// Typed helper for the `approval_groups` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyApprovalGroups {
  const ZeroTrustAccessPolicyApprovalGroups({
    required this.approvalsNeeded,
    this.emailAddresses,
    this.emailListUuid,
  });

  final TfArg<num> approvalsNeeded;

  final TfArg<List<String>>? emailAddresses;

  final TfArg<String>? emailListUuid;

  @internal
  Map<String, Object?> encode() => {
    'approvals_needed': approvalsNeeded.toTfJson(),
    'email_addresses': ?emailAddresses?.toTfJson(),
    'email_list_uuid': ?emailListUuid?.toTfJson(),
  };
}

/// Typed helper for the `connection_rules` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyConnectionRules {
  const ZeroTrustAccessPolicyConnectionRules({this.rdp});

  final ZeroTrustAccessPolicyRdp? rdp;

  @internal
  Map<String, Object?> encode() => {'rdp': ?rdp?.encode()};
}

/// Typed helper for the `connection_rules.rdp` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRdp {
  const ZeroTrustAccessPolicyRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  final List<ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats>?
  allowedClipboardLocalToRemoteFormats;

  final List<ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats>?
  allowedClipboardRemoteToLocalFormats;

  @internal
  Map<String, Object?> encode() => {
    if (allowedClipboardLocalToRemoteFormats != null)
      'allowed_clipboard_local_to_remote_formats': [
        for (final e in allowedClipboardLocalToRemoteFormats!) e.toTfJson(),
      ],
    if (allowedClipboardRemoteToLocalFormats != null)
      'allowed_clipboard_remote_to_local_formats': [
        for (final e in allowedClipboardRemoteToLocalFormats!) e.toTfJson(),
      ],
  };
}

/// `allowed_clipboard_local_to_remote_formats` — derived from the provider schema description.
extension type const ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const text =
      ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats._(
        TfArgLiteral('text'),
      );

  static const List<ZeroTrustAccessPolicyAllowedClipboardLocalToRemoteFormats>
  values = [text];
}

/// `allowed_clipboard_remote_to_local_formats` — derived from the provider schema description.
extension type const ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const text =
      ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats._(
        TfArgLiteral('text'),
      );

  static const List<ZeroTrustAccessPolicyAllowedClipboardRemoteToLocalFormats>
  values = [text];
}

/// Typed helper for the `exclude` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExclude {
  const ZeroTrustAccessPolicyExclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.cloudflareAccountMember,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
    this.userRiskScore,
  });

  final ZeroTrustAccessPolicyAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyAuthContext? authContext;

  final ZeroTrustAccessPolicyAuthMethod? authMethod;

  final ZeroTrustAccessPolicyAzureAd? azureAd;

  final ZeroTrustAccessPolicyCertificate? certificate;

  final ZeroTrustAccessPolicyCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessPolicyCommonName? commonName;

  final ZeroTrustAccessPolicyDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyEmail? email;

  final ZeroTrustAccessPolicyEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyEmailList? emailList;

  final ZeroTrustAccessPolicyEveryone? everyone;

  final ZeroTrustAccessPolicyExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyGeo? geo;

  final ZeroTrustAccessPolicyGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyGroup? group;

  final ZeroTrustAccessPolicyGsuite? gsuite;

  final ZeroTrustAccessPolicyIp? ip;

  final ZeroTrustAccessPolicyIpList? ipList;

  final ZeroTrustAccessPolicyLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyOidc? oidc;

  final ZeroTrustAccessPolicyOkta? okta;

  final ZeroTrustAccessPolicySaml? saml;

  final ZeroTrustAccessPolicyServiceToken? serviceToken;

  final ZeroTrustAccessPolicyUserRiskScore? userRiskScore;

  @internal
  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'cloudflare_account_member': ?cloudflareAccountMember?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
    'user_risk_score': ?userRiskScore?.encode(),
  };
}

/// Typed helper for the `exclude.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyAnyValidServiceToken {
  const ZeroTrustAccessPolicyAnyValidServiceToken();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.auth_context` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyAuthContext {
  const ZeroTrustAccessPolicyAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  @internal
  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.auth_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyAuthMethod {
  const ZeroTrustAccessPolicyAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  @internal
  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyAzureAd {
  const ZeroTrustAccessPolicyAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.certificate` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyCertificate {
  const ZeroTrustAccessPolicyCertificate();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyCloudflareAccountMember {
  const ZeroTrustAccessPolicyCloudflareAccountMember({this.accountId});

  final RefTo<CloudflareAccount>? accountId;

  @internal
  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `exclude.common_name` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyCommonName {
  const ZeroTrustAccessPolicyCommonName({required this.commonName});

  final TfArg<String> commonName;

  @internal
  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `exclude.device_posture` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyDevicePosture {
  const ZeroTrustAccessPolicyDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  final RefTo<CloudflareAccount>? accountId;

  final TfArg<String> integrationUid;

  @internal
  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `exclude.email` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyEmail {
  const ZeroTrustAccessPolicyEmail({required this.email});

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `exclude.email_domain` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyEmailDomain {
  const ZeroTrustAccessPolicyEmailDomain({required this.domain});

  final TfArg<String> domain;

  @internal
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `exclude.email_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyEmailList {
  const ZeroTrustAccessPolicyEmailList({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.everyone` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyEveryone {
  const ZeroTrustAccessPolicyEveryone();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyExternalEvaluation {
  const ZeroTrustAccessPolicyExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  @internal
  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `exclude.geo` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyGeo {
  const ZeroTrustAccessPolicyGeo({required this.countryCode});

  final TfArg<String> countryCode;

  @internal
  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `exclude.github_organization` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyGithubOrganization {
  const ZeroTrustAccessPolicyGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  @internal
  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    'team': ?team?.toTfJson(),
  };
}

/// Typed helper for the `exclude.group` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyGroup {
  const ZeroTrustAccessPolicyGroup({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.gsuite` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyGsuite {
  const ZeroTrustAccessPolicyGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  @internal
  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.ip` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyIp {
  const ZeroTrustAccessPolicyIp({required this.ip});

  final TfArg<String> ip;

  @internal
  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `exclude.ip_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyIpList {
  const ZeroTrustAccessPolicyIpList({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyLinkedAppToken {
  const ZeroTrustAccessPolicyLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  @internal
  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `exclude.login_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyLoginMethod {
  const ZeroTrustAccessPolicyLoginMethod({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.oidc` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyOidc {
  const ZeroTrustAccessPolicyOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  @internal
  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.okta` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyOkta {
  const ZeroTrustAccessPolicyOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `exclude.saml` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicySaml {
  const ZeroTrustAccessPolicySaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  @internal
  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyServiceToken {
  const ZeroTrustAccessPolicyServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  @internal
  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `exclude.user_risk_score` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessPolicyUserRiskScore {
  const ZeroTrustAccessPolicyUserRiskScore({required this.userRiskScore});

  final List<ZeroTrustAccessPolicyUserRiskScoreUserRiskScore> userRiskScore;

  @internal
  Map<String, Object?> encode() => {
    'user_risk_score': [for (final e in userRiskScore) e.toTfJson()],
  };
}

/// `user_risk_score` — derived from the provider schema description.
extension type const ZeroTrustAccessPolicyUserRiskScoreUserRiskScore._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustAccessPolicyUserRiskScoreUserRiskScore.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustAccessPolicyUserRiskScoreUserRiskScore.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustAccessPolicyUserRiskScoreUserRiskScore.arg(TfArg<String> arg)
    : this._(arg);

  static const low = ZeroTrustAccessPolicyUserRiskScoreUserRiskScore._(
    TfArgLiteral('low'),
  );
  static const medium = ZeroTrustAccessPolicyUserRiskScoreUserRiskScore._(
    TfArgLiteral('medium'),
  );
  static const high = ZeroTrustAccessPolicyUserRiskScoreUserRiskScore._(
    TfArgLiteral('high'),
  );
  static const unscored = ZeroTrustAccessPolicyUserRiskScoreUserRiskScore._(
    TfArgLiteral('unscored'),
  );

  static const List<ZeroTrustAccessPolicyUserRiskScoreUserRiskScore> values = [
    low,
    medium,
    high,
    unscored,
  ];
}

/// Typed helper for the `include` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyInclude {
  const ZeroTrustAccessPolicyInclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.cloudflareAccountMember,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
    this.userRiskScore,
  });

  final ZeroTrustAccessPolicyAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyAuthContext? authContext;

  final ZeroTrustAccessPolicyAuthMethod? authMethod;

  final ZeroTrustAccessPolicyAzureAd? azureAd;

  final ZeroTrustAccessPolicyCertificate? certificate;

  final ZeroTrustAccessPolicyCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessPolicyCommonName? commonName;

  final ZeroTrustAccessPolicyDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyEmail? email;

  final ZeroTrustAccessPolicyEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyEmailList? emailList;

  final ZeroTrustAccessPolicyEveryone? everyone;

  final ZeroTrustAccessPolicyExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyGeo? geo;

  final ZeroTrustAccessPolicyGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyGroup? group;

  final ZeroTrustAccessPolicyGsuite? gsuite;

  final ZeroTrustAccessPolicyIp? ip;

  final ZeroTrustAccessPolicyIpList? ipList;

  final ZeroTrustAccessPolicyLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyOidc? oidc;

  final ZeroTrustAccessPolicyOkta? okta;

  final ZeroTrustAccessPolicySaml? saml;

  final ZeroTrustAccessPolicyServiceToken? serviceToken;

  final ZeroTrustAccessPolicyUserRiskScore? userRiskScore;

  @internal
  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'cloudflare_account_member': ?cloudflareAccountMember?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
    'user_risk_score': ?userRiskScore?.encode(),
  };
}

/// Typed helper for the `mfa_config` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyMfaConfig {
  const ZeroTrustAccessPolicyMfaConfig({
    this.allowedAuthenticators,
    this.mfaDisabled,
    this.sessionDuration,
  });

  final List<ZeroTrustAccessPolicyAllowedAuthenticators>? allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  @internal
  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    'mfa_disabled': ?mfaDisabled?.toTfJson(),
    'session_duration': ?sessionDuration?.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
extension type const ZeroTrustAccessPolicyAllowedAuthenticators._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustAccessPolicyAllowedAuthenticators.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustAccessPolicyAllowedAuthenticators.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustAccessPolicyAllowedAuthenticators.arg(TfArg<String> arg)
    : this._(arg);

  static const totp = ZeroTrustAccessPolicyAllowedAuthenticators._(
    TfArgLiteral('totp'),
  );
  static const biometrics = ZeroTrustAccessPolicyAllowedAuthenticators._(
    TfArgLiteral('biometrics'),
  );
  static const securityKey = ZeroTrustAccessPolicyAllowedAuthenticators._(
    TfArgLiteral('security_key'),
  );

  static const List<ZeroTrustAccessPolicyAllowedAuthenticators> values = [
    totp,
    biometrics,
    securityKey,
  ];
}

/// Typed helper for the `require` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequire {
  const ZeroTrustAccessPolicyRequire({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.cloudflareAccountMember,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
    this.userRiskScore,
  });

  final ZeroTrustAccessPolicyAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyAuthContext? authContext;

  final ZeroTrustAccessPolicyAuthMethod? authMethod;

  final ZeroTrustAccessPolicyAzureAd? azureAd;

  final ZeroTrustAccessPolicyCertificate? certificate;

  final ZeroTrustAccessPolicyCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessPolicyCommonName? commonName;

  final ZeroTrustAccessPolicyDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyEmail? email;

  final ZeroTrustAccessPolicyEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyEmailList? emailList;

  final ZeroTrustAccessPolicyEveryone? everyone;

  final ZeroTrustAccessPolicyExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyGeo? geo;

  final ZeroTrustAccessPolicyGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyGroup? group;

  final ZeroTrustAccessPolicyGsuite? gsuite;

  final ZeroTrustAccessPolicyIp? ip;

  final ZeroTrustAccessPolicyIpList? ipList;

  final ZeroTrustAccessPolicyLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyOidc? oidc;

  final ZeroTrustAccessPolicyOkta? okta;

  final ZeroTrustAccessPolicySaml? saml;

  final ZeroTrustAccessPolicyServiceToken? serviceToken;

  final ZeroTrustAccessPolicyUserRiskScore? userRiskScore;

  @internal
  Map<String, Object?> encode() => {
    'any_valid_service_token': ?anyValidServiceToken?.encode(),
    'auth_context': ?authContext?.encode(),
    'auth_method': ?authMethod?.encode(),
    'azure_ad': ?azureAd?.encode(),
    'certificate': ?certificate?.encode(),
    'cloudflare_account_member': ?cloudflareAccountMember?.encode(),
    'common_name': ?commonName?.encode(),
    'device_posture': ?devicePosture?.encode(),
    'email': ?email?.encode(),
    'email_domain': ?emailDomain?.encode(),
    'email_list': ?emailList?.encode(),
    'everyone': ?everyone?.encode(),
    'external_evaluation': ?externalEvaluation?.encode(),
    'geo': ?geo?.encode(),
    'github_organization': ?githubOrganization?.encode(),
    'group': ?group?.encode(),
    'gsuite': ?gsuite?.encode(),
    'ip': ?ip?.encode(),
    'ip_list': ?ipList?.encode(),
    'linked_app_token': ?linkedAppToken?.encode(),
    'login_method': ?loginMethod?.encode(),
    'oidc': ?oidc?.encode(),
    'okta': ?okta?.encode(),
    'saml': ?saml?.encode(),
    'service_token': ?serviceToken?.encode(),
    'user_risk_score': ?userRiskScore?.encode(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_policy`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Write`
final class CloudflareZeroTrustAccessPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_policy';

  CloudflareZeroTrustAccessPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? approvalRequired,
    required ZeroTrustAccessPolicyDecision decision,
    TfArg<bool>? isolationRequired,
    required TfArg<String> name,
    TfArg<String>? purposeJustificationPrompt,
    TfArg<bool>? purposeJustificationRequired,
    TfArg<String>? sessionDuration,
    List<ZeroTrustAccessPolicyApprovalGroups>? approvalGroups,
    ZeroTrustAccessPolicyConnectionRules? connectionRules,
    List<ZeroTrustAccessPolicyExclude>? exclude,
    List<ZeroTrustAccessPolicyInclude>? include,
    ZeroTrustAccessPolicyMfaConfig? mfaConfig,
    List<ZeroTrustAccessPolicyRequire>? require,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'approval_required': ?approvalRequired,
           'decision': decision,
           'isolation_required': ?isolationRequired,
           'name': name,
           'purpose_justification_prompt': ?purposeJustificationPrompt,
           'purpose_justification_required': ?purposeJustificationRequired,
           'session_duration': ?sessionDuration,
           if (approvalGroups != null)
             'approval_groups': TfArg.literal([
               for (final e in approvalGroups) e.encode(),
             ]),
           if (connectionRules != null)
             'connection_rules': TfArg.literal(connectionRules.encode()),
           if (exclude != null)
             'exclude': TfArg.literal([for (final e in exclude) e.encode()]),
           if (include != null)
             'include': TfArg.literal([for (final e in include) e.encode()]),
           if (mfaConfig != null)
             'mfa_config': TfArg.literal(mfaConfig.encode()),
           if (require != null)
             'require': TfArg.literal([for (final e in require) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessPolicy>`.
  RefTo<CloudflareZeroTrustAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_count` attribute.
  TfRef<num> get appCount => TfRef.attribute<num>(this, 'app_count');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `reusable` attribute.
  TfRef<bool> get reusable => TfRef.attribute<bool>(this, 'reusable');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `approval_required` attribute.
  TfRef<bool> get approvalRequired =>
      TfRef.attribute<bool>(this, 'approval_required');

  /// Reference to `decision` attribute.
  TfRef<String> get decision => TfRef.attribute<String>(this, 'decision');

  /// Reference to `isolation_required` attribute.
  TfRef<bool> get isolationRequired =>
      TfRef.attribute<bool>(this, 'isolation_required');

  /// Reference to `purpose_justification_prompt` attribute.
  TfRef<String> get purposeJustificationPrompt =>
      TfRef.attribute<String>(this, 'purpose_justification_prompt');

  /// Reference to `purpose_justification_required` attribute.
  TfRef<bool> get purposeJustificationRequired =>
      TfRef.attribute<bool>(this, 'purpose_justification_required');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');
}
