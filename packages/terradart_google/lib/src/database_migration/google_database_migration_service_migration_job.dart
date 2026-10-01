// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_database_migration_service_migration_job`.
const Set<String> _googleDatabaseMigrationServiceMigrationJobSensitive =
    <String>{};

/// Database Migration Service Migration Job Dump enum for `dump_type`.
extension type const DatabaseMigrationServiceMigrationJobDumpType._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobDumpType.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobDumpType.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobDumpType.arg(TfArg<String> arg)
    : this._(arg);

  static const logical = DatabaseMigrationServiceMigrationJobDumpType._(
    TfArgLiteral('LOGICAL'),
  );
  static const physical = DatabaseMigrationServiceMigrationJobDumpType._(
    TfArgLiteral('PHYSICAL'),
  );

  static const List<DatabaseMigrationServiceMigrationJobDumpType> values = [
    logical,
    physical,
  ];
}

/// Database Migration Service Migration Job enum for `phase`.
extension type const DatabaseMigrationServiceMigrationJobPhase._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobPhase.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobPhase.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobPhase.arg(TfArg<String> arg)
    : this._(arg);

  static const fullDump = DatabaseMigrationServiceMigrationJobPhase._(
    TfArgLiteral('FULL_DUMP'),
  );
  static const cdc = DatabaseMigrationServiceMigrationJobPhase._(
    TfArgLiteral('CDC'),
  );
  static const promoteInProgress = DatabaseMigrationServiceMigrationJobPhase._(
    TfArgLiteral('PROMOTE_IN_PROGRESS'),
  );
  static const waitingForSourceWritesToStop =
      DatabaseMigrationServiceMigrationJobPhase._(
        TfArgLiteral('WAITING_FOR_SOURCE_WRITES_TO_STOP'),
      );
  static const preparingTheDump = DatabaseMigrationServiceMigrationJobPhase._(
    TfArgLiteral('PREPARING_THE_DUMP'),
  );
  static const readyForPromote = DatabaseMigrationServiceMigrationJobPhase._(
    TfArgLiteral('READY_FOR_PROMOTE'),
  );

  static const List<DatabaseMigrationServiceMigrationJobPhase> values = [
    fullDump,
    cdc,
    promoteInProgress,
    waitingForSourceWritesToStop,
    preparingTheDump,
    readyForPromote,
  ];
}

/// Database Migration Service Migration Job enum for `state`.
extension type const DatabaseMigrationServiceMigrationJobState._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobState.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobState.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobState.arg(TfArg<String> arg)
    : this._(arg);

  static const notStarted = DatabaseMigrationServiceMigrationJobState._(
    TfArgLiteral('NOT_STARTED'),
  );
  static const running = DatabaseMigrationServiceMigrationJobState._(
    TfArgLiteral('RUNNING'),
  );

  static const List<DatabaseMigrationServiceMigrationJobState> values = [
    notStarted,
    running,
  ];
}

/// Database Migration Service Migration Job enum for `type`.
extension type const DatabaseMigrationServiceMigrationJobType._(TfArg<String> _)
    implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobType.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobType.expression(String template)
    : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobType.arg(TfArg<String> arg)
    : this._(arg);

  static const oneTime = DatabaseMigrationServiceMigrationJobType._(
    TfArgLiteral('ONE_TIME'),
  );
  static const continuous = DatabaseMigrationServiceMigrationJobType._(
    TfArgLiteral('CONTINUOUS'),
  );

  static const List<DatabaseMigrationServiceMigrationJobType> values = [
    oneTime,
    continuous,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
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

  @internal
  @override
  String get blockKey => 'static_ip_connectivity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'static_ip_connectivity': staticIpConnectivity.encode(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'reverse_ssh_connectivity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'reverse_ssh_connectivity': reverseSshConnectivity.encode(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'vpc_peering_connectivity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'vpc_peering_connectivity': vpcPeeringConnectivity.encode(),
  };

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final DatabaseMigrationServiceMigrationJobObjectsSelectionType?
  objectsSelectionType;

  final List<DatabaseMigrationServiceMigrationJobObjectConfigs>? objectConfigs;

  @internal
  Map<String, Object?> encode() => {
    'objects_selection_type': ?objectsSelectionType?.toTfJson(),
    if (objectConfigs != null)
      'object_configs': [for (final e in objectConfigs!) e.encode()],
  };
}

/// `objects_selection_type` — derived from the provider schema description.
extension type const DatabaseMigrationServiceMigrationJobObjectsSelectionType._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobObjectsSelectionType.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobObjectsSelectionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobObjectsSelectionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allObjects =
      DatabaseMigrationServiceMigrationJobObjectsSelectionType._(
        TfArgLiteral('ALL_OBJECTS'),
      );
  static const specifiedObjects =
      DatabaseMigrationServiceMigrationJobObjectsSelectionType._(
        TfArgLiteral('SPECIFIED_OBJECTS'),
      );

  static const List<DatabaseMigrationServiceMigrationJobObjectsSelectionType>
  values = [allObjects, specifiedObjects];
}

/// Typed helper for the `objects_config.source_objects_config.object_configs` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobObjectConfigs {
  const DatabaseMigrationServiceMigrationJobObjectConfigs({
    this.objectIdentifier,
  });

  final DatabaseMigrationServiceMigrationJobObjectIdentifier? objectIdentifier;

  @internal
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

  final DatabaseMigrationServiceMigrationJobObjectIdentifierType type;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    'schema': ?schema?.toTfJson(),
    'table': ?table?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DatabaseMigrationServiceMigrationJobObjectIdentifierType._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobObjectIdentifierType.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobObjectIdentifierType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobObjectIdentifierType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const database =
      DatabaseMigrationServiceMigrationJobObjectIdentifierType._(
        TfArgLiteral('DATABASE'),
      );
  static const schema =
      DatabaseMigrationServiceMigrationJobObjectIdentifierType._(
        TfArgLiteral('SCHEMA'),
      );
  static const table =
      DatabaseMigrationServiceMigrationJobObjectIdentifierType._(
        TfArgLiteral('TABLE'),
      );

  static const List<DatabaseMigrationServiceMigrationJobObjectIdentifierType>
  values = [database, schema, table];
}

/// Typed helper for the `performance_config` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobPerformanceConfig {
  const DatabaseMigrationServiceMigrationJobPerformanceConfig({
    this.dumpParallelLevel,
  });

  final DatabaseMigrationServiceMigrationJobDumpParallelLevel?
  dumpParallelLevel;

  @internal
  Map<String, Object?> encode() => {
    'dump_parallel_level': ?dumpParallelLevel?.toTfJson(),
  };
}

/// `dump_parallel_level` — derived from the provider schema description.
extension type const DatabaseMigrationServiceMigrationJobDumpParallelLevel._(
  TfArg<String> _
) implements TfArg<String> {
  DatabaseMigrationServiceMigrationJobDumpParallelLevel.variable(String name)
    : this._(TfArg.variable(name));
  DatabaseMigrationServiceMigrationJobDumpParallelLevel.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DatabaseMigrationServiceMigrationJobDumpParallelLevel.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const min = DatabaseMigrationServiceMigrationJobDumpParallelLevel._(
    TfArgLiteral('MIN'),
  );
  static const optimal =
      DatabaseMigrationServiceMigrationJobDumpParallelLevel._(
        TfArgLiteral('OPTIMAL'),
      );
  static const max = DatabaseMigrationServiceMigrationJobDumpParallelLevel._(
    TfArgLiteral('MAX'),
  );

  static const List<DatabaseMigrationServiceMigrationJobDumpParallelLevel>
  values = [min, optimal, max];
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `vpc_peering_connectivity` block of
/// `google_database_migration_service_migration_job` (derived from provider schema).
@immutable
final class DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity {
  const DatabaseMigrationServiceMigrationJobVpcPeeringConnectivity({this.vpc});

  final TfArg<String>? vpc;

  @internal
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

  GoogleDatabaseMigrationServiceMigrationJob(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? desiredState,
    required TfArg<String> destination,
    TfArg<String>? displayName,
    TfArg<String>? dumpPath,
    DatabaseMigrationServiceMigrationJobDumpType? dumpType,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? location,
    required TfArg<String> migrationJobId,
    TfArg<String>? project,
    required TfArg<String> source,
    TfArg<bool>? stopOnWarnings,
    required DatabaseMigrationServiceMigrationJobType type,
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
