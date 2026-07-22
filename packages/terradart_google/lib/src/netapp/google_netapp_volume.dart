// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_volume`.
const Set<String> _googleNetappVolumeSensitive = <String>{};

/// Netapp Volume Security enum for `security_style`.
enum NetappVolumeSecurityStyle implements TerraformEnum {
  ntfs('NTFS'),
  unix('UNIX');

  const NetappVolumeSecurityStyle(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `backup_config` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeBackupConfig {
  const NetappVolumeBackupConfig({
    this.backupPolicies,
    this.backupVault,
    this.scheduledBackupEnabled,
  });

  final TfArg<List<Object?>>? backupPolicies;

  final TfArg<String>? backupVault;

  final TfArg<bool>? scheduledBackupEnabled;

  Map<String, Object?> encode() => {
    if (backupPolicies != null) 'backup_policies': backupPolicies!.toTfJson(),
    if (backupVault != null) 'backup_vault': backupVault!.toTfJson(),
    if (scheduledBackupEnabled != null)
      'scheduled_backup_enabled': scheduledBackupEnabled!.toTfJson(),
  };
}

/// Typed helper for the `block_devices` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeBlockDevices {
  const NetappVolumeBlockDevices({
    this.hostGroups,
    this.name,
    required this.osType,
  });

  final TfArg<List<Object?>>? hostGroups;

  final TfArg<String>? name;

  final TfArg<NetappVolumeBlockDevicesOsType> osType;

  Map<String, Object?> encode() => {
    if (hostGroups != null) 'host_groups': hostGroups!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'os_type': osType.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
enum NetappVolumeBlockDevicesOsType implements TerraformEnum {
  linux('LINUX'),
  windows('WINDOWS'),
  esxi('ESXI');

  const NetappVolumeBlockDevicesOsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_parameters` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeCacheParameters {
  const NetappVolumeCacheParameters({
    this.enableGlobalFileLock,
    this.peerClusterName,
    this.peerIpAddresses,
    this.peerSvmName,
    this.peerVolumeName,
    this.peeringCommandExpiryTime,
    this.cacheConfig,
  });

  final TfArg<bool>? enableGlobalFileLock;

  final TfArg<String>? peerClusterName;

  final TfArg<List<Object?>>? peerIpAddresses;

  final TfArg<String>? peerSvmName;

  final TfArg<String>? peerVolumeName;

  final TfArg<String>? peeringCommandExpiryTime;

  final NetappVolumeCacheParametersCacheConfig? cacheConfig;

  Map<String, Object?> encode() => {
    if (enableGlobalFileLock != null)
      'enable_global_file_lock': enableGlobalFileLock!.toTfJson(),
    if (peerClusterName != null)
      'peer_cluster_name': peerClusterName!.toTfJson(),
    if (peerIpAddresses != null)
      'peer_ip_addresses': peerIpAddresses!.toTfJson(),
    if (peerSvmName != null) 'peer_svm_name': peerSvmName!.toTfJson(),
    if (peerVolumeName != null) 'peer_volume_name': peerVolumeName!.toTfJson(),
    if (peeringCommandExpiryTime != null)
      'peering_command_expiry_time': peeringCommandExpiryTime!.toTfJson(),
    if (cacheConfig != null) 'cache_config': cacheConfig!.encode(),
  };
}

/// Typed helper for the `cache_parameters.cache_config` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeCacheParametersCacheConfig {
  const NetappVolumeCacheParametersCacheConfig({this.cifsChangeNotifyEnabled});

  final TfArg<bool>? cifsChangeNotifyEnabled;

  Map<String, Object?> encode() => {
    if (cifsChangeNotifyEnabled != null)
      'cifs_change_notify_enabled': cifsChangeNotifyEnabled!.toTfJson(),
  };
}

/// Typed helper for the `export_policy` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeExportPolicy {
  const NetappVolumeExportPolicy({required this.rules});

  final List<NetappVolumeExportPolicyRules> rules;

  Map<String, Object?> encode() => {
    'rules': [for (final e in rules) e.encode()],
  };
}

/// Typed helper for the `export_policy.rules` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeExportPolicyRules {
  const NetappVolumeExportPolicyRules({
    this.accessType,
    this.allowedClients,
    this.anonUid,
    this.hasRootAccess,
    this.kerberos5ReadOnly,
    this.kerberos5ReadWrite,
    this.kerberos5iReadOnly,
    this.kerberos5iReadWrite,
    this.kerberos5pReadOnly,
    this.kerberos5pReadWrite,
    this.nfsv3,
    this.nfsv4,
    this.squashMode,
  });

  final TfArg<NetappVolumeExportPolicyRulesAccessType>? accessType;

  final TfArg<String>? allowedClients;

  final TfArg<num>? anonUid;

  final TfArg<String>? hasRootAccess;

  final TfArg<bool>? kerberos5ReadOnly;

  final TfArg<bool>? kerberos5ReadWrite;

  final TfArg<bool>? kerberos5iReadOnly;

  final TfArg<bool>? kerberos5iReadWrite;

  final TfArg<bool>? kerberos5pReadOnly;

  final TfArg<bool>? kerberos5pReadWrite;

  final TfArg<bool>? nfsv3;

  final TfArg<bool>? nfsv4;

  final TfArg<NetappVolumeExportPolicyRulesSquashMode>? squashMode;

  Map<String, Object?> encode() => {
    if (accessType != null) 'access_type': accessType!.toTfJson(),
    if (allowedClients != null) 'allowed_clients': allowedClients!.toTfJson(),
    if (anonUid != null) 'anon_uid': anonUid!.toTfJson(),
    if (hasRootAccess != null) 'has_root_access': hasRootAccess!.toTfJson(),
    if (kerberos5ReadOnly != null)
      'kerberos5_read_only': kerberos5ReadOnly!.toTfJson(),
    if (kerberos5ReadWrite != null)
      'kerberos5_read_write': kerberos5ReadWrite!.toTfJson(),
    if (kerberos5iReadOnly != null)
      'kerberos5i_read_only': kerberos5iReadOnly!.toTfJson(),
    if (kerberos5iReadWrite != null)
      'kerberos5i_read_write': kerberos5iReadWrite!.toTfJson(),
    if (kerberos5pReadOnly != null)
      'kerberos5p_read_only': kerberos5pReadOnly!.toTfJson(),
    if (kerberos5pReadWrite != null)
      'kerberos5p_read_write': kerberos5pReadWrite!.toTfJson(),
    if (nfsv3 != null) 'nfsv3': nfsv3!.toTfJson(),
    if (nfsv4 != null) 'nfsv4': nfsv4!.toTfJson(),
    if (squashMode != null) 'squash_mode': squashMode!.toTfJson(),
  };
}

/// `access_type` — derived from the provider schema description.
enum NetappVolumeExportPolicyRulesAccessType implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE'),
  readNone('READ_NONE');

  const NetappVolumeExportPolicyRulesAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `squash_mode` — derived from the provider schema description.
enum NetappVolumeExportPolicyRulesSquashMode implements TerraformEnum {
  squashModeUnspecified('SQUASH_MODE_UNSPECIFIED'),
  noRootSquash('NO_ROOT_SQUASH'),
  rootSquash('ROOT_SQUASH'),
  allSquash('ALL_SQUASH');

  const NetappVolumeExportPolicyRulesSquashMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `hybrid_replication_parameters` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeHybridReplicationParameters {
  const NetappVolumeHybridReplicationParameters({
    this.clusterLocation,
    this.description,
    this.hybridReplicationType,
    this.labels,
    this.largeVolumeConstituentCount,
    this.peerClusterName,
    this.peerIpAddresses,
    this.peerSvmName,
    this.peerVolumeName,
    this.replication,
    this.replicationSchedule,
  });

  final TfArg<String>? clusterLocation;

  final TfArg<String>? description;

  final TfArg<NetappVolumeHybridReplicationParametersHybridReplicationType>?
  hybridReplicationType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<num>? largeVolumeConstituentCount;

  final TfArg<String>? peerClusterName;

  final TfArg<List<Object?>>? peerIpAddresses;

  final TfArg<String>? peerSvmName;

  final TfArg<String>? peerVolumeName;

  final TfArg<String>? replication;

  final TfArg<NetappVolumeHybridReplicationParametersReplicationSchedule>?
  replicationSchedule;

  Map<String, Object?> encode() => {
    if (clusterLocation != null)
      'cluster_location': clusterLocation!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (hybridReplicationType != null)
      'hybrid_replication_type': hybridReplicationType!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (largeVolumeConstituentCount != null)
      'large_volume_constituent_count': largeVolumeConstituentCount!.toTfJson(),
    if (peerClusterName != null)
      'peer_cluster_name': peerClusterName!.toTfJson(),
    if (peerIpAddresses != null)
      'peer_ip_addresses': peerIpAddresses!.toTfJson(),
    if (peerSvmName != null) 'peer_svm_name': peerSvmName!.toTfJson(),
    if (peerVolumeName != null) 'peer_volume_name': peerVolumeName!.toTfJson(),
    if (replication != null) 'replication': replication!.toTfJson(),
    if (replicationSchedule != null)
      'replication_schedule': replicationSchedule!.toTfJson(),
  };
}

/// `hybrid_replication_type` — derived from the provider schema description.
enum NetappVolumeHybridReplicationParametersHybridReplicationType
    implements TerraformEnum {
  migration('MIGRATION'),
  continuousReplication('CONTINUOUS_REPLICATION'),
  onpremReplication('ONPREM_REPLICATION'),
  reverseOnpremReplication('REVERSE_ONPREM_REPLICATION');

  const NetappVolumeHybridReplicationParametersHybridReplicationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `replication_schedule` — derived from the provider schema description.
enum NetappVolumeHybridReplicationParametersReplicationSchedule
    implements TerraformEnum {
  every10Minutes('EVERY_10_MINUTES'),
  hourly('HOURLY'),
  daily('DAILY');

  const NetappVolumeHybridReplicationParametersReplicationSchedule(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `large_capacity_config` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeLargeCapacityConfig {
  const NetappVolumeLargeCapacityConfig({this.constituentCount});

  final TfArg<num>? constituentCount;

  Map<String, Object?> encode() => {
    if (constituentCount != null)
      'constituent_count': constituentCount!.toTfJson(),
  };
}

/// Typed helper for the `restore_parameters` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeRestoreParameters {
  const NetappVolumeRestoreParameters({this.sourceBackup, this.sourceSnapshot});

  final TfArg<String>? sourceBackup;

  final TfArg<String>? sourceSnapshot;

  Map<String, Object?> encode() => {
    if (sourceBackup != null) 'source_backup': sourceBackup!.toTfJson(),
    if (sourceSnapshot != null) 'source_snapshot': sourceSnapshot!.toTfJson(),
  };
}

/// Typed helper for the `snapshot_policy` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeSnapshotPolicy {
  const NetappVolumeSnapshotPolicy({
    this.enabled,
    this.dailySchedule,
    this.hourlySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  final TfArg<bool>? enabled;

  final NetappVolumeSnapshotPolicyDailySchedule? dailySchedule;

  final NetappVolumeSnapshotPolicyHourlySchedule? hourlySchedule;

  final NetappVolumeSnapshotPolicyMonthlySchedule? monthlySchedule;

  final NetappVolumeSnapshotPolicyWeeklySchedule? weeklySchedule;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (dailySchedule != null) 'daily_schedule': dailySchedule!.encode(),
    if (hourlySchedule != null) 'hourly_schedule': hourlySchedule!.encode(),
    if (monthlySchedule != null) 'monthly_schedule': monthlySchedule!.encode(),
    if (weeklySchedule != null) 'weekly_schedule': weeklySchedule!.encode(),
  };
}

/// Typed helper for the `snapshot_policy.daily_schedule` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeSnapshotPolicyDailySchedule {
  const NetappVolumeSnapshotPolicyDailySchedule({
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<num>? hour;

  final TfArg<num>? minute;

  final TfArg<num> snapshotsToKeep;

  Map<String, Object?> encode() => {
    if (hour != null) 'hour': hour!.toTfJson(),
    if (minute != null) 'minute': minute!.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `snapshot_policy.hourly_schedule` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeSnapshotPolicyHourlySchedule {
  const NetappVolumeSnapshotPolicyHourlySchedule({
    this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<num>? minute;

  final TfArg<num> snapshotsToKeep;

  Map<String, Object?> encode() => {
    if (minute != null) 'minute': minute!.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `snapshot_policy.monthly_schedule` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeSnapshotPolicyMonthlySchedule {
  const NetappVolumeSnapshotPolicyMonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<String>? daysOfMonth;

  final TfArg<num>? hour;

  final TfArg<num>? minute;

  final TfArg<num> snapshotsToKeep;

  Map<String, Object?> encode() => {
    if (daysOfMonth != null) 'days_of_month': daysOfMonth!.toTfJson(),
    if (hour != null) 'hour': hour!.toTfJson(),
    if (minute != null) 'minute': minute!.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `snapshot_policy.weekly_schedule` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeSnapshotPolicyWeeklySchedule {
  const NetappVolumeSnapshotPolicyWeeklySchedule({
    this.day,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  final TfArg<String>? day;

  final TfArg<num>? hour;

  final TfArg<num>? minute;

  final TfArg<num> snapshotsToKeep;

  Map<String, Object?> encode() => {
    if (day != null) 'day': day!.toTfJson(),
    if (hour != null) 'hour': hour!.toTfJson(),
    if (minute != null) 'minute': minute!.toTfJson(),
    'snapshots_to_keep': snapshotsToKeep.toTfJson(),
  };
}

/// Typed helper for the `tiering_policy` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeTieringPolicy {
  const NetappVolumeTieringPolicy({
    this.coolingThresholdDays,
    this.hotTierBypassModeEnabled,
    this.tierAction,
  });

  final TfArg<num>? coolingThresholdDays;

  final TfArg<bool>? hotTierBypassModeEnabled;

  final TfArg<NetappVolumeTieringPolicyTierAction>? tierAction;

  Map<String, Object?> encode() => {
    if (coolingThresholdDays != null)
      'cooling_threshold_days': coolingThresholdDays!.toTfJson(),
    if (hotTierBypassModeEnabled != null)
      'hot_tier_bypass_mode_enabled': hotTierBypassModeEnabled!.toTfJson(),
    if (tierAction != null) 'tier_action': tierAction!.toTfJson(),
  };
}

/// `tier_action` — derived from the provider schema description.
enum NetappVolumeTieringPolicyTierAction implements TerraformEnum {
  enabled('ENABLED'),
  paused('PAUSED');

  const NetappVolumeTieringPolicyTierAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_netapp_volume`.
///
/// A volume is a file system container in a storage pool that stores
/// application, database, and user data.
///
/// You can create a volume's capacity using the available capacity in the
/// storage pool and you can define and resize the capacity without disruption
/// to any processes.
///
/// Storage pool settings apply to the volumes contained within them
/// automatically.
///
/// NetApp Volumes **volume** carved from a [GoogleNetappStoragePool].
///
/// **Cost:** no separate pool-capacity SKU beyond the parent storage
/// pool (`FC86-5113-7C81` capacity GiBy·mo). Deferred with the pool
/// (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleNetappVolume(
///   localName: 'vol',
///   name: TfArg.literal('data'),
///   location: TfArg.literal('us-central1'),
///   storagePool: TfArg.ref(pool.nameRef),
///   capacityGib: TfArg.literal(100),
///   protocols: [TfArg.literal('NFSV3')],
///   shareName: TfArg.literal('data'),
/// );
/// ```
final class GoogleNetappVolume extends Resource {
  static const String tfType = 'google_netapp_volume';

  GoogleNetappVolume({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> storagePool,
    required TfArg<String> capacityGib,
    required TfArg<List<String>> protocols,
    TfArg<String>? shareName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? smbSettings,
    TfArg<String>? unixPermissions,
    TfArg<bool>? snapshotDirectory,
    TfArg<String>? securityStyle,
    TfArg<bool>? kerberosEnabled,
    NetappVolumeExportPolicy? exportPolicy,
    NetappVolumeSnapshotPolicy? snapshotPolicy,
    NetappVolumeBackupConfig? backupConfig,
    NetappVolumeRestoreParameters? restoreParameters,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'storage_pool': storagePool,
           'capacity_gib': capacityGib,
           'protocols': protocols,
           if (shareName != null) 'share_name': shareName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (smbSettings != null) 'smb_settings': smbSettings,
           if (unixPermissions != null) 'unix_permissions': unixPermissions,
           if (snapshotDirectory != null)
             'snapshot_directory': snapshotDirectory,
           if (securityStyle != null) 'security_style': securityStyle,
           if (kerberosEnabled != null) 'kerberos_enabled': kerberosEnabled,
           if (exportPolicy != null)
             'export_policy': TfArg.literal(exportPolicy.encode()),
           if (snapshotPolicy != null)
             'snapshot_policy': TfArg.literal(snapshotPolicy.encode()),
           if (backupConfig != null)
             'backup_config': TfArg.literal(backupConfig.encode()),
           if (restoreParameters != null)
             'restore_parameters': TfArg.literal(restoreParameters.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappVolumeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_directory` attribute.
  TfRef<String> get activeDirectory =>
      TfRef.attribute<String>(this, 'active_directory');

  /// Reference to `cold_tier_size_gib` attribute.
  TfRef<String> get coldTierSizeGib =>
      TfRef.attribute<String>(this, 'cold_tier_size_gib');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `has_replication` attribute.
  TfRef<bool> get hasReplication =>
      TfRef.attribute<bool>(this, 'has_replication');

  /// Reference to `hot_tier_size_used_gib` attribute.
  TfRef<String> get hotTierSizeUsedGib =>
      TfRef.attribute<String>(this, 'hot_tier_size_used_gib');

  /// Reference to `kms_config` attribute.
  TfRef<String> get kmsConfig => TfRef.attribute<String>(this, 'kms_config');

  /// Reference to `ldap_enabled` attribute.
  TfRef<bool> get ldapEnabled => TfRef.attribute<bool>(this, 'ldap_enabled');

  /// Reference to `mount_options` attribute.
  TfRef<List<Map<String, Object?>>> get mountOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mount_options');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `psa_range` attribute.
  TfRef<String> get psaRange => TfRef.attribute<String>(this, 'psa_range');

  /// Reference to `replica_zone` attribute.
  TfRef<String> get replicaZone =>
      TfRef.attribute<String>(this, 'replica_zone');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `used_gib` attribute.
  TfRef<String> get usedGib => TfRef.attribute<String>(this, 'used_gib');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
