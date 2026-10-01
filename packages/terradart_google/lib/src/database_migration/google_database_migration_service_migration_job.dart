// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_database_migration_service_migration_job`.
const Set<String> _googleDatabaseMigrationServiceMigrationJobSensitive =
    <String>{};

/// Database Migration Service Migration Job Dump enum for `dump_type`.
enum DatabaseMigrationServiceMigrationJobDumpType implements TerraformEnum {
  logical('LOGICAL'),
  physical('PHYSICAL');

  const DatabaseMigrationServiceMigrationJobDumpType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Database Migration Service Migration Job enum for `phase`.
enum DatabaseMigrationServiceMigrationJobPhase implements TerraformEnum {
  fullDump('FULL_DUMP'),
  cdc('CDC'),
  promoteInProgress('PROMOTE_IN_PROGRESS'),
  waitingForSourceWritesToStop('WAITING_FOR_SOURCE_WRITES_TO_STOP'),
  preparingTheDump('PREPARING_THE_DUMP'),
  readyForPromote('READY_FOR_PROMOTE');

  const DatabaseMigrationServiceMigrationJobPhase(this.terraformValue);
  @override
  final String terraformValue;
}

/// Database Migration Service Migration Job enum for `state`.
enum DatabaseMigrationServiceMigrationJobState implements TerraformEnum {
  notStarted('NOT_STARTED'),
  running('RUNNING');

  const DatabaseMigrationServiceMigrationJobState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Database Migration Service Migration Job enum for `type`.
enum DatabaseMigrationServiceMigrationJobType implements TerraformEnum {
  oneTime('ONE_TIME'),
  continuous('CONTINUOUS');

  const DatabaseMigrationServiceMigrationJobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `static_ip_connectivity`, `reverse_ssh_connectivity`, `vpc_peering_connectivity` on `google_database_migration_service_migration_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.staticIpConnectivity(...)`.
sealed class DatabaseMigrationServiceMigrationJobConnectivity {
  const DatabaseMigrationServiceMigrationJobConnectivity();

  /// Sets `static_ip_connectivity`.
  const factory DatabaseMigrationServiceMigrationJobConnectivity.staticIpConnectivity(
    DatabaseMigrationServiceMigrationJobStaticIpConnectivity
    staticIpConnectivity,
  ) = DatabaseMigrationServiceMigrationJobStaticIpConnectivityChoice;

  /// Sets `reverse_ssh_connectivity`.
  const factory DatabaseMigrationServiceMigrationJobConnectivity.reverseSshConnectivity(
    DatabaseMigrationServiceMigrationJobReverseSshConnectivity
    reverseSshConnectivity,
  ) = DatabaseMigrationServiceMigrationJobReverseSshConnectivityChoice;

  /// Sets `vpc_peering_connectivity`.
  const factory DatabaseMigrationServiceMigrationJobConnectivity.vpcPeeringConnectivity(
    DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity
    vpcPeeringConnectivity,
  ) = DatabaseMigrationServiceMigrationJobVpcPeeringConnectivityChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatabaseMigrationServiceMigrationJobConnectivity.staticIpConnectivity] choice: sets `static_ip_connectivity`.
final class DatabaseMigrationServiceMigrationJobStaticIpConnectivityChoice
    extends DatabaseMigrationServiceMigrationJobConnectivity {
  const DatabaseMigrationServiceMigrationJobStaticIpConnectivityChoice(
    this.staticIpConnectivity,
  );

  final DatabaseMigrationServiceMigrationJobStaticIpConnectivity
  staticIpConnectivity;

  @override
  String get blockKey => 'static_ip_connectivity';

  @override
  Map<String, Object?> encode() => {
    'static_ip_connectivity': staticIpConnectivity.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'static_ip_connectivity': TfArg.literal(staticIpConnectivity.encode()),
  };
}

/// The [DatabaseMigrationServiceMigrationJobConnectivity.reverseSshConnectivity] choice: sets `reverse_ssh_connectivity`.
final class DatabaseMigrationServiceMigrationJobReverseSshConnectivityChoice
    extends DatabaseMigrationServiceMigrationJobConnectivity {
  const DatabaseMigrationServiceMigrationJobReverseSshConnectivityChoice(
    this.reverseSshConnectivity,
  );

  final DatabaseMigrationServiceMigrationJobReverseSshConnectivity
  reverseSshConnectivity;

  @override
  String get blockKey => 'reverse_ssh_connectivity';

  @override
  Map<String, Object?> encode() => {
    'reverse_ssh_connectivity': reverseSshConnectivity.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'reverse_ssh_connectivity': TfArg.literal(reverseSshConnectivity.encode()),
  };
}

/// The [DatabaseMigrationServiceMigrationJobConnectivity.vpcPeeringConnectivity] choice: sets `vpc_peering_connectivity`.
final class DatabaseMigrationServiceMigrationJobVpcPeeringConnectivityChoice
    extends DatabaseMigrationServiceMigrationJobConnectivity {
  const DatabaseMigrationServiceMigrationJobVpcPeeringConnectivityChoice(
    this.vpcPeeringConnectivity,
  );

  final DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity
  vpcPeeringConnectivity;

  @override
  String get blockKey => 'vpc_peering_connectivity';

  @override
  Map<String, Object?> encode() => {
    'vpc_peering_connectivity': vpcPeeringConnectivity.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc_peering_connectivity': TfArg.literal(vpcPeeringConnectivity.encode()),
  };
}

/// Typed helper for the `dump_flags` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobDumpFlags {
  const DatabaseMigrationServiceMigrationJobDumpFlags({this.dumpFlags});

  final List<DatabaseMigrationServiceMigrationJobDumpFlagsDumpFlags>? dumpFlags;

  Map<String, Object?> encode() => {
    if (dumpFlags != null)
      'dump_flags': [for (final e in dumpFlags!) e.encode()],
  };
}

/// Typed helper for the `dump_flags.dump_flags` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobDumpFlagsDumpFlags {
  const DatabaseMigrationServiceMigrationJobDumpFlagsDumpFlags({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `objects_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectsConfig {
  const DatabaseMigrationServiceMigrationJobObjectsConfig({
    this.sourceObjectsConfig,
  });

  final DatabaseMigrationServiceMigrationJobSourceObjectsConfig?
  sourceObjectsConfig;

  Map<String, Object?> encode() => {
    'source_objects_config': ?sourceObjectsConfig?.encode(),
  };
}

/// Typed helper for the `objects_config.source_objects_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobSourceObjectsConfig {
  const DatabaseMigrationServiceMigrationJobSourceObjectsConfig({
    this.objectsSelectionType,
    this.objectConfigs,
  });

  final TfArg<DatabaseMigrationServiceMigrationJobObjectsSelectionType>?
  objectsSelectionType;

  final List<DatabaseMigrationServiceMigrationJobObjectConfigs>? objectConfigs;

  Map<String, Object?> encode() => {
    'objects_selection_type': ?objectsSelectionType?.toTfJson(),
    if (objectConfigs != null)
      'object_configs': [for (final e in objectConfigs!) e.encode()],
  };
}

/// `objects_selection_type` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobObjectsSelectionType
    implements TerraformEnum {
  allObjects('ALL_OBJECTS'),
  specifiedObjects('SPECIFIED_OBJECTS');

  const DatabaseMigrationServiceMigrationJobObjectsSelectionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `objects_config.source_objects_config.object_configs` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectConfigs {
  const DatabaseMigrationServiceMigrationJobObjectConfigs({
    this.objectIdentifier,
  });

  final DatabaseMigrationServiceMigrationJobObjectIdentifier? objectIdentifier;

  Map<String, Object?> encode() => {
    'object_identifier': ?objectIdentifier?.encode(),
  };
}

/// Typed helper for the `objects_config.source_objects_config.object_configs.object_identifier` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectIdentifier {
  const DatabaseMigrationServiceMigrationJobObjectIdentifier({
    this.database,
    this.schema,
    this.table,
    required this.type,
  });

  final TfArg<String>? database;

  final TfArg<String>? schema;

  final TfArg<String>? table;

  final TfArg<DatabaseMigrationServiceMigrationJobObjectIdentifierType> type;

  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'schema': ?schema?.toTfJson(),
    'table': ?table?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobObjectIdentifierType
    implements TerraformEnum {
  database('DATABASE'),
  schema('SCHEMA'),
  table('TABLE');

  const DatabaseMigrationServiceMigrationJobObjectIdentifierType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `performance_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobPerformanceConfig {
  const DatabaseMigrationServiceMigrationJobPerformanceConfig({
    this.dumpParallelLevel,
  });

  final TfArg<DatabaseMigrationServiceMigrationJobDumpParallelLevel>?
  dumpParallelLevel;

  Map<String, Object?> encode() => {
    'dump_parallel_level': ?dumpParallelLevel?.toTfJson(),
  };
}

/// `dump_parallel_level` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobDumpParallelLevel
    implements TerraformEnum {
  min('MIN'),
  optimal('OPTIMAL'),
  max('MAX');

  const DatabaseMigrationServiceMigrationJobDumpParallelLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `postgres_homogeneous_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobPostgresHomogeneousConfig {
  const DatabaseMigrationServiceMigrationJobPostgresHomogeneousConfig({
    required this.isNativeLogical,
    this.maxAdditionalSubscriptions,
  });

  final TfArg<bool> isNativeLogical;

  final TfArg<num>? maxAdditionalSubscriptions;

  Map<String, Object?> encode() => {
    'is_native_logical': isNativeLogical.toTfJson(),
    'max_additional_subscriptions': ?maxAdditionalSubscriptions?.toTfJson(),
  };
}

/// Typed helper for the `reverse_ssh_connectivity` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobReverseSshConnectivity {
  const DatabaseMigrationServiceMigrationJobReverseSshConnectivity({
    this.vm,
    this.vmIp,
    this.vmPort,
    this.vpc,
  });

  final TfArg<String>? vm;

  final TfArg<String>? vmIp;

  final TfArg<num>? vmPort;

  final TfArg<String>? vpc;

  Map<String, Object?> encode() => {
    'vm': ?vm?.toTfJson(),
    'vm_ip': ?vmIp?.toTfJson(),
    'vm_port': ?vmPort?.toTfJson(),
    'vpc': ?vpc?.toTfJson(),
  };
}

/// Typed helper for the `static_ip_connectivity` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobStaticIpConnectivity {
  const DatabaseMigrationServiceMigrationJobStaticIpConnectivity();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `vpc_peering_connectivity` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity {
  const DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity({this.vpc});

  final TfArg<String>? vpc;

  Map<String, Object?> encode() => {'vpc': ?vpc?.toTfJson()};
}

/// Factory wrapper for `google_database_migration_service_migration_job`.
///
/// A migration job definition.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatabaseMigrationServiceMigrationJob extends Resource {
  static const String tfType =
      'google_database_migration_service_migration_job';

  GoogleDatabaseMigrationServiceMigrationJob({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? desiredState,
    required TfArg<String> destination,
    TfArg<String>? displayName,
    TfArg<String>? dumpPath,
    TfArg<DatabaseMigrationServiceMigrationJobDumpType>? dumpType,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    required TfArg<String> migrationJobId,
    TfArg<String>? project,
    required TfArg<String> source,
    TfArg<bool>? stopOnWarnings,
    required TfArg<DatabaseMigrationServiceMigrationJobType> type,
    DatabaseMigrationServiceMigrationJobDumpFlags? dumpFlags,
    DatabaseMigrationServiceMigrationJobObjectsConfig? objectsConfig,
    DatabaseMigrationServiceMigrationJobPerformanceConfig? performanceConfig,
    DatabaseMigrationServiceMigrationJobPostgresHomogeneousConfig?
    postgresHomogeneousConfig,
    DatabaseMigrationServiceMigrationJobConnectivity? connectivity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'desired_state': ?desiredState,
           'destination': destination,
           'display_name': ?displayName,
           'dump_path': ?dumpPath,
           'dump_type': ?dumpType,
           'labels': ?labels,
           'location': ?location,
           'migration_job_id': migrationJobId,
           'project': ?project,
           'source': source,
           'stop_on_warnings': ?stopOnWarnings,
           'type': type,
           if (dumpFlags != null)
             'dump_flags': TfArg.literal(dumpFlags.encode()),
           if (objectsConfig != null)
             'objects_config': TfArg.literal(objectsConfig.encode()),
           if (performanceConfig != null)
             'performance_config': TfArg.literal(performanceConfig.encode()),
           if (postgresHomogeneousConfig != null)
             'postgres_homogeneous_config': TfArg.literal(
               postgresHomogeneousConfig.encode(),
             ),
           ...?connectivity?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServiceMigrationJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatabaseMigrationServiceMigrationJob>`.
  RefTo<GoogleDatabaseMigrationServiceMigrationJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `phase` attribute.
  TfRef<String> get phase => TfRef.attribute<String>(this, 'phase');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `dump_path` attribute.
  TfRef<String> get dumpPath => TfRef.attribute<String>(this, 'dump_path');

  /// Reference to `dump_type` attribute.
  TfRef<String> get dumpType => TfRef.attribute<String>(this, 'dump_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `migration_job_id` attribute.
  TfRef<String> get migrationJobId =>
      TfRef.attribute<String>(this, 'migration_job_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `stop_on_warnings` attribute.
  TfRef<bool> get stopOnWarnings =>
      TfRef.attribute<bool>(this, 'stop_on_warnings');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
