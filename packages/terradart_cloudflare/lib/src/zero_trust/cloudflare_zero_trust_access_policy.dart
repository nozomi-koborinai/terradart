// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_policy`.
const Set<String> _cloudflareZeroTrustAccessPolicySensitive = <String>{};

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

  final TfArg<List<Object?>>? emailAddresses;

  final TfArg<String>? emailListUuid;

  Map<String, Object?> encode() => {
    'approvals_needed': approvalsNeeded.toTfJson(),
    if (emailAddresses != null) 'email_addresses': emailAddresses!.toTfJson(),
    if (emailListUuid != null) 'email_list_uuid': emailListUuid!.toTfJson(),
  };
}

/// Typed helper for the `connection_rules` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyConnectionRules {
  const ZeroTrustAccessPolicyConnectionRules({this.rdp});

  final ZeroTrustAccessPolicyConnectionRulesRdp? rdp;

  Map<String, Object?> encode() => {if (rdp != null) 'rdp': rdp!.encode()};
}

/// Typed helper for the `connection_rules.rdp` block of
/// `cloudflare_zero_trust_access_policy` (derived from provider schema).
@immutable
final class ZeroTrustAccessPolicyConnectionRulesRdp {
  const ZeroTrustAccessPolicyConnectionRulesRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  final TfArg<List<Object?>>? allowedClipboardLocalToRemoteFormats;

  final TfArg<List<Object?>>? allowedClipboardRemoteToLocalFormats;

  Map<String, Object?> encode() => {
    if (allowedClipboardLocalToRemoteFormats != null)
      'allowed_clipboard_local_to_remote_formats':
          allowedClipboardLocalToRemoteFormats!.toTfJson(),
    if (allowedClipboardRemoteToLocalFormats != null)
      'allowed_clipboard_remote_to_local_formats':
          allowedClipboardRemoteToLocalFormats!.toTfJson(),
  };
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
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (cloudflareAccountMember != null)
      'cloudflare_account_member': cloudflareAccountMember!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
    if (userRiskScore != null) 'user_risk_score': userRiskScore!.encode(),
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

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
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
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
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
    if (team != null) 'team': team!.toTfJson(),
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

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
  };
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
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (cloudflareAccountMember != null)
      'cloudflare_account_member': cloudflareAccountMember!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
    if (userRiskScore != null) 'user_risk_score': userRiskScore!.encode(),
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

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
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
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
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
    if (team != null) 'team': team!.toTfJson(),
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

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
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

  final TfArg<List<Object?>>? allowedAuthenticators;

  final TfArg<bool>? mfaDisabled;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': allowedAuthenticators!.toTfJson(),
    if (mfaDisabled != null) 'mfa_disabled': mfaDisabled!.toTfJson(),
    if (sessionDuration != null)
      'session_duration': sessionDuration!.toTfJson(),
  };
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
    if (anyValidServiceToken != null)
      'any_valid_service_token': anyValidServiceToken!.encode(),
    if (authContext != null) 'auth_context': authContext!.encode(),
    if (authMethod != null) 'auth_method': authMethod!.encode(),
    if (azureAd != null) 'azure_ad': azureAd!.encode(),
    if (certificate != null) 'certificate': certificate!.encode(),
    if (cloudflareAccountMember != null)
      'cloudflare_account_member': cloudflareAccountMember!.encode(),
    if (commonName != null) 'common_name': commonName!.encode(),
    if (devicePosture != null) 'device_posture': devicePosture!.encode(),
    if (email != null) 'email': email!.encode(),
    if (emailDomain != null) 'email_domain': emailDomain!.encode(),
    if (emailList != null) 'email_list': emailList!.encode(),
    if (everyone != null) 'everyone': everyone!.encode(),
    if (externalEvaluation != null)
      'external_evaluation': externalEvaluation!.encode(),
    if (geo != null) 'geo': geo!.encode(),
    if (githubOrganization != null)
      'github_organization': githubOrganization!.encode(),
    if (group != null) 'group': group!.encode(),
    if (gsuite != null) 'gsuite': gsuite!.encode(),
    if (ip != null) 'ip': ip!.encode(),
    if (ipList != null) 'ip_list': ipList!.encode(),
    if (linkedAppToken != null) 'linked_app_token': linkedAppToken!.encode(),
    if (loginMethod != null) 'login_method': loginMethod!.encode(),
    if (oidc != null) 'oidc': oidc!.encode(),
    if (okta != null) 'okta': okta!.encode(),
    if (saml != null) 'saml': saml!.encode(),
    if (serviceToken != null) 'service_token': serviceToken!.encode(),
    if (userRiskScore != null) 'user_risk_score': userRiskScore!.encode(),
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

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
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
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
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
    if (team != null) 'team': team!.toTfJson(),
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

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
  };
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
    required TfArg<String> accountId,
    TfArg<bool>? approvalRequired,
    required TfArg<String> decision,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (approvalRequired != null) 'approval_required': approvalRequired,
           'decision': decision,
           if (isolationRequired != null)
             'isolation_required': isolationRequired,
           'name': name,
           if (purposeJustificationPrompt != null)
             'purpose_justification_prompt': purposeJustificationPrompt,
           if (purposeJustificationRequired != null)
             'purpose_justification_required': purposeJustificationRequired,
           if (sessionDuration != null) 'session_duration': sessionDuration,
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
}
