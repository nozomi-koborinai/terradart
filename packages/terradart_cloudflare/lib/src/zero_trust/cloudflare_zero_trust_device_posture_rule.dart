// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_rule`.
const Set<String> _cloudflareZeroTrustDevicePostureRuleSensitive = <String>{};

/// Zero Trust Device Posture Rule enum for `type`.
enum ZeroTrustDevicePostureRuleType implements TerraformEnum {
  file('file'),
  application('application'),
  tanium('tanium'),
  gateway('gateway'),
  warp('warp'),
  diskEncryption('disk_encryption'),
  serialNumber('serial_number'),
  sentinelone('sentinelone'),
  carbonblack('carbonblack'),
  firewall('firewall'),
  osVersion('os_version'),
  domainJoined('domain_joined'),
  clientCertificate('client_certificate'),
  clientCertificateV2('client_certificate_v2'),
  antivirus('antivirus'),
  uniqueClientId('unique_client_id'),
  kolide('kolide'),
  taniumS2s('tanium_s2s'),
  crowdstrikeS2s('crowdstrike_s2s'),
  intune('intune'),
  workspaceOne('workspace_one'),
  sentineloneS2s('sentinelone_s2s'),
  customS2s('custom_s2s');

  const ZeroTrustDevicePostureRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleInput {
  const ZeroTrustDevicePostureRuleInput({
    this.activeThreats,
    this.authState,
    this.certificateId,
    this.checkDisks,
    this.checkPrivateKey,
    this.cn,
    this.complianceStatus,
    this.connectionId,
    this.countOperator,
    this.domain,
    this.eidLastSeen,
    this.enabled,
    this.exists,
    this.extendedKeyUsage,
    this.id,
    this.infected,
    this.isActive,
    this.issueCount,
    this.lastSeen,
    this.networkStatus,
    this.operatingSystem,
    this.operationalState,
    this.operator,
    this.os,
    this.osDistroName,
    this.osDistroRevision,
    this.osVersionExtra,
    this.overall,
    this.path,
    this.requireAll,
    this.riskLevel,
    this.score,
    this.scoreOperator,
    this.sensorConfig,
    this.sha256,
    this.state,
    this.subjectAlternativeNames,
    this.thumbprint,
    this.totalScore,
    this.updateWindowDays,
    this.version,
    this.versionOperator,
    this.locations,
  });

  final TfArg<num>? activeThreats;

  final List<TfArg<ZeroTrustDevicePostureRuleAuthState>>? authState;

  final TfArg<String>? certificateId;

  final TfArg<List<String>>? checkDisks;

  final TfArg<bool>? checkPrivateKey;

  final TfArg<String>? cn;

  final TfArg<ZeroTrustDevicePostureRuleComplianceStatus>? complianceStatus;

  final TfArg<String>? connectionId;

  final TfArg<ZeroTrustDevicePostureRuleCountOperator>? countOperator;

  final TfArg<String>? domain;

  final TfArg<String>? eidLastSeen;

  final TfArg<bool>? enabled;

  final TfArg<bool>? exists;

  final List<TfArg<ZeroTrustDevicePostureRuleExtendedKeyUsage>>?
  extendedKeyUsage;

  final TfArg<String>? id;

  final TfArg<bool>? infected;

  final TfArg<bool>? isActive;

  final TfArg<String>? issueCount;

  final TfArg<String>? lastSeen;

  final TfArg<ZeroTrustDevicePostureRuleNetworkStatus>? networkStatus;

  final TfArg<ZeroTrustDevicePostureRuleOperatingSystem>? operatingSystem;

  final TfArg<ZeroTrustDevicePostureRuleOperationalState>? operationalState;

  final TfArg<ZeroTrustDevicePostureRuleOperator>? operator;

  final TfArg<String>? os;

  final TfArg<String>? osDistroName;

  final TfArg<String>? osDistroRevision;

  final TfArg<String>? osVersionExtra;

  final TfArg<String>? overall;

  final TfArg<String>? path;

  final TfArg<bool>? requireAll;

  final TfArg<ZeroTrustDevicePostureRuleRiskLevel>? riskLevel;

  final TfArg<num>? score;

  final TfArg<ZeroTrustDevicePostureRuleScoreOperator>? scoreOperator;

  final TfArg<String>? sensorConfig;

  final TfArg<String>? sha256;

  final TfArg<ZeroTrustDevicePostureRuleState>? state;

  final TfArg<List<String>>? subjectAlternativeNames;

  final TfArg<String>? thumbprint;

  final TfArg<num>? totalScore;

  final TfArg<num>? updateWindowDays;

  final TfArg<String>? version;

  final TfArg<ZeroTrustDevicePostureRuleVersionOperator>? versionOperator;

  final ZeroTrustDevicePostureRuleLocations? locations;

  Map<String, Object?> encode() => {
    'active_threats': ?activeThreats?.toTfJson(),
    if (authState != null)
      'auth_state': [for (final e in authState!) e.toTfJson()],
    'certificate_id': ?certificateId?.toTfJson(),
    'check_disks': ?checkDisks?.toTfJson(),
    'check_private_key': ?checkPrivateKey?.toTfJson(),
    'cn': ?cn?.toTfJson(),
    'compliance_status': ?complianceStatus?.toTfJson(),
    'connection_id': ?connectionId?.toTfJson(),
    'count_operator': ?countOperator?.toTfJson(),
    'domain': ?domain?.toTfJson(),
    'eid_last_seen': ?eidLastSeen?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'exists': ?exists?.toTfJson(),
    if (extendedKeyUsage != null)
      'extended_key_usage': [for (final e in extendedKeyUsage!) e.toTfJson()],
    'id': ?id?.toTfJson(),
    'infected': ?infected?.toTfJson(),
    'is_active': ?isActive?.toTfJson(),
    'issue_count': ?issueCount?.toTfJson(),
    'last_seen': ?lastSeen?.toTfJson(),
    'network_status': ?networkStatus?.toTfJson(),
    'operating_system': ?operatingSystem?.toTfJson(),
    'operational_state': ?operationalState?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'os': ?os?.toTfJson(),
    'os_distro_name': ?osDistroName?.toTfJson(),
    'os_distro_revision': ?osDistroRevision?.toTfJson(),
    'os_version_extra': ?osVersionExtra?.toTfJson(),
    'overall': ?overall?.toTfJson(),
    'path': ?path?.toTfJson(),
    'require_all': ?requireAll?.toTfJson(),
    'risk_level': ?riskLevel?.toTfJson(),
    'score': ?score?.toTfJson(),
    'score_operator': ?scoreOperator?.toTfJson(),
    'sensor_config': ?sensorConfig?.toTfJson(),
    'sha256': ?sha256?.toTfJson(),
    'state': ?state?.toTfJson(),
    'subject_alternative_names': ?subjectAlternativeNames?.toTfJson(),
    'thumbprint': ?thumbprint?.toTfJson(),
    'total_score': ?totalScore?.toTfJson(),
    'update_window_days': ?updateWindowDays?.toTfJson(),
    'version': ?version?.toTfJson(),
    'version_operator': ?versionOperator?.toTfJson(),
    'locations': ?locations?.encode(),
  };
}

/// `auth_state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleAuthState implements TerraformEnum {
  good('Good'),
  notified('Notified'),
  willBlock('Will Block'),
  blocked('Blocked');

  const ZeroTrustDevicePostureRuleAuthState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `compliance_status` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleComplianceStatus implements TerraformEnum {
  compliant('compliant'),
  noncompliant('noncompliant'),
  unknown('unknown'),
  notapplicable('notapplicable'),
  ingraceperiod('ingraceperiod'),
  error('error');

  const ZeroTrustDevicePostureRuleComplianceStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `count_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleCountOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleCountOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extended_key_usage` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleExtendedKeyUsage implements TerraformEnum {
  clientauth('clientAuth'),
  emailprotection('emailProtection');

  const ZeroTrustDevicePostureRuleExtendedKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_status` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleNetworkStatus implements TerraformEnum {
  connected('connected'),
  disconnected('disconnected'),
  disconnecting('disconnecting'),
  connecting('connecting');

  const ZeroTrustDevicePostureRuleNetworkStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operating_system` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleOperatingSystem implements TerraformEnum {
  windows('windows'),
  linux('linux'),
  mac('mac'),
  android('android'),
  ios('ios'),
  chromeos('chromeos');

  const ZeroTrustDevicePostureRuleOperatingSystem(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operational_state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleOperationalState implements TerraformEnum {
  na('na'),
  partiallyDisabled('partially_disabled'),
  autoFullyDisabled('auto_fully_disabled'),
  fullyDisabled('fully_disabled'),
  autoPartiallyDisabled('auto_partially_disabled'),
  disabledError('disabled_error'),
  dbCorruption('db_corruption');

  const ZeroTrustDevicePostureRuleOperationalState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `risk_level` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleRiskLevel implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high'),
  critical('critical');

  const ZeroTrustDevicePostureRuleRiskLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `score_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleScoreOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleScoreOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleState implements TerraformEnum {
  online('online'),
  offline('offline'),
  unknown('unknown');

  const ZeroTrustDevicePostureRuleState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `version_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleVersionOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleVersionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input.locations` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleLocations {
  const ZeroTrustDevicePostureRuleLocations({this.paths, this.trustStores});

  final TfArg<List<String>>? paths;

  final List<TfArg<ZeroTrustDevicePostureRuleTrustStores>>? trustStores;

  Map<String, Object?> encode() => {
    'paths': ?paths?.toTfJson(),
    if (trustStores != null)
      'trust_stores': [for (final e in trustStores!) e.toTfJson()],
  };
}

/// `trust_stores` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleTrustStores implements TerraformEnum {
  system('system'),
  user('user');

  const ZeroTrustDevicePostureRuleTrustStores(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `match` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleMatch {
  const ZeroTrustDevicePostureRuleMatch({this.platform});

  final TfArg<ZeroTrustDevicePostureRulePlatform>? platform;

  Map<String, Object?> encode() => {'platform': ?platform?.toTfJson()};
}

/// `platform` — derived from the provider schema description.
enum ZeroTrustDevicePostureRulePlatform implements TerraformEnum {
  windows('windows'),
  mac('mac'),
  linux('linux'),
  android('android'),
  ios('ios'),
  chromeos('chromeos');

  const ZeroTrustDevicePostureRulePlatform(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_device_posture_rule`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDevicePostureRule extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_posture_rule';

  CloudflareZeroTrustDevicePostureRule({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    TfArg<String>? expiration,
    TfArg<String>? name,
    TfArg<String>? schedule,
    required TfArg<ZeroTrustDevicePostureRuleType> type,
    ZeroTrustDevicePostureRuleInput? input,
    List<ZeroTrustDevicePostureRuleMatch>? match,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'expiration': ?expiration,
           'name': ?name,
           'schedule': ?schedule,
           'type': type,
           if (input != null) 'input': TfArg.literal(input.encode()),
           if (match != null)
             'match': TfArg.literal([for (final e in match) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDevicePostureRule>`.
  RefTo<CloudflareZeroTrustDevicePostureRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `expiration` attribute.
  TfRef<String> get expirationRef =>
      TfRef.attribute<String>(this, 'expiration');

  /// Reference to `schedule` attribute.
  TfRef<String> get scheduleRef => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
