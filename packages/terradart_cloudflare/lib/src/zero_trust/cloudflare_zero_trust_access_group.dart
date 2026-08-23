// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_group`.
const Set<String> _cloudflareZeroTrustAccessGroupSensitive = <String>{};

/// Typed helper for the `exclude` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExclude {
  const ZeroTrustAccessGroupExclude({
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

  final ZeroTrustAccessGroupExcludeAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupExcludeAuthContext? authContext;

  final ZeroTrustAccessGroupExcludeAuthMethod? authMethod;

  final ZeroTrustAccessGroupExcludeAzureAd? azureAd;

  final ZeroTrustAccessGroupExcludeCertificate? certificate;

  final ZeroTrustAccessGroupExcludeCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessGroupExcludeCommonName? commonName;

  final ZeroTrustAccessGroupExcludeDevicePosture? devicePosture;

  final ZeroTrustAccessGroupExcludeEmail? email;

  final ZeroTrustAccessGroupExcludeEmailDomain? emailDomain;

  final ZeroTrustAccessGroupExcludeEmailList? emailList;

  final ZeroTrustAccessGroupExcludeEveryone? everyone;

  final ZeroTrustAccessGroupExcludeExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupExcludeGeo? geo;

  final ZeroTrustAccessGroupExcludeGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroupExcludeGroup? group;

  final ZeroTrustAccessGroupExcludeGsuite? gsuite;

  final ZeroTrustAccessGroupExcludeIp? ip;

  final ZeroTrustAccessGroupExcludeIpList? ipList;

  final ZeroTrustAccessGroupExcludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupExcludeLoginMethod? loginMethod;

  final ZeroTrustAccessGroupExcludeOidc? oidc;

  final ZeroTrustAccessGroupExcludeOkta? okta;

  final ZeroTrustAccessGroupExcludeSaml? saml;

  final ZeroTrustAccessGroupExcludeServiceToken? serviceToken;

  final ZeroTrustAccessGroupExcludeUserRiskScore? userRiskScore;

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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeAnyValidServiceToken {
  const ZeroTrustAccessGroupExcludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.auth_context` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeAuthContext {
  const ZeroTrustAccessGroupExcludeAuthContext({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeAuthMethod {
  const ZeroTrustAccessGroupExcludeAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeAzureAd {
  const ZeroTrustAccessGroupExcludeAzureAd({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeCertificate {
  const ZeroTrustAccessGroupExcludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeCloudflareAccountMember {
  const ZeroTrustAccessGroupExcludeCloudflareAccountMember({this.accountId});

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
  };
}

/// Typed helper for the `exclude.common_name` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeCommonName {
  const ZeroTrustAccessGroupExcludeCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `exclude.device_posture` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeDevicePosture {
  const ZeroTrustAccessGroupExcludeDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `exclude.email` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeEmail {
  const ZeroTrustAccessGroupExcludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `exclude.email_domain` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeEmailDomain {
  const ZeroTrustAccessGroupExcludeEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `exclude.email_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeEmailList {
  const ZeroTrustAccessGroupExcludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.everyone` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeEveryone {
  const ZeroTrustAccessGroupExcludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeExternalEvaluation {
  const ZeroTrustAccessGroupExcludeExternalEvaluation({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeGeo {
  const ZeroTrustAccessGroupExcludeGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `exclude.github_organization` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeGithubOrganization {
  const ZeroTrustAccessGroupExcludeGithubOrganization({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeGroup {
  const ZeroTrustAccessGroupExcludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.gsuite` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeGsuite {
  const ZeroTrustAccessGroupExcludeGsuite({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeIp {
  const ZeroTrustAccessGroupExcludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `exclude.ip_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeIpList {
  const ZeroTrustAccessGroupExcludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeLinkedAppToken {
  const ZeroTrustAccessGroupExcludeLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `exclude.login_method` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeLoginMethod {
  const ZeroTrustAccessGroupExcludeLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.oidc` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeOidc {
  const ZeroTrustAccessGroupExcludeOidc({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeOkta {
  const ZeroTrustAccessGroupExcludeOkta({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeSaml {
  const ZeroTrustAccessGroupExcludeSaml({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeServiceToken {
  const ZeroTrustAccessGroupExcludeServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `exclude.user_risk_score` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupExcludeUserRiskScore {
  const ZeroTrustAccessGroupExcludeUserRiskScore({required this.userRiskScore});

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
  };
}

/// Typed helper for the `include` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupInclude {
  const ZeroTrustAccessGroupInclude({
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

  final ZeroTrustAccessGroupIncludeAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupIncludeAuthContext? authContext;

  final ZeroTrustAccessGroupIncludeAuthMethod? authMethod;

  final ZeroTrustAccessGroupIncludeAzureAd? azureAd;

  final ZeroTrustAccessGroupIncludeCertificate? certificate;

  final ZeroTrustAccessGroupIncludeCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessGroupIncludeCommonName? commonName;

  final ZeroTrustAccessGroupIncludeDevicePosture? devicePosture;

  final ZeroTrustAccessGroupIncludeEmail? email;

  final ZeroTrustAccessGroupIncludeEmailDomain? emailDomain;

  final ZeroTrustAccessGroupIncludeEmailList? emailList;

  final ZeroTrustAccessGroupIncludeEveryone? everyone;

  final ZeroTrustAccessGroupIncludeExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupIncludeGeo? geo;

  final ZeroTrustAccessGroupIncludeGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroupIncludeGroup? group;

  final ZeroTrustAccessGroupIncludeGsuite? gsuite;

  final ZeroTrustAccessGroupIncludeIp? ip;

  final ZeroTrustAccessGroupIncludeIpList? ipList;

  final ZeroTrustAccessGroupIncludeLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupIncludeLoginMethod? loginMethod;

  final ZeroTrustAccessGroupIncludeOidc? oidc;

  final ZeroTrustAccessGroupIncludeOkta? okta;

  final ZeroTrustAccessGroupIncludeSaml? saml;

  final ZeroTrustAccessGroupIncludeServiceToken? serviceToken;

  final ZeroTrustAccessGroupIncludeUserRiskScore? userRiskScore;

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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeAnyValidServiceToken {
  const ZeroTrustAccessGroupIncludeAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.auth_context` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeAuthContext {
  const ZeroTrustAccessGroupIncludeAuthContext({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeAuthMethod {
  const ZeroTrustAccessGroupIncludeAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `include.azure_ad` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeAzureAd {
  const ZeroTrustAccessGroupIncludeAzureAd({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeCertificate {
  const ZeroTrustAccessGroupIncludeCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeCloudflareAccountMember {
  const ZeroTrustAccessGroupIncludeCloudflareAccountMember({this.accountId});

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
  };
}

/// Typed helper for the `include.common_name` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeCommonName {
  const ZeroTrustAccessGroupIncludeCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `include.device_posture` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeDevicePosture {
  const ZeroTrustAccessGroupIncludeDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `include.email` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeEmail {
  const ZeroTrustAccessGroupIncludeEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `include.email_domain` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeEmailDomain {
  const ZeroTrustAccessGroupIncludeEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `include.email_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeEmailList {
  const ZeroTrustAccessGroupIncludeEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.everyone` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeEveryone {
  const ZeroTrustAccessGroupIncludeEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `include.external_evaluation` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeExternalEvaluation {
  const ZeroTrustAccessGroupIncludeExternalEvaluation({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeGeo {
  const ZeroTrustAccessGroupIncludeGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `include.github_organization` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeGithubOrganization {
  const ZeroTrustAccessGroupIncludeGithubOrganization({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeGroup {
  const ZeroTrustAccessGroupIncludeGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.gsuite` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeGsuite {
  const ZeroTrustAccessGroupIncludeGsuite({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeIp {
  const ZeroTrustAccessGroupIncludeIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `include.ip_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeIpList {
  const ZeroTrustAccessGroupIncludeIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.linked_app_token` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeLinkedAppToken {
  const ZeroTrustAccessGroupIncludeLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `include.login_method` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeLoginMethod {
  const ZeroTrustAccessGroupIncludeLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `include.oidc` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeOidc {
  const ZeroTrustAccessGroupIncludeOidc({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeOkta {
  const ZeroTrustAccessGroupIncludeOkta({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeSaml {
  const ZeroTrustAccessGroupIncludeSaml({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeServiceToken {
  const ZeroTrustAccessGroupIncludeServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `include.user_risk_score` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupIncludeUserRiskScore {
  const ZeroTrustAccessGroupIncludeUserRiskScore({required this.userRiskScore});

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
  };
}

/// Typed helper for the `require` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequire {
  const ZeroTrustAccessGroupRequire({
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

  final ZeroTrustAccessGroupRequireAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupRequireAuthContext? authContext;

  final ZeroTrustAccessGroupRequireAuthMethod? authMethod;

  final ZeroTrustAccessGroupRequireAzureAd? azureAd;

  final ZeroTrustAccessGroupRequireCertificate? certificate;

  final ZeroTrustAccessGroupRequireCloudflareAccountMember?
  cloudflareAccountMember;

  final ZeroTrustAccessGroupRequireCommonName? commonName;

  final ZeroTrustAccessGroupRequireDevicePosture? devicePosture;

  final ZeroTrustAccessGroupRequireEmail? email;

  final ZeroTrustAccessGroupRequireEmailDomain? emailDomain;

  final ZeroTrustAccessGroupRequireEmailList? emailList;

  final ZeroTrustAccessGroupRequireEveryone? everyone;

  final ZeroTrustAccessGroupRequireExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupRequireGeo? geo;

  final ZeroTrustAccessGroupRequireGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroupRequireGroup? group;

  final ZeroTrustAccessGroupRequireGsuite? gsuite;

  final ZeroTrustAccessGroupRequireIp? ip;

  final ZeroTrustAccessGroupRequireIpList? ipList;

  final ZeroTrustAccessGroupRequireLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupRequireLoginMethod? loginMethod;

  final ZeroTrustAccessGroupRequireOidc? oidc;

  final ZeroTrustAccessGroupRequireOkta? okta;

  final ZeroTrustAccessGroupRequireSaml? saml;

  final ZeroTrustAccessGroupRequireServiceToken? serviceToken;

  final ZeroTrustAccessGroupRequireUserRiskScore? userRiskScore;

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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireAnyValidServiceToken {
  const ZeroTrustAccessGroupRequireAnyValidServiceToken();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.auth_context` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireAuthContext {
  const ZeroTrustAccessGroupRequireAuthContext({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireAuthMethod {
  const ZeroTrustAccessGroupRequireAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `require.azure_ad` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireAzureAd {
  const ZeroTrustAccessGroupRequireAzureAd({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireCertificate {
  const ZeroTrustAccessGroupRequireCertificate();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireCloudflareAccountMember {
  const ZeroTrustAccessGroupRequireCloudflareAccountMember({this.accountId});

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
  };
}

/// Typed helper for the `require.common_name` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireCommonName {
  const ZeroTrustAccessGroupRequireCommonName({required this.commonName});

  final TfArg<String> commonName;

  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `require.device_posture` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireDevicePosture {
  const ZeroTrustAccessGroupRequireDevicePosture({
    required this.integrationUid,
  });

  final TfArg<String> integrationUid;

  Map<String, Object?> encode() => {
    'integration_uid': integrationUid.toTfJson(),
  };
}

/// Typed helper for the `require.email` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireEmail {
  const ZeroTrustAccessGroupRequireEmail({required this.email});

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `require.email_domain` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireEmailDomain {
  const ZeroTrustAccessGroupRequireEmailDomain({required this.domain});

  final TfArg<String> domain;

  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `require.email_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireEmailList {
  const ZeroTrustAccessGroupRequireEmailList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.everyone` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireEveryone {
  const ZeroTrustAccessGroupRequireEveryone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `require.external_evaluation` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireExternalEvaluation {
  const ZeroTrustAccessGroupRequireExternalEvaluation({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireGeo {
  const ZeroTrustAccessGroupRequireGeo({required this.countryCode});

  final TfArg<String> countryCode;

  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `require.github_organization` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireGithubOrganization {
  const ZeroTrustAccessGroupRequireGithubOrganization({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireGroup {
  const ZeroTrustAccessGroupRequireGroup({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.gsuite` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireGsuite {
  const ZeroTrustAccessGroupRequireGsuite({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireIp {
  const ZeroTrustAccessGroupRequireIp({required this.ip});

  final TfArg<String> ip;

  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `require.ip_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireIpList {
  const ZeroTrustAccessGroupRequireIpList({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.linked_app_token` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireLinkedAppToken {
  const ZeroTrustAccessGroupRequireLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `require.login_method` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireLoginMethod {
  const ZeroTrustAccessGroupRequireLoginMethod({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `require.oidc` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireOidc {
  const ZeroTrustAccessGroupRequireOidc({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireOkta {
  const ZeroTrustAccessGroupRequireOkta({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireSaml {
  const ZeroTrustAccessGroupRequireSaml({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireServiceToken {
  const ZeroTrustAccessGroupRequireServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `require.user_risk_score` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
@immutable
final class ZeroTrustAccessGroupRequireUserRiskScore {
  const ZeroTrustAccessGroupRequireUserRiskScore({required this.userRiskScore});

  final TfArg<List<Object?>> userRiskScore;

  Map<String, Object?> encode() => {
    'user_risk_score': userRiskScore.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_group`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class CloudflareZeroTrustAccessGroup extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_group';

  CloudflareZeroTrustAccessGroup({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<bool>? isDefault,
    required TfArg<String> name,
    TfArg<String>? zoneId,
    List<ZeroTrustAccessGroupExclude>? exclude,
    required List<ZeroTrustAccessGroupInclude> include,
    List<ZeroTrustAccessGroupRequire>? require,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (isDefault != null) 'is_default': isDefault,
           'name': name,
           if (zoneId != null) 'zone_id': zoneId,
           if (exclude != null)
             'exclude': TfArg.literal([for (final e in exclude) e.encode()]),
           'include': TfArg.literal([for (final e in include) e.encode()]),
           if (require != null)
             'require': TfArg.literal([for (final e in require) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
