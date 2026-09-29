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
    'backup_policies': ?backupPolicies?.toTfJson(),
    'backup_vault': ?backupVault?.toTfJson(),
    'scheduled_backup_enabled': ?scheduledBackupEnabled?.toTfJson(),
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
    'host_groups': ?hostGroups?.toTfJson(),
    'name': ?name?.toTfJson(),
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
    'enable_global_file_lock': ?enableGlobalFileLock?.toTfJson(),
    'peer_cluster_name': ?peerClusterName?.toTfJson(),
    'peer_ip_addresses': ?peerIpAddresses?.toTfJson(),
    'peer_svm_name': ?peerSvmName?.toTfJson(),
    'peer_volume_name': ?peerVolumeName?.toTfJson(),
    'peering_command_expiry_time': ?peeringCommandExpiryTime?.toTfJson(),
    'cache_config': ?cacheConfig?.encode(),
  };
}

/// Typed helper for the `cache_parameters.cache_config` block of
/// `google_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeCacheParametersCacheConfig {
  const NetappVolumeCacheParametersCacheConfig({this.cifsChangeNotifyEnabled});

  final TfArg<bool>? cifsChangeNotifyEnabled;

  Map<String, Object?> encode() => {
    'cifs_change_notify_enabled': ?cifsChangeNotifyEnabled?.toTfJson(),
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
    'access_type': ?accessType?.toTfJson(),
    'allowed_clients': ?allowedClients?.toTfJson(),
    'anon_uid': ?anonUid?.toTfJson(),
    'has_root_access': ?hasRootAccess?.toTfJson(),
    'kerberos5_read_only': ?kerberos5ReadOnly?.toTfJson(),
    'kerberos5_read_write': ?kerberos5ReadWrite?.toTfJson(),
    'kerberos5i_read_only': ?kerberos5iReadOnly?.toTfJson(),
    'kerberos5i_read_write': ?kerberos5iReadWrite?.toTfJson(),
    'kerberos5p_read_only': ?kerberos5pReadOnly?.toTfJson(),
    'kerberos5p_read_write': ?kerberos5pReadWrite?.toTfJson(),
    'nfsv3': ?nfsv3?.toTfJson(),
    'nfsv4': ?nfsv4?.toTfJson(),
    'squash_mode': ?squashMode?.toTfJson(),
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
    'cluster_location': ?clusterLocation?.toTfJson(),
    'description': ?description?.toTfJson(),
    'hybrid_replication_type': ?hybridReplicationType?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'large_volume_constituent_count': ?largeVolumeConstituentCount?.toTfJson(),
    'peer_cluster_name': ?peerClusterName?.toTfJson(),
    'peer_ip_addresses': ?peerIpAddresses?.toTfJson(),
    'peer_svm_name': ?peerSvmName?.toTfJson(),
    'peer_volume_name': ?peerVolumeName?.toTfJson(),
    'replication': ?replication?.toTfJson(),
    'replication_schedule': ?replicationSchedule?.toTfJson(),
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
    'constituent_count': ?constituentCount?.toTfJson(),
  };
}

/// Exactly one of `source_backup`, `source_snapshot` on the `restore_parameters` block of `google_netapp_volume`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceBackup(...)`.
sealed class NetappVolumeRestoreParameters {
  const NetappVolumeRestoreParameters();

  /// Sets `source_backup`.
  const factory NetappVolumeRestoreParameters.sourceBackup(
    TfArg<String> sourceBackup,
  ) = NetappVolumeRestoreParametersSourceBackup;

  /// Sets `source_snapshot`.
  const factory NetappVolumeRestoreParameters.sourceSnapshot(
    TfArg<String> sourceSnapshot,
  ) = NetappVolumeRestoreParametersSourceSnapshot;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [NetappVolumeRestoreParameters.sourceBackup] choice: sets `source_backup`.
final class NetappVolumeRestoreParametersSourceBackup
    extends NetappVolumeRestoreParameters {
  const NetappVolumeRestoreParametersSourceBackup(this.sourceBackup);

  final TfArg<String> sourceBackup;

  @override
  String get blockKey => 'source_backup';

  @override
  Map<String, Object?> encode() => {'source_backup': sourceBackup.toTfJson()};
}

/// The [NetappVolumeRestoreParameters.sourceSnapshot] choice: sets `source_snapshot`.
final class NetappVolumeRestoreParametersSourceSnapshot
    extends NetappVolumeRestoreParameters {
  const NetappVolumeRestoreParametersSourceSnapshot(this.sourceSnapshot);

  final TfArg<String> sourceSnapshot;

  @override
  String get blockKey => 'source_snapshot';

  @override
  Map<String, Object?> encode() => {
    'source_snapshot': sourceSnapshot.toTfJson(),
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
    'enabled': ?enabled?.toTfJson(),
    'daily_schedule': ?dailySchedule?.encode(),
    'hourly_schedule': ?hourlySchedule?.encode(),
    'monthly_schedule': ?monthlySchedule?.encode(),
    'weekly_schedule': ?weeklySchedule?.encode(),
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
    'hour': ?hour?.toTfJson(),
    'minute': ?minute?.toTfJson(),
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
    'minute': ?minute?.toTfJson(),
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
    'days_of_month': ?daysOfMonth?.toTfJson(),
    'hour': ?hour?.toTfJson(),
    'minute': ?minute?.toTfJson(),
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
    'day': ?day?.toTfJson(),
    'hour': ?hour?.toTfJson(),
    'minute': ?minute?.toTfJson(),
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
    'cooling_threshold_days': ?coolingThresholdDays?.toTfJson(),
    'hot_tier_bypass_mode_enabled': ?hotTierBypassModeEnabled?.toTfJson(),
    'tier_action': ?tierAction?.toTfJson(),
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
    TfArg<bool>? largeCapacity,
    TfArg<bool>? multipleEndpoints,
    TfArg<List<String>>? restrictedActions,
    TfArg<num>? throughputMibps,
    List<NetappVolumeBlockDevices>? blockDevices,
    NetappVolumeCacheParameters? cacheParameters,
    NetappVolumeHybridReplicationParameters? hybridReplicationParameters,
    NetappVolumeLargeCapacityConfig? largeCapacityConfig,
    NetappVolumeTieringPolicy? tieringPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'storage_pool': storagePool,
           'capacity_gib': capacityGib,
           'protocols': protocols,
           'share_name': ?shareName,
           'description': ?description,
           'labels': ?labels,
           'smb_settings': ?smbSettings,
           'unix_permissions': ?unixPermissions,
           'snapshot_directory': ?snapshotDirectory,
           'security_style': ?securityStyle,
           'kerberos_enabled': ?kerberosEnabled,
           if (exportPolicy != null)
             'export_policy': TfArg.literal(exportPolicy.encode()),
           if (snapshotPolicy != null)
             'snapshot_policy': TfArg.literal(snapshotPolicy.encode()),
           if (backupConfig != null)
             'backup_config': TfArg.literal(backupConfig.encode()),
           if (restoreParameters != null)
             'restore_parameters': TfArg.literal(restoreParameters.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'large_capacity': ?largeCapacity,
           'multiple_endpoints': ?multipleEndpoints,
           'restricted_actions': ?restrictedActions,
           'throughput_mibps': ?throughputMibps,
           if (blockDevices != null)
             'block_devices': TfArg.literal([
               for (final e in blockDevices) e.encode(),
             ]),
           if (cacheParameters != null)
             'cache_parameters': TfArg.literal(cacheParameters.encode()),
           if (hybridReplicationParameters != null)
             'hybrid_replication_parameters': TfArg.literal(
               hybridReplicationParameters.encode(),
             ),
           if (largeCapacityConfig != null)
             'large_capacity_config': TfArg.literal(
               largeCapacityConfig.encode(),
             ),
           if (tieringPolicy != null)
             'tiering_policy': TfArg.literal(tieringPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappVolume>`.
  RefTo<GoogleNetappVolume> get ref => RefTo.of(this);

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
