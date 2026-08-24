// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_rule`.
const Set<String> _cloudflareZeroTrustDevicePostureRuleSensitive = <String>{};

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

  final TfArg<List<Object?>>? authState;

  final TfArg<String>? certificateId;

  final TfArg<List<Object?>>? checkDisks;

  final TfArg<bool>? checkPrivateKey;

  final TfArg<String>? cn;

  final TfArg<String>? complianceStatus;

  final TfArg<String>? connectionId;

  final TfArg<String>? countOperator;

  final TfArg<String>? domain;

  final TfArg<String>? eidLastSeen;

  final TfArg<bool>? enabled;

  final TfArg<bool>? exists;

  final TfArg<List<Object?>>? extendedKeyUsage;

  final TfArg<String>? id;

  final TfArg<bool>? infected;

  final TfArg<bool>? isActive;

  final TfArg<String>? issueCount;

  final TfArg<String>? lastSeen;

  final TfArg<String>? networkStatus;

  final TfArg<String>? operatingSystem;

  final TfArg<String>? operationalState;

  final TfArg<String>? operator;

  final TfArg<String>? os;

  final TfArg<String>? osDistroName;

  final TfArg<String>? osDistroRevision;

  final TfArg<String>? osVersionExtra;

  final TfArg<String>? overall;

  final TfArg<String>? path;

  final TfArg<bool>? requireAll;

  final TfArg<String>? riskLevel;

  final TfArg<num>? score;

  final TfArg<String>? scoreOperator;

  final TfArg<String>? sensorConfig;

  final TfArg<String>? sha256;

  final TfArg<String>? state;

  final TfArg<List<Object?>>? subjectAlternativeNames;

  final TfArg<String>? thumbprint;

  final TfArg<num>? totalScore;

  final TfArg<num>? updateWindowDays;

  final TfArg<String>? version;

  final TfArg<String>? versionOperator;

  final ZeroTrustDevicePostureRuleInputLocations? locations;

  Map<String, Object?> encode() => {
    if (activeThreats != null) 'active_threats': activeThreats!.toTfJson(),
    if (authState != null) 'auth_state': authState!.toTfJson(),
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
      'extended_key_usage': extendedKeyUsage!.toTfJson(),
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

/// Typed helper for the `input.locations` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleInputLocations {
  const ZeroTrustDevicePostureRuleInputLocations({
    this.paths,
    this.trustStores,
  });

  final TfArg<List<Object?>>? paths;

  final TfArg<List<Object?>>? trustStores;

  Map<String, Object?> encode() => {
    if (paths != null) 'paths': paths!.toTfJson(),
    if (trustStores != null) 'trust_stores': trustStores!.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `cloudflare_zero_trust_device_posture_rule` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureRuleMatch {
  const ZeroTrustDevicePostureRuleMatch({this.platform});

  final TfArg<String>? platform;

  Map<String, Object?> encode() => {
    if (platform != null) 'platform': platform!.toTfJson(),
  };
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
    required TfArg<String> accountId,
    TfArg<String>? description,
    TfArg<String>? expiration,
    TfArg<String>? name,
    TfArg<String>? schedule,
    required TfArg<String> type,
    ZeroTrustDevicePostureRuleInput? input,
    List<ZeroTrustDevicePostureRuleMatch>? match,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
