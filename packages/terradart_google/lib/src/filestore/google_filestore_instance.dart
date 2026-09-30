// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_filestore_instance`.
const Set<String> _googleFilestoreInstanceSensitive = <String>{};

/// `tier` — Filestore service tier.
enum FilestoreInstanceTier implements TerraformEnum {
  standard('STANDARD'),
  premium('PREMIUM'),
  basicHdd('BASIC_HDD'),
  basicSsd('BASIC_SSD'),
  highScaleSsd('HIGH_SCALE_SSD'),
  zonal('ZONAL'),
  regional('REGIONAL'),
  enterprise('ENTERPRISE');

  const FilestoreInstanceTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// `desired_replica_state` — the replica state to move the instance to.
enum FilestoreInstanceDesiredReplicaState implements TerraformEnum {
  paused('PAUSED'),
  ready('READY');

  const FilestoreInstanceDesiredReplicaState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol` — the file protocol the instance serves.
enum FilestoreInstanceProtocol implements TerraformEnum {
  nfsV3('NFS_V3'),
  nfsV41('NFS_V4_1');

  const FilestoreInstanceProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `networks.connect_mode` — VPC reachability mode.
enum FilestoreInstanceConnectMode implements TerraformEnum {
  directPeering('DIRECT_PEERING'),
  privateServiceAccess('PRIVATE_SERVICE_ACCESS'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT');

  const FilestoreInstanceConnectMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `file_shares.nfs_export_options.access_mode`.
enum FilestoreInstanceNfsExportAccessMode implements TerraformEnum {
  readOnly('READ_ONLY'),
  readWrite('READ_WRITE');

  const FilestoreInstanceNfsExportAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `file_shares.nfs_export_options.squash_mode`.
enum FilestoreInstanceNfsSquashMode implements TerraformEnum {
  noRootSquash('NO_ROOT_SQUASH'),
  rootSquash('ROOT_SQUASH');

  const FilestoreInstanceNfsSquashMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `initial_replication.role`.
enum FilestoreInstanceReplicationRole implements TerraformEnum {
  roleUnspecified('ROLE_UNSPECIFIED'),
  active('ACTIVE'),
  standby('STANDBY');

  const FilestoreInstanceReplicationRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `directory_services` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceDirectoryServices {
  const FilestoreInstanceDirectoryServices({this.ldap});

  final FilestoreInstanceDirectoryServicesLdap? ldap;

  Map<String, Object?> encode() => {'ldap': ?ldap?.encode()};
}

/// Typed helper for the `directory_services.ldap` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceDirectoryServicesLdap {
  const FilestoreInstanceDirectoryServicesLdap({
    required this.domain,
    this.groupsOu,
    required this.servers,
    this.usersOu,
  });

  final TfArg<String> domain;

  final TfArg<String>? groupsOu;

  final TfArg<List<String>> servers;

  final TfArg<String>? usersOu;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'groups_ou': ?groupsOu?.toTfJson(),
    'servers': servers.toTfJson(),
    'users_ou': ?usersOu?.toTfJson(),
  };
}

/// Typed helper for the `file_shares` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceFileShares {
  const FilestoreInstanceFileShares({
    required this.capacityGb,
    required this.name,
    this.sourceBackup,
    this.sourceBackupdrBackup,
    this.nfsExportOptions,
  });

  final TfArg<num> capacityGb;

  final TfArg<String> name;

  final TfArg<String>? sourceBackup;

  final TfArg<String>? sourceBackupdrBackup;

  final List<FilestoreInstanceFileSharesNfsExportOptions>? nfsExportOptions;

  Map<String, Object?> encode() => {
    'capacity_gb': capacityGb.toTfJson(),
    'name': name.toTfJson(),
    'source_backup': ?sourceBackup?.toTfJson(),
    'source_backupdr_backup': ?sourceBackupdrBackup?.toTfJson(),
    if (nfsExportOptions != null)
      'nfs_export_options': [for (final e in nfsExportOptions!) e.encode()],
  };
}

/// Typed helper for the `file_shares.nfs_export_options` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceFileSharesNfsExportOptions {
  const FilestoreInstanceFileSharesNfsExportOptions({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.network,
    this.squashMode,
  });

  final TfArg<FilestoreInstanceNfsExportAccessMode>? accessMode;

  final TfArg<num>? anonGid;

  final TfArg<num>? anonUid;

  final TfArg<List<String>>? ipRanges;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<FilestoreInstanceNfsSquashMode>? squashMode;

  Map<String, Object?> encode() => {
    'access_mode': ?accessMode?.toTfJson(),
    'anon_gid': ?anonGid?.toTfJson(),
    'anon_uid': ?anonUid?.toTfJson(),
    'ip_ranges': ?ipRanges?.toTfJson(),
    'network': ?network?.encodeAs('name').toTfJson(),
    'squash_mode': ?squashMode?.toTfJson(),
  };
}

/// Typed helper for the `initial_replication` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceInitialReplication {
  const FilestoreInstanceInitialReplication({this.role, this.replicas});

  final TfArg<FilestoreInstanceReplicationRole>? role;

  final List<FilestoreInstanceInitialReplicationReplicas>? replicas;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (replicas != null) 'replicas': [for (final e in replicas!) e.encode()],
  };
}

/// Typed helper for the `initial_replication.replicas` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceInitialReplicationReplicas {
  const FilestoreInstanceInitialReplicationReplicas({
    required this.peerInstance,
  });

  final TfArg<String> peerInstance;

  Map<String, Object?> encode() => {'peer_instance': peerInstance.toTfJson()};
}

/// Typed helper for the `networks` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceNetworks {
  const FilestoreInstanceNetworks({
    this.connectMode,
    required this.modes,
    required this.network,
    this.reservedIpRange,
    this.pscConfig,
  });

  final TfArg<FilestoreInstanceConnectMode>? connectMode;

  final List<TfArg<FilestoreInstanceNetworksModes>> modes;

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String>? reservedIpRange;

  final FilestoreInstanceNetworksPscConfig? pscConfig;

  Map<String, Object?> encode() => {
    'connect_mode': ?connectMode?.toTfJson(),
    'modes': [for (final e in modes) e.toTfJson()],
    'network': network.encodeAs('name').toTfJson(),
    'reserved_ip_range': ?reservedIpRange?.toTfJson(),
    'psc_config': ?pscConfig?.encode(),
  };
}

/// `modes` — derived from the provider schema description.
enum FilestoreInstanceNetworksModes implements TerraformEnum {
  addressModeUnspecified('ADDRESS_MODE_UNSPECIFIED'),
  modeIpv4('MODE_IPV4'),
  modeIpv6('MODE_IPV6');

  const FilestoreInstanceNetworksModes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `networks.psc_config` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceNetworksPscConfig {
  const FilestoreInstanceNetworksPscConfig({this.endpointProject});

  final TfArg<String>? endpointProject;

  Map<String, Object?> encode() => {
    'endpoint_project': ?endpointProject?.toTfJson(),
  };
}

/// At most one of `iops_per_tb`, `fixed_iops` on the `performance_config` block of `google_filestore_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.iopsPerTb(...)`.
sealed class FilestoreInstancePerformanceConfig {
  const FilestoreInstancePerformanceConfig();

  /// Sets `iops_per_tb`.
  const factory FilestoreInstancePerformanceConfig.iopsPerTb(
    FilestoreInstancePerformanceConfigIopsPerTb iopsPerTb,
  ) = FilestoreInstancePerformanceConfigIopsPerTbChoice;

  /// Sets `fixed_iops`.
  const factory FilestoreInstancePerformanceConfig.fixedIops(
    FilestoreInstancePerformanceConfigFixedIops fixedIops,
  ) = FilestoreInstancePerformanceConfigFixedIopsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [FilestoreInstancePerformanceConfig.iopsPerTb] choice: sets `iops_per_tb`.
final class FilestoreInstancePerformanceConfigIopsPerTbChoice
    extends FilestoreInstancePerformanceConfig {
  const FilestoreInstancePerformanceConfigIopsPerTbChoice(this.iopsPerTb);

  final FilestoreInstancePerformanceConfigIopsPerTb iopsPerTb;

  @override
  String get blockKey => 'iops_per_tb';

  @override
  Map<String, Object?> encode() => {'iops_per_tb': iopsPerTb.encode()};
}

/// The [FilestoreInstancePerformanceConfig.fixedIops] choice: sets `fixed_iops`.
final class FilestoreInstancePerformanceConfigFixedIopsChoice
    extends FilestoreInstancePerformanceConfig {
  const FilestoreInstancePerformanceConfigFixedIopsChoice(this.fixedIops);

  final FilestoreInstancePerformanceConfigFixedIops fixedIops;

  @override
  String get blockKey => 'fixed_iops';

  @override
  Map<String, Object?> encode() => {'fixed_iops': fixedIops.encode()};
}

/// Typed helper for the `performance_config.fixed_iops` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstancePerformanceConfigFixedIops {
  const FilestoreInstancePerformanceConfigFixedIops({this.maxIops});

  final TfArg<num>? maxIops;

  Map<String, Object?> encode() => {'max_iops': ?maxIops?.toTfJson()};
}

/// Typed helper for the `performance_config.iops_per_tb` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstancePerformanceConfigIopsPerTb {
  const FilestoreInstancePerformanceConfigIopsPerTb({this.maxIopsPerTb});

  final TfArg<num>? maxIopsPerTb;

  Map<String, Object?> encode() => {
    'max_iops_per_tb': ?maxIopsPerTb?.toTfJson(),
  };
}

/// Factory wrapper for `google_filestore_instance`.
///
/// A Google Cloud Filestore instance.
///
/// Cloud Filestore instance — managed NFS file shares on a VPC.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: instance ID.
/// - [tier]: service tier ([FilestoreInstanceTier]).
/// - [fileShares]: NFS export (name + capacity in GiB).
/// - [networks]: VPC attachment ([FilestoreInstanceNetworks]).
///
/// Enable `file.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example (basic HDD on an existing VPC):
/// ```dart
/// GoogleFilestoreInstance(
///   localName: 'nfs',
///   name: .literal('shared-nfs'),
///   tier: .literal(.basicHdd),
///   location: .literal('asia-northeast1'),
///   fileShares: FilestoreInstanceFileShares(
///     name: .literal('share1'),
///     capacityGb: .literal(1024),
///   ),
///   networks: [
///     FilestoreInstanceNetworks(
///       network: vpc.ref,
///       modes: [.literal(.modeIpv4)],
///     ),
///   ],
/// );
/// ```
final class GoogleFilestoreInstance extends Resource {
  static const String tfType = 'google_filestore_instance';

  GoogleFilestoreInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<FilestoreInstanceTier> tier,
    TfArg<String>? location,
    required FilestoreInstanceFileShares fileShares,
    required List<FilestoreInstanceNetworks> networks,
    FilestoreInstanceInitialReplication? initialReplication,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? deletionProtectionReason,
    TfArg<String>? description,
    TfArg<FilestoreInstanceDesiredReplicaState>? desiredReplicaState,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<String>? project,
    TfArg<FilestoreInstanceProtocol>? protocol,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? zone,
    FilestoreInstanceDirectoryServices? directoryServices,
    FilestoreInstancePerformanceConfig? performanceConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'tier': tier,
           'location': ?location,
           'file_shares': TfArg.literal(fileShares.encode()),
           'networks': TfArg.literal([for (final e in networks) e.encode()]),
           if (initialReplication != null)
             'initial_replication': TfArg.literal(initialReplication.encode()),
           'labels': ?labels,
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'deletion_protection_reason': ?deletionProtectionReason,
           'description': ?description,
           'desired_replica_state': ?desiredReplicaState,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'project': ?project,
           'protocol': ?protocol,
           'tags': ?tags,
           'zone': ?zone,
           if (directoryServices != null)
             'directory_services': TfArg.literal(directoryServices.encode()),
           if (performanceConfig != null)
             'performance_config': TfArg.literal(performanceConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFilestoreInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFilestoreInstance>`.
  RefTo<GoogleFilestoreInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_replication` attribute.
  TfRef<List<Map<String, Object?>>> get effectiveReplication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'effective_replication',
      );

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabledRef =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `deletion_protection_reason` attribute.
  TfRef<String> get deletionProtectionReasonRef =>
      TfRef.attribute<String>(this, 'deletion_protection_reason');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_replica_state` attribute.
  TfRef<String> get desiredReplicaStateRef =>
      TfRef.attribute<String>(this, 'desired_replica_state');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyNameRef =>
      TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocolRef => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tierRef => TfRef.attribute<String>(this, 'tier');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');
}
