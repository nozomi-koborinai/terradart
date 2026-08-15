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
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `objects_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectsConfig {
  const DatabaseMigrationServiceMigrationJobObjectsConfig({
    this.sourceObjectsConfig,
  });

  final DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfig?
  sourceObjectsConfig;

  Map<String, Object?> encode() => {
    if (sourceObjectsConfig != null)
      'source_objects_config': sourceObjectsConfig!.encode(),
  };
}

/// Typed helper for the `objects_config.source_objects_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfig {
  const DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfig({
    this.objectsSelectionType,
    this.objectConfigs,
  });

  final TfArg<
    DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectsSelectionType
  >?
  objectsSelectionType;

  final List<
    DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigs
  >?
  objectConfigs;

  Map<String, Object?> encode() => {
    if (objectsSelectionType != null)
      'objects_selection_type': objectsSelectionType!.toTfJson(),
    if (objectConfigs != null)
      'object_configs': [for (final e in objectConfigs!) e.encode()],
  };
}

/// `objects_selection_type` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectsSelectionType
    implements TerraformEnum {
  allObjects('ALL_OBJECTS'),
  specifiedObjects('SPECIFIED_OBJECTS');

  const DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectsSelectionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `objects_config.source_objects_config.object_configs` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigs {
  const DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigs({
    this.objectIdentifier,
  });

  final DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifier?
  objectIdentifier;

  Map<String, Object?> encode() => {
    if (objectIdentifier != null)
      'object_identifier': objectIdentifier!.encode(),
  };
}

/// Typed helper for the `objects_config.source_objects_config.object_configs.object_identifier` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifier {
  const DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifier({
    this.database,
    this.schema,
    this.table,
    required this.type,
  });

  final TfArg<String>? database;

  final TfArg<String>? schema;

  final TfArg<String>? table;

  final TfArg<
    DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifierType
  >
  type;

  Map<String, Object?> encode() => {
    if (database != null) 'database': database!.toTfJson(),
    if (schema != null) 'schema': schema!.toTfJson(),
    if (table != null) 'table': table!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifierType
    implements TerraformEnum {
  database('DATABASE'),
  schema('SCHEMA'),
  table('TABLE');

  const DatabaseMigrationServiceMigrationJobObjectsConfigSourceObjectsConfigObjectConfigsObjectIdentifierType(
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

  final TfArg<
    DatabaseMigrationServiceMigrationJobPerformanceConfigDumpParallelLevel
  >?
  dumpParallelLevel;

  Map<String, Object?> encode() => {
    if (dumpParallelLevel != null)
      'dump_parallel_level': dumpParallelLevel!.toTfJson(),
  };
}

/// `dump_parallel_level` — derived from the provider schema description.
enum DatabaseMigrationServiceMigrationJobPerformanceConfigDumpParallelLevel
    implements TerraformEnum {
  min('MIN'),
  optimal('OPTIMAL'),
  max('MAX');

  const DatabaseMigrationServiceMigrationJobPerformanceConfigDumpParallelLevel(
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
    if (maxAdditionalSubscriptions != null)
      'max_additional_subscriptions': maxAdditionalSubscriptions!.toTfJson(),
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
    if (vm != null) 'vm': vm!.toTfJson(),
    if (vmIp != null) 'vm_ip': vmIp!.toTfJson(),
    if (vmPort != null) 'vm_port': vmPort!.toTfJson(),
    if (vpc != null) 'vpc': vpc!.toTfJson(),
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

  Map<String, Object?> encode() => {if (vpc != null) 'vpc': vpc!.toTfJson()};
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
    DatabaseMigrationServiceMigrationJobReverseSshConnectivity?
    reverseSshConnectivity,
    DatabaseMigrationServiceMigrationJobStaticIpConnectivity?
    staticIpConnectivity,
    DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity?
    vpcPeeringConnectivity,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (desiredState != null) 'desired_state': desiredState,
           'destination': destination,
           if (displayName != null) 'display_name': displayName,
           if (dumpPath != null) 'dump_path': dumpPath,
           if (dumpType != null) 'dump_type': dumpType,
           if (labels != null) 'labels': labels,
           if (location != null) 'location': location,
           'migration_job_id': migrationJobId,
           if (project != null) 'project': project,
           'source': source,
           if (stopOnWarnings != null) 'stop_on_warnings': stopOnWarnings,
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
           if (reverseSshConnectivity != null)
             'reverse_ssh_connectivity': TfArg.literal(
               reverseSshConnectivity.encode(),
             ),
           if (staticIpConnectivity != null)
             'static_ip_connectivity': TfArg.literal(
               staticIpConnectivity.encode(),
             ),
           if (vpcPeeringConnectivity != null)
             'vpc_peering_connectivity': TfArg.literal(
               vpcPeeringConnectivity.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServiceMigrationJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
