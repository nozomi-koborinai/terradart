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

  final List<TfArg<ZeroTrustDevicePostureRuleInputAuthState>>? authState;

  final TfArg<String>? certificateId;

  final TfArg<List<Object?>>? checkDisks;

  final TfArg<bool>? checkPrivateKey;

  final TfArg<String>? cn;

  final TfArg<ZeroTrustDevicePostureRuleInputComplianceStatus>?
  complianceStatus;

  final TfArg<String>? connectionId;

  final TfArg<ZeroTrustDevicePostureRuleInputCountOperator>? countOperator;

  final TfArg<String>? domain;

  final TfArg<String>? eidLastSeen;

  final TfArg<bool>? enabled;

  final TfArg<bool>? exists;

  final List<TfArg<ZeroTrustDevicePostureRuleInputExtendedKeyUsage>>?
  extendedKeyUsage;

  final TfArg<String>? id;

  final TfArg<bool>? infected;

  final TfArg<bool>? isActive;

  final TfArg<String>? issueCount;

  final TfArg<String>? lastSeen;

  final TfArg<ZeroTrustDevicePostureRuleInputNetworkStatus>? networkStatus;

  final TfArg<ZeroTrustDevicePostureRuleInputOperatingSystem>? operatingSystem;

  final TfArg<ZeroTrustDevicePostureRuleInputOperationalState>?
  operationalState;

  final TfArg<ZeroTrustDevicePostureRuleInputOperator>? operator;

  final TfArg<String>? os;

  final TfArg<String>? osDistroName;

  final TfArg<String>? osDistroRevision;

  final TfArg<String>? osVersionExtra;

  final TfArg<String>? overall;

  final TfArg<String>? path;

  final TfArg<bool>? requireAll;

  final TfArg<ZeroTrustDevicePostureRuleInputRiskLevel>? riskLevel;

  final TfArg<num>? score;

  final TfArg<ZeroTrustDevicePostureRuleInputScoreOperator>? scoreOperator;

  final TfArg<String>? sensorConfig;

  final TfArg<String>? sha256;

  final TfArg<ZeroTrustDevicePostureRuleInputState>? state;

  final TfArg<List<Object?>>? subjectAlternativeNames;

  final TfArg<String>? thumbprint;

  final TfArg<num>? totalScore;

  final TfArg<num>? updateWindowDays;

  final TfArg<String>? version;

  final TfArg<ZeroTrustDevicePostureRuleInputVersionOperator>? versionOperator;

  final ZeroTrustDevicePostureRuleInputLocations? locations;

  Map<String, Object?> encode() => {
    if (activeThreats != null) 'active_threats': activeThreats!.toTfJson(),
    if (authState != null)
      'auth_state': [for (final e in authState!) e.toTfJson()],
    if (certificateId != null) 'certificate_id': certificateId!.toTfJson(),
    if (checkDisks != null) 'check_disks': checkDisks!.toTfJson(),
    if (checkPrivateKey != null)
      'check_private_key': checkPrivateKey!.toTfJson(),
    if (cn != null) 'cn': cn!.toTfJson(),
    if (complianceStatus != null)
      'compliance_status': complianceStatus!.toTfJson(),
    if (connectionId != null) 'connection_id': connectionId!.toTfJson(),
    if (countOperator != null) 'count_operator': countOperator!.toTfJson(),
    if (domain != null) 'domain': domain!.toTfJson(),
    if (eidLastSeen != null) 'eid_last_seen': eidLastSeen!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (exists != null) 'exists': exists!.toTfJson(),
    if (extendedKeyUsage != null)
      'extended_key_usage': [for (final e in extendedKeyUsage!) e.toTfJson()],
    if (id != null) 'id': id!.toTfJson(),
    if (infected != null) 'infected': infected!.toTfJson(),
    if (isActive != null) 'is_active': isActive!.toTfJson(),
    if (issueCount != null) 'issue_count': issueCount!.toTfJson(),
    if (lastSeen != null) 'last_seen': lastSeen!.toTfJson(),
    if (networkStatus != null) 'network_status': networkStatus!.toTfJson(),
    if (operatingSystem != null)
      'operating_system': operatingSystem!.toTfJson(),
    if (operationalState != null)
      'operational_state': operationalState!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (os != null) 'os': os!.toTfJson(),
    if (osDistroName != null) 'os_distro_name': osDistroName!.toTfJson(),
    if (osDistroRevision != null)
      'os_distro_revision': osDistroRevision!.toTfJson(),
    if (osVersionExtra != null) 'os_version_extra': osVersionExtra!.toTfJson(),
    if (overall != null) 'overall': overall!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (requireAll != null) 'require_all': requireAll!.toTfJson(),
    if (riskLevel != null) 'risk_level': riskLevel!.toTfJson(),
    if (score != null) 'score': score!.toTfJson(),
    if (scoreOperator != null) 'score_operator': scoreOperator!.toTfJson(),
    if (sensorConfig != null) 'sensor_config': sensorConfig!.toTfJson(),
    if (sha256 != null) 'sha256': sha256!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (subjectAlternativeNames != null)
      'subject_alternative_names': subjectAlternativeNames!.toTfJson(),
    if (thumbprint != null) 'thumbprint': thumbprint!.toTfJson(),
    if (totalScore != null) 'total_score': totalScore!.toTfJson(),
    if (updateWindowDays != null)
      'update_window_days': updateWindowDays!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (versionOperator != null)
      'version_operator': versionOperator!.toTfJson(),
    if (locations != null) 'locations': locations!.encode(),
  };
}

/// `auth_state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputAuthState implements TerraformEnum {
  good('Good'),
  notified('Notified'),
  willBlock('Will Block'),
  blocked('Blocked');

  const ZeroTrustDevicePostureRuleInputAuthState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `compliance_status` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputComplianceStatus implements TerraformEnum {
  compliant('compliant'),
  noncompliant('noncompliant'),
  unknown('unknown'),
  notapplicable('notapplicable'),
  ingraceperiod('ingraceperiod'),
  error('error');

  const ZeroTrustDevicePostureRuleInputComplianceStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `count_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputCountOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleInputCountOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extended_key_usage` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputExtendedKeyUsage implements TerraformEnum {
  clientauth('clientAuth'),
  emailprotection('emailProtection');

  const ZeroTrustDevicePostureRuleInputExtendedKeyUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `network_status` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputNetworkStatus implements TerraformEnum {
  connected('connected'),
  disconnected('disconnected'),
  disconnecting('disconnecting'),
  connecting('connecting');

  const ZeroTrustDevicePostureRuleInputNetworkStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operating_system` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputOperatingSystem implements TerraformEnum {
  windows('windows'),
  linux('linux'),
  mac('mac'),
  android('android'),
  ios('ios'),
  chromeos('chromeos');

  const ZeroTrustDevicePostureRuleInputOperatingSystem(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operational_state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputOperationalState implements TerraformEnum {
  na('na'),
  partiallyDisabled('partially_disabled'),
  autoFullyDisabled('auto_fully_disabled'),
  fullyDisabled('fully_disabled'),
  autoPartiallyDisabled('auto_partially_disabled'),
  disabledError('disabled_error'),
  dbCorruption('db_corruption');

  const ZeroTrustDevicePostureRuleInputOperationalState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleInputOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `risk_level` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputRiskLevel implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high'),
  critical('critical');

  const ZeroTrustDevicePostureRuleInputRiskLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `score_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputScoreOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleInputScoreOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `state` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputState implements TerraformEnum {
  online('online'),
  offline('offline'),
  unknown('unknown');

  const ZeroTrustDevicePostureRuleInputState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `version_operator` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputVersionOperator implements TerraformEnum {
  lt('<'),
  lte('<='),
  gt('>'),
  gte('>='),
  eq('==');

  const ZeroTrustDevicePostureRuleInputVersionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input.locations` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleInputLocations {
  const ZeroTrustDevicePostureRuleInputLocations({
    this.paths,
    this.trustStores,
  });

  final TfArg<List<Object?>>? paths;

  final List<TfArg<ZeroTrustDevicePostureRuleInputLocationsTrustStores>>?
  trustStores;

  Map<String, Object?> encode() => {
    if (paths != null) 'paths': paths!.toTfJson(),
    if (trustStores != null)
      'trust_stores': [for (final e in trustStores!) e.toTfJson()],
  };
}

/// `trust_stores` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleInputLocationsTrustStores
    implements TerraformEnum {
  system('system'),
  user('user');

  const ZeroTrustDevicePostureRuleInputLocationsTrustStores(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `match` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleMatch {
  const ZeroTrustDevicePostureRuleMatch({this.platform});

  final TfArg<ZeroTrustDevicePostureRuleMatchPlatform>? platform;

  Map<String, Object?> encode() => {
    if (platform != null) 'platform': platform!.toTfJson(),
  };
}

/// `platform` — derived from the provider schema description.
enum ZeroTrustDevicePostureRuleMatchPlatform implements TerraformEnum {
  windows('windows'),
  mac('mac'),
  linux('linux'),
  android('android'),
  ios('ios'),
  chromeos('chromeos');

  const ZeroTrustDevicePostureRuleMatchPlatform(this.terraformValue);
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
           if (description != null) 'description': description,
           if (expiration != null) 'expiration': expiration,
           if (name != null) 'name': name,
           if (schedule != null) 'schedule': schedule,
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
}
