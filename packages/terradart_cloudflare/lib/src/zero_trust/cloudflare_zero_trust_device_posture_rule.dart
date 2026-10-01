// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_rule`.
const Set<String> _cloudflareZeroTrustDevicePostureRuleSensitive = <String>{};

/// Zero Trust Device Posture Rule enum for `type`.
extension type const ZeroTrustDevicePostureRuleType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleType.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleType.arg(TfArg<String> arg) : this._(arg);

  static const file = ZeroTrustDevicePostureRuleType._(TfArgLiteral('file'));
  static const application = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('application'),
  );
  static const tanium = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('tanium'),
  );
  static const gateway = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('gateway'),
  );
  static const warp = ZeroTrustDevicePostureRuleType._(TfArgLiteral('warp'));
  static const diskEncryption = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('disk_encryption'),
  );
  static const serialNumber = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('serial_number'),
  );
  static const sentinelone = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('sentinelone'),
  );
  static const carbonblack = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('carbonblack'),
  );
  static const firewall = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('firewall'),
  );
  static const osVersion = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('os_version'),
  );
  static const domainJoined = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('domain_joined'),
  );
  static const clientCertificate = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('client_certificate'),
  );
  static const clientCertificateV2 = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('client_certificate_v2'),
  );
  static const antivirus = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('antivirus'),
  );
  static const uniqueClientId = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('unique_client_id'),
  );
  static const kolide = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('kolide'),
  );
  static const taniumS2s = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('tanium_s2s'),
  );
  static const crowdstrikeS2s = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('crowdstrike_s2s'),
  );
  static const intune = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('intune'),
  );
  static const workspaceOne = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('workspace_one'),
  );
  static const sentineloneS2s = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('sentinelone_s2s'),
  );
  static const customS2s = ZeroTrustDevicePostureRuleType._(
    TfArgLiteral('custom_s2s'),
  );

  static const List<ZeroTrustDevicePostureRuleType> values = [
    file,
    application,
    tanium,
    gateway,
    warp,
    diskEncryption,
    serialNumber,
    sentinelone,
    carbonblack,
    firewall,
    osVersion,
    domainJoined,
    clientCertificate,
    clientCertificateV2,
    antivirus,
    uniqueClientId,
    kolide,
    taniumS2s,
    crowdstrikeS2s,
    intune,
    workspaceOne,
    sentineloneS2s,
    customS2s,
  ];
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

  final List<ZeroTrustDevicePostureRuleAuthState>? authState;

  final TfArg<String>? certificateId;

  final TfArg<List<String>>? checkDisks;

  final TfArg<bool>? checkPrivateKey;

  final TfArg<String>? cn;

  final ZeroTrustDevicePostureRuleComplianceStatus? complianceStatus;

  final TfArg<String>? connectionId;

  final ZeroTrustDevicePostureRuleCountOperator? countOperator;

  final TfArg<String>? domain;

  final TfArg<String>? eidLastSeen;

  final TfArg<bool>? enabled;

  final TfArg<bool>? exists;

  final List<ZeroTrustDevicePostureRuleExtendedKeyUsage>? extendedKeyUsage;

  final TfArg<String>? id;

  final TfArg<bool>? infected;

  final TfArg<bool>? isActive;

  final TfArg<String>? issueCount;

  final TfArg<String>? lastSeen;

  final ZeroTrustDevicePostureRuleNetworkStatus? networkStatus;

  final ZeroTrustDevicePostureRuleOperatingSystem? operatingSystem;

  final ZeroTrustDevicePostureRuleOperationalState? operationalState;

  final ZeroTrustDevicePostureRuleOperator? operator;

  final TfArg<String>? os;

  final TfArg<String>? osDistroName;

  final TfArg<String>? osDistroRevision;

  final TfArg<String>? osVersionExtra;

  final TfArg<String>? overall;

  final TfArg<String>? path;

  final TfArg<bool>? requireAll;

  final ZeroTrustDevicePostureRuleRiskLevel? riskLevel;

  final TfArg<num>? score;

  final ZeroTrustDevicePostureRuleScoreOperator? scoreOperator;

  final TfArg<String>? sensorConfig;

  final TfArg<String>? sha256;

  final ZeroTrustDevicePostureRuleState? state;

  final TfArg<List<String>>? subjectAlternativeNames;

  final TfArg<String>? thumbprint;

  final TfArg<num>? totalScore;

  final TfArg<num>? updateWindowDays;

  final TfArg<String>? version;

  final ZeroTrustDevicePostureRuleVersionOperator? versionOperator;

  final ZeroTrustDevicePostureRuleLocations? locations;

  @internal
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
extension type const ZeroTrustDevicePostureRuleAuthState._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleAuthState.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleAuthState.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleAuthState.arg(TfArg<String> arg)
    : this._(arg);

  static const good = ZeroTrustDevicePostureRuleAuthState._(
    TfArgLiteral('Good'),
  );
  static const notified = ZeroTrustDevicePostureRuleAuthState._(
    TfArgLiteral('Notified'),
  );
  static const willBlock = ZeroTrustDevicePostureRuleAuthState._(
    TfArgLiteral('Will Block'),
  );
  static const blocked = ZeroTrustDevicePostureRuleAuthState._(
    TfArgLiteral('Blocked'),
  );

  static const List<ZeroTrustDevicePostureRuleAuthState> values = [
    good,
    notified,
    willBlock,
    blocked,
  ];
}

/// `compliance_status` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleComplianceStatus._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustDevicePostureRuleComplianceStatus.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleComplianceStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleComplianceStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const compliant = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('compliant'),
  );
  static const noncompliant = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('noncompliant'),
  );
  static const unknown = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('unknown'),
  );
  static const notapplicable = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('notapplicable'),
  );
  static const ingraceperiod = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('ingraceperiod'),
  );
  static const error = ZeroTrustDevicePostureRuleComplianceStatus._(
    TfArgLiteral('error'),
  );

  static const List<ZeroTrustDevicePostureRuleComplianceStatus> values = [
    compliant,
    noncompliant,
    unknown,
    notapplicable,
    ingraceperiod,
    error,
  ];
}

/// `count_operator` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleCountOperator._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleCountOperator.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleCountOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleCountOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const lt = ZeroTrustDevicePostureRuleCountOperator._(
    TfArgLiteral('<'),
  );
  static const lte = ZeroTrustDevicePostureRuleCountOperator._(
    TfArgLiteral('<='),
  );
  static const gt = ZeroTrustDevicePostureRuleCountOperator._(
    TfArgLiteral('>'),
  );
  static const gte = ZeroTrustDevicePostureRuleCountOperator._(
    TfArgLiteral('>='),
  );
  static const eq = ZeroTrustDevicePostureRuleCountOperator._(
    TfArgLiteral('=='),
  );

  static const List<ZeroTrustDevicePostureRuleCountOperator> values = [
    lt,
    lte,
    gt,
    gte,
    eq,
  ];
}

/// `extended_key_usage` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleExtendedKeyUsage._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustDevicePostureRuleExtendedKeyUsage.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleExtendedKeyUsage.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleExtendedKeyUsage.arg(TfArg<String> arg)
    : this._(arg);

  static const clientauth = ZeroTrustDevicePostureRuleExtendedKeyUsage._(
    TfArgLiteral('clientAuth'),
  );
  static const emailprotection = ZeroTrustDevicePostureRuleExtendedKeyUsage._(
    TfArgLiteral('emailProtection'),
  );

  static const List<ZeroTrustDevicePostureRuleExtendedKeyUsage> values = [
    clientauth,
    emailprotection,
  ];
}

/// `network_status` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleNetworkStatus._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleNetworkStatus.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleNetworkStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleNetworkStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const connected = ZeroTrustDevicePostureRuleNetworkStatus._(
    TfArgLiteral('connected'),
  );
  static const disconnected = ZeroTrustDevicePostureRuleNetworkStatus._(
    TfArgLiteral('disconnected'),
  );
  static const disconnecting = ZeroTrustDevicePostureRuleNetworkStatus._(
    TfArgLiteral('disconnecting'),
  );
  static const connecting = ZeroTrustDevicePostureRuleNetworkStatus._(
    TfArgLiteral('connecting'),
  );

  static const List<ZeroTrustDevicePostureRuleNetworkStatus> values = [
    connected,
    disconnected,
    disconnecting,
    connecting,
  ];
}

/// `operating_system` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleOperatingSystem._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustDevicePostureRuleOperatingSystem.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleOperatingSystem.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleOperatingSystem.arg(TfArg<String> arg)
    : this._(arg);

  static const windows = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('windows'),
  );
  static const linux = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('linux'),
  );
  static const mac = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('mac'),
  );
  static const android = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('android'),
  );
  static const ios = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('ios'),
  );
  static const chromeos = ZeroTrustDevicePostureRuleOperatingSystem._(
    TfArgLiteral('chromeos'),
  );

  static const List<ZeroTrustDevicePostureRuleOperatingSystem> values = [
    windows,
    linux,
    mac,
    android,
    ios,
    chromeos,
  ];
}

/// `operational_state` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleOperationalState._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustDevicePostureRuleOperationalState.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleOperationalState.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleOperationalState.arg(TfArg<String> arg)
    : this._(arg);

  static const na = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('na'),
  );
  static const partiallyDisabled = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('partially_disabled'),
  );
  static const autoFullyDisabled = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('auto_fully_disabled'),
  );
  static const fullyDisabled = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('fully_disabled'),
  );
  static const autoPartiallyDisabled =
      ZeroTrustDevicePostureRuleOperationalState._(
        TfArgLiteral('auto_partially_disabled'),
      );
  static const disabledError = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('disabled_error'),
  );
  static const dbCorruption = ZeroTrustDevicePostureRuleOperationalState._(
    TfArgLiteral('db_corruption'),
  );

  static const List<ZeroTrustDevicePostureRuleOperationalState> values = [
    na,
    partiallyDisabled,
    autoFullyDisabled,
    fullyDisabled,
    autoPartiallyDisabled,
    disabledError,
    dbCorruption,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleOperator._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleOperator.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleOperator.arg(TfArg<String> arg) : this._(arg);

  static const lt = ZeroTrustDevicePostureRuleOperator._(TfArgLiteral('<'));
  static const lte = ZeroTrustDevicePostureRuleOperator._(TfArgLiteral('<='));
  static const gt = ZeroTrustDevicePostureRuleOperator._(TfArgLiteral('>'));
  static const gte = ZeroTrustDevicePostureRuleOperator._(TfArgLiteral('>='));
  static const eq = ZeroTrustDevicePostureRuleOperator._(TfArgLiteral('=='));

  static const List<ZeroTrustDevicePostureRuleOperator> values = [
    lt,
    lte,
    gt,
    gte,
    eq,
  ];
}

/// `risk_level` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleRiskLevel._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleRiskLevel.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleRiskLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleRiskLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const low = ZeroTrustDevicePostureRuleRiskLevel._(TfArgLiteral('low'));
  static const medium = ZeroTrustDevicePostureRuleRiskLevel._(
    TfArgLiteral('medium'),
  );
  static const high = ZeroTrustDevicePostureRuleRiskLevel._(
    TfArgLiteral('high'),
  );
  static const critical = ZeroTrustDevicePostureRuleRiskLevel._(
    TfArgLiteral('critical'),
  );

  static const List<ZeroTrustDevicePostureRuleRiskLevel> values = [
    low,
    medium,
    high,
    critical,
  ];
}

/// `score_operator` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleScoreOperator._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleScoreOperator.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleScoreOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleScoreOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const lt = ZeroTrustDevicePostureRuleScoreOperator._(
    TfArgLiteral('<'),
  );
  static const lte = ZeroTrustDevicePostureRuleScoreOperator._(
    TfArgLiteral('<='),
  );
  static const gt = ZeroTrustDevicePostureRuleScoreOperator._(
    TfArgLiteral('>'),
  );
  static const gte = ZeroTrustDevicePostureRuleScoreOperator._(
    TfArgLiteral('>='),
  );
  static const eq = ZeroTrustDevicePostureRuleScoreOperator._(
    TfArgLiteral('=='),
  );

  static const List<ZeroTrustDevicePostureRuleScoreOperator> values = [
    lt,
    lte,
    gt,
    gte,
    eq,
  ];
}

/// `state` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleState._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleState.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleState.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleState.arg(TfArg<String> arg) : this._(arg);

  static const online = ZeroTrustDevicePostureRuleState._(
    TfArgLiteral('online'),
  );
  static const offline = ZeroTrustDevicePostureRuleState._(
    TfArgLiteral('offline'),
  );
  static const unknown = ZeroTrustDevicePostureRuleState._(
    TfArgLiteral('unknown'),
  );

  static const List<ZeroTrustDevicePostureRuleState> values = [
    online,
    offline,
    unknown,
  ];
}

/// `version_operator` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleVersionOperator._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustDevicePostureRuleVersionOperator.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleVersionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleVersionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const lt = ZeroTrustDevicePostureRuleVersionOperator._(
    TfArgLiteral('<'),
  );
  static const lte = ZeroTrustDevicePostureRuleVersionOperator._(
    TfArgLiteral('<='),
  );
  static const gt = ZeroTrustDevicePostureRuleVersionOperator._(
    TfArgLiteral('>'),
  );
  static const gte = ZeroTrustDevicePostureRuleVersionOperator._(
    TfArgLiteral('>='),
  );
  static const eq = ZeroTrustDevicePostureRuleVersionOperator._(
    TfArgLiteral('=='),
  );

  static const List<ZeroTrustDevicePostureRuleVersionOperator> values = [
    lt,
    lte,
    gt,
    gte,
    eq,
  ];
}

/// Typed helper for the `input.locations` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleLocations {
  const ZeroTrustDevicePostureRuleLocations({this.paths, this.trustStores});

  final TfArg<List<String>>? paths;

  final List<ZeroTrustDevicePostureRuleTrustStores>? trustStores;

  @internal
  Map<String, Object?> encode() => {
    'paths': ?paths?.toTfJson(),
    if (trustStores != null)
      'trust_stores': [for (final e in trustStores!) e.toTfJson()],
  };
}

/// `trust_stores` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRuleTrustStores._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRuleTrustStores.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRuleTrustStores.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRuleTrustStores.arg(TfArg<String> arg)
    : this._(arg);

  static const system = ZeroTrustDevicePostureRuleTrustStores._(
    TfArgLiteral('system'),
  );
  static const user = ZeroTrustDevicePostureRuleTrustStores._(
    TfArgLiteral('user'),
  );

  static const List<ZeroTrustDevicePostureRuleTrustStores> values = [
    system,
    user,
  ];
}

/// Typed helper for the `match` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleMatch {
  const ZeroTrustDevicePostureRuleMatch({this.platform});

  final ZeroTrustDevicePostureRulePlatform? platform;

  @internal
  Map<String, Object?> encode() => {'platform': ?platform?.toTfJson()};
}

/// `platform` — derived from the provider schema description.
extension type const ZeroTrustDevicePostureRulePlatform._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureRulePlatform.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureRulePlatform.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureRulePlatform.arg(TfArg<String> arg) : this._(arg);

  static const windows = ZeroTrustDevicePostureRulePlatform._(
    TfArgLiteral('windows'),
  );
  static const mac = ZeroTrustDevicePostureRulePlatform._(TfArgLiteral('mac'));
  static const linux = ZeroTrustDevicePostureRulePlatform._(
    TfArgLiteral('linux'),
  );
  static const android = ZeroTrustDevicePostureRulePlatform._(
    TfArgLiteral('android'),
  );
  static const ios = ZeroTrustDevicePostureRulePlatform._(TfArgLiteral('ios'));
  static const chromeos = ZeroTrustDevicePostureRulePlatform._(
    TfArgLiteral('chromeos'),
  );

  static const List<ZeroTrustDevicePostureRulePlatform> values = [
    windows,
    mac,
    linux,
    android,
    ios,
    chromeos,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_device_posture_rule`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDevicePostureRule extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_posture_rule';

  CloudflareZeroTrustDevicePostureRule(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    TfArg<String>? expiration,
    TfArg<String>? name,
    TfArg<String>? schedule,
    required ZeroTrustDevicePostureRuleType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
