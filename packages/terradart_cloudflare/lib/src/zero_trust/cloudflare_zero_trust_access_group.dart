// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  final ZeroTrustAccessGroupAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupAuthContext? authContext;

  final ZeroTrustAccessGroupAuthMethod? authMethod;

  final ZeroTrustAccessGroupAzureAd? azureAd;

  final ZeroTrustAccessGroupCertificate? certificate;

  final ZeroTrustAccessGroupCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessGroupCommonName? commonName;

  final ZeroTrustAccessGroupDevicePosture? devicePosture;

  final ZeroTrustAccessGroupEmail? email;

  final ZeroTrustAccessGroupEmailDomain? emailDomain;

  final ZeroTrustAccessGroupEmailList? emailList;

  final ZeroTrustAccessGroupEveryone? everyone;

  final ZeroTrustAccessGroupExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupGeo? geo;

  final ZeroTrustAccessGroupGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroup? group;

  final ZeroTrustAccessGroupGsuite? gsuite;

  final ZeroTrustAccessGroupIp? ip;

  final ZeroTrustAccessGroupIpList? ipList;

  final ZeroTrustAccessGroupLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupLoginMethod? loginMethod;

  final ZeroTrustAccessGroupOidc? oidc;

  final ZeroTrustAccessGroupOkta? okta;

  final ZeroTrustAccessGroupSaml? saml;

  final ZeroTrustAccessGroupServiceToken? serviceToken;

  final ZeroTrustAccessGroupUserRiskScore? userRiskScore;

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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupAnyValidServiceToken {
  const ZeroTrustAccessGroupAnyValidServiceToken();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.auth_context` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupAuthContext {
  const ZeroTrustAccessGroupAuthContext({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupAuthMethod {
  const ZeroTrustAccessGroupAuthMethod({required this.authMethod});

  final TfArg<String> authMethod;

  @internal
  Map<String, Object?> encode() => {'auth_method': authMethod.toTfJson()};
}

/// Typed helper for the `exclude.azure_ad` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupAzureAd {
  const ZeroTrustAccessGroupAzureAd({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupCertificate {
  const ZeroTrustAccessGroupCertificate();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.cloudflare_account_member` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupCloudflareAccountMember {
  const ZeroTrustAccessGroupCloudflareAccountMember({this.accountId});

  final RefTo<CloudflareAccount>? accountId;

  @internal
  Map<String, Object?> encode() => {
    'account_id': ?accountId?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `exclude.common_name` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupCommonName {
  const ZeroTrustAccessGroupCommonName({required this.commonName});

  final TfArg<String> commonName;

  @internal
  Map<String, Object?> encode() => {'common_name': commonName.toTfJson()};
}

/// Typed helper for the `exclude.device_posture` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupDevicePosture {
  const ZeroTrustAccessGroupDevicePosture({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupEmail {
  const ZeroTrustAccessGroupEmail({required this.email});

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Typed helper for the `exclude.email_domain` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupEmailDomain {
  const ZeroTrustAccessGroupEmailDomain({required this.domain});

  final TfArg<String> domain;

  @internal
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `exclude.email_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupEmailList {
  const ZeroTrustAccessGroupEmailList({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.everyone` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupEveryone {
  const ZeroTrustAccessGroupEveryone();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `exclude.external_evaluation` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupExternalEvaluation {
  const ZeroTrustAccessGroupExternalEvaluation({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupGeo {
  const ZeroTrustAccessGroupGeo({required this.countryCode});

  final TfArg<String> countryCode;

  @internal
  Map<String, Object?> encode() => {'country_code': countryCode.toTfJson()};
}

/// Typed helper for the `exclude.github_organization` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupGithubOrganization {
  const ZeroTrustAccessGroupGithubOrganization({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroup {
  const ZeroTrustAccessGroup({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.gsuite` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupGsuite {
  const ZeroTrustAccessGroupGsuite({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupIp {
  const ZeroTrustAccessGroupIp({required this.ip});

  final TfArg<String> ip;

  @internal
  Map<String, Object?> encode() => {'ip': ip.toTfJson()};
}

/// Typed helper for the `exclude.ip_list` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupIpList {
  const ZeroTrustAccessGroupIpList({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.linked_app_token` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupLinkedAppToken {
  const ZeroTrustAccessGroupLinkedAppToken({required this.appUid});

  final TfArg<String> appUid;

  @internal
  Map<String, Object?> encode() => {'app_uid': appUid.toTfJson()};
}

/// Typed helper for the `exclude.login_method` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupLoginMethod {
  const ZeroTrustAccessGroupLoginMethod({required this.id});

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `exclude.oidc` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupOidc {
  const ZeroTrustAccessGroupOidc({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupOkta {
  const ZeroTrustAccessGroupOkta({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupSaml {
  const ZeroTrustAccessGroupSaml({
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
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupServiceToken {
  const ZeroTrustAccessGroupServiceToken({required this.tokenId});

  final TfArg<String> tokenId;

  @internal
  Map<String, Object?> encode() => {'token_id': tokenId.toTfJson()};
}

/// Typed helper for the `exclude.user_risk_score` block of
/// `cloudflare_zero_trust_access_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustAccessGroupUserRiskScore {
  const ZeroTrustAccessGroupUserRiskScore({required this.userRiskScore});

  final List<ZeroTrustAccessGroupUserRiskScoreUserRiskScore> userRiskScore;

  @internal
  Map<String, Object?> encode() => {
    'user_risk_score': [for (final e in userRiskScore) e.toTfJson()],
  };
}

/// `user_risk_score` — derived from the provider schema description.
extension type const ZeroTrustAccessGroupUserRiskScoreUserRiskScore._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustAccessGroupUserRiskScoreUserRiskScore.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustAccessGroupUserRiskScoreUserRiskScore.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustAccessGroupUserRiskScoreUserRiskScore.arg(TfArg<String> arg)
    : this._(arg);

  static const low = ZeroTrustAccessGroupUserRiskScoreUserRiskScore._(
    TfArgLiteral('low'),
  );
  static const medium = ZeroTrustAccessGroupUserRiskScoreUserRiskScore._(
    TfArgLiteral('medium'),
  );
  static const high = ZeroTrustAccessGroupUserRiskScoreUserRiskScore._(
    TfArgLiteral('high'),
  );
  static const unscored = ZeroTrustAccessGroupUserRiskScoreUserRiskScore._(
    TfArgLiteral('unscored'),
  );

  static const List<ZeroTrustAccessGroupUserRiskScoreUserRiskScore> values = [
    low,
    medium,
    high,
    unscored,
  ];
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

  final ZeroTrustAccessGroupAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupAuthContext? authContext;

  final ZeroTrustAccessGroupAuthMethod? authMethod;

  final ZeroTrustAccessGroupAzureAd? azureAd;

  final ZeroTrustAccessGroupCertificate? certificate;

  final ZeroTrustAccessGroupCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessGroupCommonName? commonName;

  final ZeroTrustAccessGroupDevicePosture? devicePosture;

  final ZeroTrustAccessGroupEmail? email;

  final ZeroTrustAccessGroupEmailDomain? emailDomain;

  final ZeroTrustAccessGroupEmailList? emailList;

  final ZeroTrustAccessGroupEveryone? everyone;

  final ZeroTrustAccessGroupExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupGeo? geo;

  final ZeroTrustAccessGroupGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroup? group;

  final ZeroTrustAccessGroupGsuite? gsuite;

  final ZeroTrustAccessGroupIp? ip;

  final ZeroTrustAccessGroupIpList? ipList;

  final ZeroTrustAccessGroupLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupLoginMethod? loginMethod;

  final ZeroTrustAccessGroupOidc? oidc;

  final ZeroTrustAccessGroupOkta? okta;

  final ZeroTrustAccessGroupSaml? saml;

  final ZeroTrustAccessGroupServiceToken? serviceToken;

  final ZeroTrustAccessGroupUserRiskScore? userRiskScore;

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

  final ZeroTrustAccessGroupAnyValidServiceToken? anyValidServiceToken;

  final ZeroTrustAccessGroupAuthContext? authContext;

  final ZeroTrustAccessGroupAuthMethod? authMethod;

  final ZeroTrustAccessGroupAzureAd? azureAd;

  final ZeroTrustAccessGroupCertificate? certificate;

  final ZeroTrustAccessGroupCloudflareAccountMember? cloudflareAccountMember;

  final ZeroTrustAccessGroupCommonName? commonName;

  final ZeroTrustAccessGroupDevicePosture? devicePosture;

  final ZeroTrustAccessGroupEmail? email;

  final ZeroTrustAccessGroupEmailDomain? emailDomain;

  final ZeroTrustAccessGroupEmailList? emailList;

  final ZeroTrustAccessGroupEveryone? everyone;

  final ZeroTrustAccessGroupExternalEvaluation? externalEvaluation;

  final ZeroTrustAccessGroupGeo? geo;

  final ZeroTrustAccessGroupGithubOrganization? githubOrganization;

  final ZeroTrustAccessGroup? group;

  final ZeroTrustAccessGroupGsuite? gsuite;

  final ZeroTrustAccessGroupIp? ip;

  final ZeroTrustAccessGroupIpList? ipList;

  final ZeroTrustAccessGroupLinkedAppToken? linkedAppToken;

  final ZeroTrustAccessGroupLoginMethod? loginMethod;

  final ZeroTrustAccessGroupOidc? oidc;

  final ZeroTrustAccessGroupOkta? okta;

  final ZeroTrustAccessGroupSaml? saml;

  final ZeroTrustAccessGroupServiceToken? serviceToken;

  final ZeroTrustAccessGroupUserRiskScore? userRiskScore;

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

/// Factory wrapper for `cloudflare_zero_trust_access_group`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class CloudflareZeroTrustAccessGroup extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_group';

  CloudflareZeroTrustAccessGroup(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<bool>? isDefault,
    required TfArg<String> name,
    RefTo<CloudflareZone>? zoneId,
    List<ZeroTrustAccessGroupExclude>? exclude,
    required List<ZeroTrustAccessGroupInclude> include,
    List<ZeroTrustAccessGroupRequire>? require,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'is_default': ?isDefault,
           'name': name,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (exclude != null)
             'exclude': TfArg.literal([for (final e in exclude) e.encode()]),
           'include': TfArg.literal([for (final e in include) e.encode()]),
           if (require != null)
             'require': TfArg.literal([for (final e in require) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessGroup>`.
  RefTo<CloudflareZeroTrustAccessGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
