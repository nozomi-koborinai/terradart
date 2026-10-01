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
extension type const FilestoreInstanceTier._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceTier.variable(String name) : this._(TfArg.variable(name));
  FilestoreInstanceTier.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceTier.arg(TfArg<String> arg) : this._(arg);

  static const standard = FilestoreInstanceTier._(TfArgLiteral('STANDARD'));
  static const premium = FilestoreInstanceTier._(TfArgLiteral('PREMIUM'));
  static const basicHdd = FilestoreInstanceTier._(TfArgLiteral('BASIC_HDD'));
  static const basicSsd = FilestoreInstanceTier._(TfArgLiteral('BASIC_SSD'));
  static const highScaleSsd = FilestoreInstanceTier._(
    TfArgLiteral('HIGH_SCALE_SSD'),
  );
  static const zonal = FilestoreInstanceTier._(TfArgLiteral('ZONAL'));
  static const regional = FilestoreInstanceTier._(TfArgLiteral('REGIONAL'));
  static const enterprise = FilestoreInstanceTier._(TfArgLiteral('ENTERPRISE'));

  static const List<FilestoreInstanceTier> values = [
    standard,
    premium,
    basicHdd,
    basicSsd,
    highScaleSsd,
    zonal,
    regional,
    enterprise,
  ];
}

/// `desired_replica_state` — the replica state to move the instance to.
extension type const FilestoreInstanceDesiredReplicaState._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceDesiredReplicaState.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceDesiredReplicaState.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceDesiredReplicaState.arg(TfArg<String> arg)
    : this._(arg);

  static const paused = FilestoreInstanceDesiredReplicaState._(
    TfArgLiteral('PAUSED'),
  );
  static const ready = FilestoreInstanceDesiredReplicaState._(
    TfArgLiteral('READY'),
  );

  static const List<FilestoreInstanceDesiredReplicaState> values = [
    paused,
    ready,
  ];
}

/// `protocol` — the file protocol the instance serves.
extension type const FilestoreInstanceProtocol._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceProtocol.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceProtocol.arg(TfArg<String> arg) : this._(arg);

  static const nfsV3 = FilestoreInstanceProtocol._(TfArgLiteral('NFS_V3'));
  static const nfsV41 = FilestoreInstanceProtocol._(TfArgLiteral('NFS_V4_1'));

  static const List<FilestoreInstanceProtocol> values = [nfsV3, nfsV41];
}

/// `networks.connect_mode` — VPC reachability mode.
extension type const FilestoreInstanceConnectMode._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceConnectMode.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceConnectMode.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceConnectMode.arg(TfArg<String> arg) : this._(arg);

  static const directPeering = FilestoreInstanceConnectMode._(
    TfArgLiteral('DIRECT_PEERING'),
  );
  static const privateServiceAccess = FilestoreInstanceConnectMode._(
    TfArgLiteral('PRIVATE_SERVICE_ACCESS'),
  );
  static const privateServiceConnect = FilestoreInstanceConnectMode._(
    TfArgLiteral('PRIVATE_SERVICE_CONNECT'),
  );

  static const List<FilestoreInstanceConnectMode> values = [
    directPeering,
    privateServiceAccess,
    privateServiceConnect,
  ];
}

/// `file_shares.nfs_export_options.access_mode`.
extension type const FilestoreInstanceNfsExportAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceNfsExportAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceNfsExportAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceNfsExportAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const readOnly = FilestoreInstanceNfsExportAccessMode._(
    TfArgLiteral('READ_ONLY'),
  );
  static const readWrite = FilestoreInstanceNfsExportAccessMode._(
    TfArgLiteral('READ_WRITE'),
  );

  static const List<FilestoreInstanceNfsExportAccessMode> values = [
    readOnly,
    readWrite,
  ];
}

/// `file_shares.nfs_export_options.squash_mode`.
extension type const FilestoreInstanceNfsSquashMode._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceNfsSquashMode.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceNfsSquashMode.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceNfsSquashMode.arg(TfArg<String> arg) : this._(arg);

  static const noRootSquash = FilestoreInstanceNfsSquashMode._(
    TfArgLiteral('NO_ROOT_SQUASH'),
  );
  static const rootSquash = FilestoreInstanceNfsSquashMode._(
    TfArgLiteral('ROOT_SQUASH'),
  );

  static const List<FilestoreInstanceNfsSquashMode> values = [
    noRootSquash,
    rootSquash,
  ];
}

/// `initial_replication.role`.
extension type const FilestoreInstanceReplicationRole._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceReplicationRole.variable(String name)
    : this._(TfArg.variable(name));
  FilestoreInstanceReplicationRole.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceReplicationRole.arg(TfArg<String> arg) : this._(arg);

  static const roleUnspecified = FilestoreInstanceReplicationRole._(
    TfArgLiteral('ROLE_UNSPECIFIED'),
  );
  static const active = FilestoreInstanceReplicationRole._(
    TfArgLiteral('ACTIVE'),
  );
  static const standby = FilestoreInstanceReplicationRole._(
    TfArgLiteral('STANDBY'),
  );

  static const List<FilestoreInstanceReplicationRole> values = [
    roleUnspecified,
    active,
    standby,
  ];
}

/// Typed helper for the `directory_services` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceDirectoryServices {
  const FilestoreInstanceDirectoryServices({this.ldap});

  final FilestoreInstanceLdap? ldap;

  @internal
  Map<String, Object?> encode() => {'ldap': ?ldap?.encode()};
}

/// Typed helper for the `directory_services.ldap` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceLdap {
  const FilestoreInstanceLdap({
    required this.domain,
    this.groupsOu,
    required this.servers,
    this.usersOu,
  });

  final TfArg<String> domain;

  final TfArg<String>? groupsOu;

  final TfArg<List<String>> servers;

  final TfArg<String>? usersOu;

  @internal
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

  final List<FilestoreInstanceNfsExportOptions>? nfsExportOptions;

  @internal
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
final class FilestoreInstanceNfsExportOptions {
  const FilestoreInstanceNfsExportOptions({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.network,
    this.squashMode,
  });

  final FilestoreInstanceNfsExportAccessMode? accessMode;

  final TfArg<num>? anonGid;

  final TfArg<num>? anonUid;

  final TfArg<List<String>>? ipRanges;

  final RefTo<GoogleComputeNetwork>? network;

  final FilestoreInstanceNfsSquashMode? squashMode;

  @internal
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

  final FilestoreInstanceReplicationRole? role;

  final List<FilestoreInstanceReplicas>? replicas;

  @internal
  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (replicas != null) 'replicas': [for (final e in replicas!) e.encode()],
  };
}

/// Typed helper for the `initial_replication.replicas` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceReplicas {
  const FilestoreInstanceReplicas({required this.peerInstance});

  final TfArg<String> peerInstance;

  @internal
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

  final FilestoreInstanceConnectMode? connectMode;

  final List<FilestoreInstanceModes> modes;

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String>? reservedIpRange;

  final FilestoreInstancePscConfig? pscConfig;

  @internal
  Map<String, Object?> encode() => {
    'connect_mode': ?connectMode?.toTfJson(),
    'modes': [for (final e in modes) e.toTfJson()],
    'network': network.encodeAs('name').toTfJson(),
    'reserved_ip_range': ?reservedIpRange?.toTfJson(),
    'psc_config': ?pscConfig?.encode(),
  };
}

/// `modes` — derived from the provider schema description.
extension type const FilestoreInstanceModes._(TfArg<String> _)
    implements TfArg<String> {
  FilestoreInstanceModes.variable(String name) : this._(TfArg.variable(name));
  FilestoreInstanceModes.expression(String template)
    : this._(TfArg.expression(template));
  const FilestoreInstanceModes.arg(TfArg<String> arg) : this._(arg);

  static const addressModeUnspecified = FilestoreInstanceModes._(
    TfArgLiteral('ADDRESS_MODE_UNSPECIFIED'),
  );
  static const modeIpv4 = FilestoreInstanceModes._(TfArgLiteral('MODE_IPV4'));
  static const modeIpv6 = FilestoreInstanceModes._(TfArgLiteral('MODE_IPV6'));

  static const List<FilestoreInstanceModes> values = [
    addressModeUnspecified,
    modeIpv4,
    modeIpv6,
  ];
}

/// Typed helper for the `networks.psc_config` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstancePscConfig {
  const FilestoreInstancePscConfig({this.endpointProject});

  final TfArg<String>? endpointProject;

  @internal
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
    FilestoreInstanceIopsPerTb iopsPerTb,
  ) = FilestoreInstancePerformanceConfigIopsPerTb;

  /// Sets `fixed_iops`.
  const factory FilestoreInstancePerformanceConfig.fixedIops(
    FilestoreInstanceFixedIops fixedIops,
  ) = FilestoreInstancePerformanceConfigFixedIops;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [FilestoreInstancePerformanceConfig.iopsPerTb] choice: sets `iops_per_tb`.
final class FilestoreInstancePerformanceConfigIopsPerTb
    extends FilestoreInstancePerformanceConfig {
  const FilestoreInstancePerformanceConfigIopsPerTb(this.iopsPerTb);

  final FilestoreInstanceIopsPerTb iopsPerTb;

  @internal
  @override
  String get blockKey => 'iops_per_tb';

  @internal
  @override
  Map<String, Object?> encode() => {'iops_per_tb': iopsPerTb.encode()};
}

/// The [FilestoreInstancePerformanceConfig.fixedIops] choice: sets `fixed_iops`.
final class FilestoreInstancePerformanceConfigFixedIops
    extends FilestoreInstancePerformanceConfig {
  const FilestoreInstancePerformanceConfigFixedIops(this.fixedIops);

  final FilestoreInstanceFixedIops fixedIops;

  @internal
  @override
  String get blockKey => 'fixed_iops';

  @internal
  @override
  Map<String, Object?> encode() => {'fixed_iops': fixedIops.encode()};
}

/// Typed helper for the `performance_config.fixed_iops` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceFixedIops {
  const FilestoreInstanceFixedIops({this.maxIops});

  final TfArg<num>? maxIops;

  @internal
  Map<String, Object?> encode() => {'max_iops': ?maxIops?.toTfJson()};
}

/// Typed helper for the `performance_config.iops_per_tb` block of
/// `google_filestore_instance` (derived from provider schema).
@immutable
final class FilestoreInstanceIopsPerTb {
  const FilestoreInstanceIopsPerTb({this.maxIopsPerTb});

  final TfArg<num>? maxIopsPerTb;

  @internal
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
///   'nfs',
///   name: .literal('shared-nfs'),
///   tier: .basicHdd,
///   location: .literal('asia-northeast1'),
///   fileShares: FilestoreInstanceFileShares(
///     name: .literal('share1'),
///     capacityGb: .literal(1024),
///   ),
///   networks: [
///     FilestoreInstanceNetworks(
///       network: vpc.ref,
///       modes: [.modeIpv4],
///     ),
///   ],
/// );
/// ```
final class GoogleFilestoreInstance extends Resource {
  static const String tfType = 'google_filestore_instance';

  GoogleFilestoreInstance(
    super.localName, {
    required TfArg<String> name,
    required FilestoreInstanceTier tier,
    TfArg<String>? location,
    required FilestoreInstanceFileShares fileShares,
    required List<FilestoreInstanceNetworks> networks,
    FilestoreInstanceInitialReplication? initialReplication,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? deletionProtectionReason,
    TfArg<String>? description,
    FilestoreInstanceDesiredReplicaState? desiredReplicaState,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<String>? project,
    FilestoreInstanceProtocol? protocol,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `deletion_protection_reason` attribute.
  TfRef<String> get deletionProtectionReason =>
      TfRef.attribute<String>(this, 'deletion_protection_reason');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_replica_state` attribute.
  TfRef<String> get desiredReplicaState =>
      TfRef.attribute<String>(this, 'desired_replica_state');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
