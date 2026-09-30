// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_policy`.
const Set<String> _cloudflareZeroTrustAccessPolicySensitive = <String>{};

/// Zero Trust Access Policy enum for `decision`.
enum ZeroTrustAccessPolicyDecision implements TerraformEnum {
  allow('allow'),
  deny('deny'),
  nonIdentity('non_identity'),
  bypass('bypass');

  const ZeroTrustAccessPolicyDecision(this.terraformValue);
  @override
  final String terraformValue;
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

  final ZeroTrustAccessPolicyConnectionRulesRdp? rdp;

  Map<String, Object?> encode() => {'rdp': ?rdp?.encode()};
}

/// Typed helper for the `connection_rules.rdp` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyConnectionRulesRdp {
  const ZeroTrustAccessPolicyConnectionRulesRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  final List<
    TfArg<
      ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardLocalToRemoteFormats
    >
  >?
  allowedClipboardLocalToRemoteFormats;

  final List<
    TfArg<
      ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardRemoteToLocalFormats
    >
  >?
  allowedClipboardRemoteToLocalFormats;

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
enum ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardLocalToRemoteFormats
    implements TerraformEnum {
  text('text');

  const ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardLocalToRemoteFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `allowed_clipboard_remote_to_local_formats` — derived from the provider schema description.
enum ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardRemoteToLocalFormats
    implements TerraformEnum {
  text('text');

  const ZeroTrustAccessPolicyConnectionRulesRdpAllowedClipboardRemoteToLocalFormats(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final ZeroTrustAccessPolicyExcludeAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyExcludeAuthContext? authContext;

  final ZeroTrustAccessPolicyExcludeAuthMethod? authMethod;

  final ZeroTrustAccessPolicyExcludeAzureAd? azureAd;

  final ZeroTrustAccessPolicyExcludeCertificate? certificate;

  final ZeroTrustAccessPolicyExcludeCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessPolicyExcludeCommonName? commonName;

  final ZeroTrustAccessPolicyExcludeDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyExcludeEmail? email;

  final ZeroTrustAccessPolicyExcludeEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyExcludeEmailList? emailList;

  final ZeroTrustAccessPolicyExcludeEveryone? everyone;

  final ZeroTrustAccessPolicyExcludeExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyExcludeGeo? geo;

  final ZeroTrustAccessPolicyExcludeGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyExcludeGroup? group;

  final ZeroTrustAccessPolicyExcludeGsuite? gsuite;

  final ZeroTrustAccessPolicyExcludeIp? ip;

  final ZeroTrustAccessPolicyExcludeIpList? ipList;

  final ZeroTrustAccessPolicyExcludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyExcludeLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyExcludeOidc? oidc;

  final ZeroTrustAccessPolicyExcludeOkta? okta;

  final ZeroTrustAccessPolicyExcludeSaml? saml;

  final ZeroTrustAccessPolicyExcludeServiceToken? serviceToken;

  final ZeroTrustAccessPolicyExcludeUserRiskScore? userRiskScore;

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
@immutable
final class ZeroTrustAccessPolicyExcludeAnyValidServiceToken {
  const ZeroTrustAccessPolicyExcludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.auth_context` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeAuthContext {
  const ZeroTrustAccessPolicyExcludeAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.auth_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeAuthMethod {
  const ZeroTrustAccessPolicyExcludeAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeAzureAd {
  const ZeroTrustAccessPolicyExcludeAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.certificate` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeCertificate {
  const ZeroTrustAccessPolicyExcludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeCloudflareAccountMember {
  const ZeroTrustAccessPolicyExcludeCloudflareAccountMember({this.accountId});

  final RefTo<CloudflareAccount>? accountId;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `exclude.common_name` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeCommonName {
  const ZeroTrustAccessPolicyExcludeCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `exclude.device_posture` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeDevicePosture {
  const ZeroTrustAccessPolicyExcludeDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  final RefTo<CloudflareAccount>? accountId;

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `exclude.email` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeEmail {
  const ZeroTrustAccessPolicyExcludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `exclude.email_domain` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeEmailDomain {
  const ZeroTrustAccessPolicyExcludeEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `exclude.email_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeEmailList {
  const ZeroTrustAccessPolicyExcludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.everyone` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeEveryone {
  const ZeroTrustAccessPolicyExcludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeExternalEvaluation {
  const ZeroTrustAccessPolicyExcludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `exclude.geo` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeGeo {
  const ZeroTrustAccessPolicyExcludeGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `exclude.github_organization` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeGithubOrganization {
  const ZeroTrustAccessPolicyExcludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    'team': ?team?.toTfJson(),
  };
}

/// Typed helper for the `exclude.group` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeGroup {
  const ZeroTrustAccessPolicyExcludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.gsuite` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeGsuite {
  const ZeroTrustAccessPolicyExcludeGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.ip` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeIp {
  const ZeroTrustAccessPolicyExcludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `exclude.ip_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeIpList {
  const ZeroTrustAccessPolicyExcludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeLinkedAppToken {
  const ZeroTrustAccessPolicyExcludeLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `exclude.login_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeLoginMethod {
  const ZeroTrustAccessPolicyExcludeLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.oidc` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeOidc {
  const ZeroTrustAccessPolicyExcludeOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.okta` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeOkta {
  const ZeroTrustAccessPolicyExcludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `exclude.saml` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeSaml {
  const ZeroTrustAccessPolicyExcludeSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `exclude.service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeServiceToken {
  const ZeroTrustAccessPolicyExcludeServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `exclude.user_risk_score` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyExcludeUserRiskScore {
  const ZeroTrustAccessPolicyExcludeUserRiskScore({
    required this.userRiskScore,
  });

  final List<TfArg<ZeroTrustAccessPolicyExcludeUserRiskScoreUserRiskScore>>
  userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': [for (final e in userRiskScore) e.toTfJson()],
  };
}

/// `user_risk_score` — derived from the provider schema description.
enum ZeroTrustAccessPolicyExcludeUserRiskScoreUserRiskScore
    implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high'),
  unscored('unscored');

  const ZeroTrustAccessPolicyExcludeUserRiskScoreUserRiskScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final ZeroTrustAccessPolicyIncludeAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyIncludeAuthContext? authContext;

  final ZeroTrustAccessPolicyIncludeAuthMethod? authMethod;

  final ZeroTrustAccessPolicyIncludeAzureAd? azureAd;

  final ZeroTrustAccessPolicyIncludeCertificate? certificate;

  final ZeroTrustAccessPolicyIncludeCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessPolicyIncludeCommonName? commonName;

  final ZeroTrustAccessPolicyIncludeDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyIncludeEmail? email;

  final ZeroTrustAccessPolicyIncludeEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyIncludeEmailList? emailList;

  final ZeroTrustAccessPolicyIncludeEveryone? everyone;

  final ZeroTrustAccessPolicyIncludeExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyIncludeGeo? geo;

  final ZeroTrustAccessPolicyIncludeGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyIncludeGroup? group;

  final ZeroTrustAccessPolicyIncludeGsuite? gsuite;

  final ZeroTrustAccessPolicyIncludeIp? ip;

  final ZeroTrustAccessPolicyIncludeIpList? ipList;

  final ZeroTrustAccessPolicyIncludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyIncludeLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyIncludeOidc? oidc;

  final ZeroTrustAccessPolicyIncludeOkta? okta;

  final ZeroTrustAccessPolicyIncludeSaml? saml;

  final ZeroTrustAccessPolicyIncludeServiceToken? serviceToken;

  final ZeroTrustAccessPolicyIncludeUserRiskScore? userRiskScore;

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

/// Typed helper for the `include.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeAnyValidServiceToken {
  const ZeroTrustAccessPolicyIncludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.auth_context` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeAuthContext {
  const ZeroTrustAccessPolicyIncludeAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `include.auth_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeAuthMethod {
  const ZeroTrustAccessPolicyIncludeAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `include.azure_ad` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeAzureAd {
  const ZeroTrustAccessPolicyIncludeAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `include.certificate` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeCertificate {
  const ZeroTrustAccessPolicyIncludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeCloudflareAccountMember {
  const ZeroTrustAccessPolicyIncludeCloudflareAccountMember({this.accountId});

  final RefTo<CloudflareAccount>? accountId;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `include.common_name` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeCommonName {
  const ZeroTrustAccessPolicyIncludeCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `include.device_posture` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeDevicePosture {
  const ZeroTrustAccessPolicyIncludeDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  final RefTo<CloudflareAccount>? accountId;

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `include.email` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeEmail {
  const ZeroTrustAccessPolicyIncludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `include.email_domain` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeEmailDomain {
  const ZeroTrustAccessPolicyIncludeEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `include.email_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeEmailList {
  const ZeroTrustAccessPolicyIncludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.everyone` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeEveryone {
  const ZeroTrustAccessPolicyIncludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.external_evaluation` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeExternalEvaluation {
  const ZeroTrustAccessPolicyIncludeExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `include.geo` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeGeo {
  const ZeroTrustAccessPolicyIncludeGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `include.github_organization` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeGithubOrganization {
  const ZeroTrustAccessPolicyIncludeGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    'team': ?team?.toTfJson(),
  };
}

/// Typed helper for the `include.group` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeGroup {
  const ZeroTrustAccessPolicyIncludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.gsuite` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeGsuite {
  const ZeroTrustAccessPolicyIncludeGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `include.ip` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeIp {
  const ZeroTrustAccessPolicyIncludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `include.ip_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeIpList {
  const ZeroTrustAccessPolicyIncludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.linked_app_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeLinkedAppToken {
  const ZeroTrustAccessPolicyIncludeLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `include.login_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeLoginMethod {
  const ZeroTrustAccessPolicyIncludeLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.oidc` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeOidc {
  const ZeroTrustAccessPolicyIncludeOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `include.okta` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeOkta {
  const ZeroTrustAccessPolicyIncludeOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `include.saml` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeSaml {
  const ZeroTrustAccessPolicyIncludeSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `include.service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeServiceToken {
  const ZeroTrustAccessPolicyIncludeServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `include.user_risk_score` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyIncludeUserRiskScore {
  const ZeroTrustAccessPolicyIncludeUserRiskScore({
    required this.userRiskScore,
  });

  final List<TfArg<ZeroTrustAccessPolicyIncludeUserRiskScoreUserRiskScore>>
  userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': [for (final e in userRiskScore) e.toTfJson()],
  };
}

/// `user_risk_score` — derived from the provider schema description.
enum ZeroTrustAccessPolicyIncludeUserRiskScoreUserRiskScore
    implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high'),
  unscored('unscored');

  const ZeroTrustAccessPolicyIncludeUserRiskScoreUserRiskScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final List<TfArg<ZeroTrustAccessPolicyMfaConfigAllowedAuthenticators>>?
  allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

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
enum ZeroTrustAccessPolicyMfaConfigAllowedAuthenticators
    implements TerraformEnum {
  totp('totp'),
  biometrics('biometrics'),
  securityKey('security_key');

  const ZeroTrustAccessPolicyMfaConfigAllowedAuthenticators(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final ZeroTrustAccessPolicyRequireAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessPolicyRequireAuthContext? authContext;

  final ZeroTrustAccessPolicyRequireAuthMethod? authMethod;

  final ZeroTrustAccessPolicyRequireAzureAd? azureAd;

  final ZeroTrustAccessPolicyRequireCertificate? certificate;

  final ZeroTrustAccessPolicyRequireCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessPolicyRequireCommonName? commonName;

  final ZeroTrustAccessPolicyRequireDevicePosture? devicePosture;

  final ZeroTrustAccessPolicyRequireEmail? email;

  final ZeroTrustAccessPolicyRequireEmailDomain? emailDomain;

  final ZeroTrustAccessPolicyRequireEmailList? emailList;

  final ZeroTrustAccessPolicyRequireEveryone? everyone;

  final ZeroTrustAccessPolicyRequireExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessPolicyRequireGeo? geo;

  final ZeroTrustAccessPolicyRequireGithubOrganization? githubOrganization;

  final ZeroTrustAccessPolicyRequireGroup? group;

  final ZeroTrustAccessPolicyRequireGsuite? gsuite;

  final ZeroTrustAccessPolicyRequireIp? ip;

  final ZeroTrustAccessPolicyRequireIpList? ipList;

  final ZeroTrustAccessPolicyRequireLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessPolicyRequireLoginMethod? loginMethod;

  final ZeroTrustAccessPolicyRequireOidc? oidc;

  final ZeroTrustAccessPolicyRequireOkta? okta;

  final ZeroTrustAccessPolicyRequireSaml? saml;

  final ZeroTrustAccessPolicyRequireServiceToken? serviceToken;

  final ZeroTrustAccessPolicyRequireUserRiskScore? userRiskScore;

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

/// Typed helper for the `require.any_valid_service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireAnyValidServiceToken {
  const ZeroTrustAccessPolicyRequireAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.auth_context` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireAuthContext {
  const ZeroTrustAccessPolicyRequireAuthContext({
    required this.acId,
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> acId;

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'ac_id': acId.toTfJson(),
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `require.auth_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireAuthMethod {
  const ZeroTrustAccessPolicyRequireAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `require.azure_ad` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireAzureAd {
  const ZeroTrustAccessPolicyRequireAzureAd({
    required this.id,
    required this.identityProviderId,
  });

  final TfArg<String> id;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `require.certificate` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireCertificate {
  const ZeroTrustAccessPolicyRequireCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireCloudflareAccountMember {
  const ZeroTrustAccessPolicyRequireCloudflareAccountMember({this.accountId});

  final RefTo<CloudflareAccount>? accountId;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `require.common_name` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireCommonName {
  const ZeroTrustAccessPolicyRequireCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `require.device_posture` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireDevicePosture {
  const ZeroTrustAccessPolicyRequireDevicePosture({
    this.accountId,
    required this.integrationUid,
  });

  final RefTo<CloudflareAccount>? accountId;

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `require.email` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireEmail {
  const ZeroTrustAccessPolicyRequireEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `require.email_domain` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireEmailDomain {
  const ZeroTrustAccessPolicyRequireEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `require.email_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireEmailList {
  const ZeroTrustAccessPolicyRequireEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.everyone` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireEveryone {
  const ZeroTrustAccessPolicyRequireEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.external_evaluation` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireExternalEvaluation {
  const ZeroTrustAccessPolicyRequireExternalEvaluation({
    required this.evaluateUrl,
    required this.keysUrl,
  });

  final TfArg<String> evaluateUrl;

  final TfArg<String> keysUrl;

  Map<String, Object?> encode() => {
    'evaluate_url': evaluateUrl.toTfJson(),
    'keys_url': keysUrl.toTfJson(),
  };
}

/// Typed helper for the `require.geo` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireGeo {
  const ZeroTrustAccessPolicyRequireGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `require.github_organization` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireGithubOrganization {
  const ZeroTrustAccessPolicyRequireGithubOrganization({
    required this.identityProviderId,
    required this.name,
    this.team,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  final TfArg<String>? team;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
    'team': ?team?.toTfJson(),
  };
}

/// Typed helper for the `require.group` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireGroup {
  const ZeroTrustAccessPolicyRequireGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.gsuite` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireGsuite {
  const ZeroTrustAccessPolicyRequireGsuite({
    required this.email,
    required this.identityProviderId,
  });

  final TfArg<String> email;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `require.ip` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireIp {
  const ZeroTrustAccessPolicyRequireIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `require.ip_list` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireIpList {
  const ZeroTrustAccessPolicyRequireIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.linked_app_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireLinkedAppToken {
  const ZeroTrustAccessPolicyRequireLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `require.login_method` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireLoginMethod {
  const ZeroTrustAccessPolicyRequireLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.oidc` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireOidc {
  const ZeroTrustAccessPolicyRequireOidc({
    required this.claimName,
    required this.claimValue,
    required this.identityProviderId,
  });

  final TfArg<String> claimName;

  final TfArg<String> claimValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'claim_name': claimName.toTfJson(),
    'claim_value': claimValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `require.okta` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireOkta {
  const ZeroTrustAccessPolicyRequireOkta({
    required this.identityProviderId,
    required this.name,
  });

  final TfArg<String> identityProviderId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'identity_provider_id': identityProviderId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `require.saml` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireSaml {
  const ZeroTrustAccessPolicyRequireSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  final TfArg<String> attributeName;

  final TfArg<String> attributeValue;

  final TfArg<String> identityProviderId;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
    'identity_provider_id': identityProviderId.toTfJson(),
  };
}

/// Typed helper for the `require.service_token` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireServiceToken {
  const ZeroTrustAccessPolicyRequireServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `require.user_risk_score` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyRequireUserRiskScore {
  const ZeroTrustAccessPolicyRequireUserRiskScore({
    required this.userRiskScore,
  });

  final List<TfArg<ZeroTrustAccessPolicyRequireUserRiskScoreUserRiskScore>>
  userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': [for (final e in userRiskScore) e.toTfJson()],
  };
}

/// `user_risk_score` — derived from the provider schema description.
enum ZeroTrustAccessPolicyRequireUserRiskScoreUserRiskScore
    implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high'),
  unscored('unscored');

  const ZeroTrustAccessPolicyRequireUserRiskScoreUserRiskScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_access_policy`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Write`
final class CloudflareZeroTrustAccessPolicy extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_policy';

  CloudflareZeroTrustAccessPolicy({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? approvalRequired,
    required TfArg<ZeroTrustAccessPolicyDecision> decision,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `approval_required` attribute.
  TfRef<bool> get approvalRequiredRef =>
      TfRef.attribute<bool>(this, 'approval_required');

  /// Reference to `decision` attribute.
  TfRef<String> get decisionRef => TfRef.attribute<String>(this, 'decision');

  /// Reference to `isolation_required` attribute.
  TfRef<bool> get isolationRequiredRef =>
      TfRef.attribute<bool>(this, 'isolation_required');

  /// Reference to `purpose_justification_prompt` attribute.
  TfRef<String> get purposeJustificationPromptRef =>
      TfRef.attribute<String>(this, 'purpose_justification_prompt');

  /// Reference to `purpose_justification_required` attribute.
  TfRef<bool> get purposeJustificationRequiredRef =>
      TfRef.attribute<bool>(this, 'purpose_justification_required');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDurationRef =>
      TfRef.attribute<String>(this, 'session_duration');
}
