// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_datastream_stream`.
const Set<String> _googleDatastreamStreamSensitive = <String>{};

/// Datastream Stream Desired enum for `desired_state`.
extension type const DatastreamStreamDesiredState._(TfArg<String> _)
    implements TfArg<String> {
  DatastreamStreamDesiredState.variable(String name)
    : this._(TfArg.variable(name));
  DatastreamStreamDesiredState.expression(String template)
    : this._(TfArg.expression(template));
  const DatastreamStreamDesiredState.arg(TfArg<String> arg) : this._(arg);

  static const notStarted = DatastreamStreamDesiredState._(
    TfArgLiteral('NOT_STARTED'),
  );
  static const running = DatastreamStreamDesiredState._(
    TfArgLiteral('RUNNING'),
  );
  static const paused = DatastreamStreamDesiredState._(TfArgLiteral('PAUSED'));

  static const List<DatastreamStreamDesiredState> values = [
    notStarted,
    running,
    paused,
  ];
}

/// Exactly one of `backfill_all`, `backfill_none` on `google_datastream_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.backfillAll(...)`.
sealed class DatastreamStreamBackfill {
  const DatastreamStreamBackfill();

  /// Sets `backfill_all`.
  const factory DatastreamStreamBackfill.backfillAll(
    DatastreamStreamBackfillAll backfillAll,
  ) = DatastreamStreamBackfillAllChoice;

  /// Sets `backfill_none`.
  const factory DatastreamStreamBackfill.backfillNone(
    DatastreamStreamBackfillNone backfillNone,
  ) = DatastreamStreamBackfillNoneChoice;

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

/// The [DatastreamStreamBackfill.backfillAll] choice: sets `backfill_all`.
final class DatastreamStreamBackfillAllChoice extends DatastreamStreamBackfill {
  const DatastreamStreamBackfillAllChoice(this.backfillAll);

  final DatastreamStreamBackfillAll backfillAll;

  @internal
  @override
  String get blockKey => 'backfill_all';

  @internal
  @override
  Map<String, Object?> encode() => {'backfill_all': backfillAll.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'backfill_all': TfArg.literal(backfillAll.encode()),
  };
}

/// The [DatastreamStreamBackfill.backfillNone] choice: sets `backfill_none`.
final class DatastreamStreamBackfillNoneChoice
    extends DatastreamStreamBackfill {
  const DatastreamStreamBackfillNoneChoice(this.backfillNone);

  final DatastreamStreamBackfillNone backfillNone;

  @internal
  @override
  String get blockKey => 'backfill_none';

  @internal
  @override
  Map<String, Object?> encode() => {'backfill_none': backfillNone.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'backfill_none': TfArg.literal(backfillNone.encode()),
  };
}

/// Typed helper for the `backfill_all` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAll {
  const DatastreamStreamBackfillAll({
    this.mongodbExcludedObjects,
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
    this.postgresqlExcludedObjects,
    this.salesforceExcludedObjects,
    this.spannerExcludedObjects,
    this.sqlServerExcludedObjects,
  });

  final DatastreamStreamMongodbExcludedObjects? mongodbExcludedObjects;

  final DatastreamStreamMysqlExcludedObjects? mysqlExcludedObjects;

  final DatastreamStreamOracleExcludedObjects? oracleExcludedObjects;

  final DatastreamStreamPostgresqlExcludedObjects? postgresqlExcludedObjects;

  final DatastreamStreamSalesforceExcludedObjects? salesforceExcludedObjects;

  final DatastreamStreamSpannerExcludedObjects? spannerExcludedObjects;

  final DatastreamStreamSqlServerExcludedObjects? sqlServerExcludedObjects;

  @internal
  Map<String, Object?> encode() => {
    'mongodb_excluded_objects': ?mongodbExcludedObjects?.encode(),
    'mysql_excluded_objects': ?mysqlExcludedObjects?.encode(),
    'oracle_excluded_objects': ?oracleExcludedObjects?.encode(),
    'postgresql_excluded_objects': ?postgresqlExcludedObjects?.encode(),
    'salesforce_excluded_objects': ?salesforceExcludedObjects?.encode(),
    'spanner_excluded_objects': ?spannerExcludedObjects?.encode(),
    'sql_server_excluded_objects': ?sqlServerExcludedObjects?.encode(),
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMongodbExcludedObjects {
  const DatastreamStreamMongodbExcludedObjects({required this.databases});

  final List<DatastreamStreamDatabases> databases;

  @internal
  Map<String, Object?> encode() => {
    'databases': [for (final e in databases) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDatabases {
  const DatastreamStreamDatabases({required this.database, this.collections});

  final TfArg<String> database;

  final List<DatastreamStreamCollections>? collections;

  @internal
  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (collections != null)
      'collections': [for (final e in collections!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases.collections` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamCollections {
  const DatastreamStreamCollections({required this.collection, this.fields});

  final TfArg<String> collection;

  final List<DatastreamStreamCollectionsFields>? fields;

  @internal
  Map<String, Object?> encode() => {
    'collection': collection.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases.collections.fields` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamCollectionsFields {
  const DatastreamStreamCollectionsFields({this.field});

  final TfArg<String>? field;

  @internal
  Map<String, Object?> encode() => {'field': ?field?.toTfJson()};
}

/// Typed helper for the `backfill_all.mysql_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMysqlExcludedObjects {
  const DatastreamStreamMysqlExcludedObjects({required this.mysqlDatabases});

  final List<DatastreamStreamMysqlDatabases> mysqlDatabases;

  @internal
  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamMysqlDatabases {
  const DatastreamStreamMysqlDatabases({
    required this.database,
    this.mysqlTables,
  });

  final TfArg<String> database;

  final List<DatastreamStreamMysqlTables>? mysqlTables;

  @internal
  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (mysqlTables != null)
      'mysql_tables': [for (final e in mysqlTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamMysqlTables {
  const DatastreamStreamMysqlTables({required this.table, this.mysqlColumns});

  final TfArg<String> table;

  final List<DatastreamStreamMysqlColumns>? mysqlColumns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (mysqlColumns != null)
      'mysql_columns': [for (final e in mysqlColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamMysqlColumns {
  const DatastreamStreamMysqlColumns({
    this.collation,
    this.column,
    this.dataType,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  final TfArg<String>? collation;

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  final TfArg<bool>? nullable;

  final TfArg<num>? ordinalPosition;

  final TfArg<bool>? primaryKey;

  @internal
  Map<String, Object?> encode() => {
    'collation': ?collation?.toTfJson(),
    'column': ?column?.toTfJson(),
    'data_type': ?dataType?.toTfJson(),
    'nullable': ?nullable?.toTfJson(),
    'ordinal_position': ?ordinalPosition?.toTfJson(),
    'primary_key': ?primaryKey?.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamOracleExcludedObjects {
  const DatastreamStreamOracleExcludedObjects({required this.oracleSchemas});

  final List<DatastreamStreamOracleSchemas> oracleSchemas;

  @internal
  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamOracleSchemas {
  const DatastreamStreamOracleSchemas({
    required this.schema,
    this.oracleTables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamOracleTables>? oracleTables;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (oracleTables != null)
      'oracle_tables': [for (final e in oracleTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamOracleTables {
  const DatastreamStreamOracleTables({required this.table, this.oracleColumns});

  final TfArg<String> table;

  final List<DatastreamStreamOracleColumns>? oracleColumns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (oracleColumns != null)
      'oracle_columns': [for (final e in oracleColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.oracle_columns` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamOracleColumns {
  const DatastreamStreamOracleColumns({this.column, this.dataType});

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  @internal
  Map<String, Object?> encode() => {
    'column': ?column?.toTfJson(),
    'data_type': ?dataType?.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamPostgresqlExcludedObjects {
  const DatastreamStreamPostgresqlExcludedObjects({
    required this.postgresqlSchemas,
  });

  final List<DatastreamStreamPostgresqlSchemas> postgresqlSchemas;

  @internal
  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamPostgresqlSchemas {
  const DatastreamStreamPostgresqlSchemas({
    required this.schema,
    this.postgresqlTables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamPostgresqlTables>? postgresqlTables;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (postgresqlTables != null)
      'postgresql_tables': [for (final e in postgresqlTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamPostgresqlTables {
  const DatastreamStreamPostgresqlTables({
    required this.table,
    this.postgresqlColumns,
  });

  final TfArg<String> table;

  final List<DatastreamStreamPostgresqlColumns>? postgresqlColumns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (postgresqlColumns != null)
      'postgresql_columns': [for (final e in postgresqlColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.postgresql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamPostgresqlColumns {
  const DatastreamStreamPostgresqlColumns({
    this.column,
    this.dataType,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  final TfArg<bool>? nullable;

  final TfArg<num>? ordinalPosition;

  final TfArg<bool>? primaryKey;

  @internal
  Map<String, Object?> encode() => {
    'column': ?column?.toTfJson(),
    'data_type': ?dataType?.toTfJson(),
    'nullable': ?nullable?.toTfJson(),
    'ordinal_position': ?ordinalPosition?.toTfJson(),
    'primary_key': ?primaryKey?.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSalesforceExcludedObjects {
  const DatastreamStreamSalesforceExcludedObjects({required this.objects});

  final List<DatastreamStreamObjects> objects;

  @internal
  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects.objects` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamObjects {
  const DatastreamStreamObjects({this.objectName, this.fields});

  final TfArg<String>? objectName;

  final List<DatastreamStreamFields>? fields;

  @internal
  Map<String, Object?> encode() => {
    'object_name': ?objectName?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects.objects.fields` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamFields {
  const DatastreamStreamFields({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `backfill_all.spanner_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerExcludedObjects {
  const DatastreamStreamSpannerExcludedObjects({required this.schemas});

  final List<DatastreamStreamSpannerExcludedObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerExcludedObjectsSchemas {
  const DatastreamStreamSpannerExcludedObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamSpannerExcludedObjectsTables>? tables;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerExcludedObjectsTables {
  const DatastreamStreamSpannerExcludedObjectsTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<DatastreamStreamSpannerExcludedObjectsColumns>? columns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerExcludedObjectsColumns {
  const DatastreamStreamSpannerExcludedObjectsColumns({required this.column});

  final TfArg<String> column;

  @internal
  Map<String, Object?> encode() => {'column': column.toTfJson()};
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSqlServerExcludedObjects {
  const DatastreamStreamSqlServerExcludedObjects({required this.schemas});

  final List<DatastreamStreamSqlServerExcludedObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamSqlServerExcludedObjectsSchemas {
  const DatastreamStreamSqlServerExcludedObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamSqlServerExcludedObjectsTables>? tables;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamSqlServerExcludedObjectsTables {
  const DatastreamStreamSqlServerExcludedObjectsTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<DatastreamStreamSqlServerExcludedObjectsColumns>? columns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamSqlServerExcludedObjectsColumns {
  const DatastreamStreamSqlServerExcludedObjectsColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  @internal
  Map<String, Object?> encode() => {
    'column': ?column?.toTfJson(),
    'data_type': ?dataType?.toTfJson(),
  };
}

/// Typed helper for the `backfill_none` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillNone {
  const DatastreamStreamBackfillNone();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfig {
  const DatastreamStreamDestinationConfig({
    required this.destinationConnectionProfile,
    required this.system,
  });

  final TfArg<String> destinationConnectionProfile;

  final DatastreamStreamDestinationConfigSystem system;

  @internal
  Map<String, Object?> encode() => {
    'destination_connection_profile': destinationConnectionProfile.toTfJson(),
    ...system.encode(),
  };
}

/// Exactly one of `gcs_destination_config`, `bigquery_destination_config` on the `destination_config` block of `google_datastream_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gcsDestinationConfig(...)`.
sealed class DatastreamStreamDestinationConfigSystem {
  const DatastreamStreamDestinationConfigSystem();

  /// Sets `gcs_destination_config`.
  const factory DatastreamStreamDestinationConfigSystem.gcsDestinationConfig(
    DatastreamStreamGcsDestinationConfig gcsDestinationConfig,
  ) = DatastreamStreamDestinationConfigSystemGcsDestinationConfig;

  /// Sets `bigquery_destination_config`.
  const factory DatastreamStreamDestinationConfigSystem.bigqueryDestinationConfig(
    DatastreamStreamBigqueryDestinationConfig bigqueryDestinationConfig,
  ) = DatastreamStreamDestinationConfigSystemBigqueryDestinationConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamDestinationConfigSystem.gcsDestinationConfig] choice: sets `gcs_destination_config`.
final class DatastreamStreamDestinationConfigSystemGcsDestinationConfig
    extends DatastreamStreamDestinationConfigSystem {
  const DatastreamStreamDestinationConfigSystemGcsDestinationConfig(
    this.gcsDestinationConfig,
  );

  final DatastreamStreamGcsDestinationConfig gcsDestinationConfig;

  @internal
  @override
  String get blockKey => 'gcs_destination_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gcs_destination_config': gcsDestinationConfig.encode(),
  };
}

/// The [DatastreamStreamDestinationConfigSystem.bigqueryDestinationConfig] choice: sets `bigquery_destination_config`.
final class DatastreamStreamDestinationConfigSystemBigqueryDestinationConfig
    extends DatastreamStreamDestinationConfigSystem {
  const DatastreamStreamDestinationConfigSystemBigqueryDestinationConfig(
    this.bigqueryDestinationConfig,
  );

  final DatastreamStreamBigqueryDestinationConfig bigqueryDestinationConfig;

  @internal
  @override
  String get blockKey => 'bigquery_destination_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'bigquery_destination_config': bigqueryDestinationConfig.encode(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBigqueryDestinationConfig {
  const DatastreamStreamBigqueryDestinationConfig({
    this.dataFreshness,
    this.writeMode,
    this.blmtConfig,
    required this.dataset,
  });

  final TfArg<String>? dataFreshness;

  final DatastreamStreamWriteMode? writeMode;

  final DatastreamStreamBlmtConfig? blmtConfig;

  final DatastreamStreamDataset dataset;

  @internal
  Map<String, Object?> encode() => {
    'data_freshness': ?dataFreshness?.toTfJson(),
    ...?writeMode?.encode(),
    'blmt_config': ?blmtConfig?.encode(),
    ...dataset.encode(),
  };
}

/// Exactly one of `single_target_dataset`, `source_hierarchy_datasets` on the `destination_config.bigquery_destination_config` block of `google_datastream_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.singleTargetDataset(...)`.
sealed class DatastreamStreamDataset {
  const DatastreamStreamDataset();

  /// Sets `single_target_dataset`.
  const factory DatastreamStreamDataset.singleTargetDataset(
    DatastreamStreamSingleTargetDataset singleTargetDataset,
  ) = DatastreamStreamSingleTargetDatasetChoice;

  /// Sets `source_hierarchy_datasets`.
  const factory DatastreamStreamDataset.sourceHierarchyDatasets(
    DatastreamStreamSourceHierarchyDatasets sourceHierarchyDatasets,
  ) = DatastreamStreamDatasetSourceHierarchyDatasets;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamDataset.singleTargetDataset] choice: sets `single_target_dataset`.
final class DatastreamStreamSingleTargetDatasetChoice
    extends DatastreamStreamDataset {
  const DatastreamStreamSingleTargetDatasetChoice(this.singleTargetDataset);

  final DatastreamStreamSingleTargetDataset singleTargetDataset;

  @internal
  @override
  String get blockKey => 'single_target_dataset';

  @internal
  @override
  Map<String, Object?> encode() => {
    'single_target_dataset': singleTargetDataset.encode(),
  };
}

/// The [DatastreamStreamDataset.sourceHierarchyDatasets] choice: sets `source_hierarchy_datasets`.
final class DatastreamStreamDatasetSourceHierarchyDatasets
    extends DatastreamStreamDataset {
  const DatastreamStreamDatasetSourceHierarchyDatasets(
    this.sourceHierarchyDatasets,
  );

  final DatastreamStreamSourceHierarchyDatasets sourceHierarchyDatasets;

  @internal
  @override
  String get blockKey => 'source_hierarchy_datasets';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_hierarchy_datasets': sourceHierarchyDatasets.encode(),
  };
}

/// At most one of `merge`, `append_only` on the `destination_config.bigquery_destination_config` block of `google_datastream_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.merge(...)`.
sealed class DatastreamStreamWriteMode {
  const DatastreamStreamWriteMode();

  /// Sets `merge`.
  const factory DatastreamStreamWriteMode.merge(DatastreamStreamMerge merge) =
      DatastreamStreamWriteModeMerge;

  /// Sets `append_only`.
  const factory DatastreamStreamWriteMode.appendOnly(
    DatastreamStreamAppendOnly appendOnly,
  ) = DatastreamStreamWriteModeAppendOnly;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamWriteMode.merge] choice: sets `merge`.
final class DatastreamStreamWriteModeMerge extends DatastreamStreamWriteMode {
  const DatastreamStreamWriteModeMerge(this.merge);

  final DatastreamStreamMerge merge;

  @internal
  @override
  String get blockKey => 'merge';

  @internal
  @override
  Map<String, Object?> encode() => {'merge': merge.encode()};
}

/// The [DatastreamStreamWriteMode.appendOnly] choice: sets `append_only`.
final class DatastreamStreamWriteModeAppendOnly
    extends DatastreamStreamWriteMode {
  const DatastreamStreamWriteModeAppendOnly(this.appendOnly);

  final DatastreamStreamAppendOnly appendOnly;

  @internal
  @override
  String get blockKey => 'append_only';

  @internal
  @override
  Map<String, Object?> encode() => {'append_only': appendOnly.encode()};
}

/// Typed helper for the `destination_config.bigquery_destination_config.append_only` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamAppendOnly {
  const DatastreamStreamAppendOnly();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.bigquery_destination_config.blmt_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBlmtConfig {
  const DatastreamStreamBlmtConfig({
    required this.bucket,
    required this.connectionName,
    required this.fileFormat,
    this.rootPath,
    required this.tableFormat,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String> connectionName;

  final TfArg<String> fileFormat;

  final TfArg<String>? rootPath;

  final TfArg<String> tableFormat;

  @internal
  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'connection_name': connectionName.toTfJson(),
    'file_format': fileFormat.toTfJson(),
    'root_path': ?rootPath?.toTfJson(),
    'table_format': tableFormat.toTfJson(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.merge` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMerge {
  const DatastreamStreamMerge();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.bigquery_destination_config.single_target_dataset` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSingleTargetDataset {
  const DatastreamStreamSingleTargetDataset({required this.datasetId});

  final RefTo<GoogleBigqueryDataset> datasetId;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.source_hierarchy_datasets` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceHierarchyDatasets {
  const DatastreamStreamSourceHierarchyDatasets({
    this.projectId,
    required this.datasetTemplate,
  });

  final TfArg<String>? projectId;

  final DatastreamStreamDatasetTemplate datasetTemplate;

  @internal
  Map<String, Object?> encode() => {
    'project_id': ?projectId?.toTfJson(),
    'dataset_template': datasetTemplate.encode(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDatasetTemplate {
  const DatastreamStreamDatasetTemplate({
    this.datasetIdPrefix,
    this.kmsKeyName,
    required this.location,
  });

  final TfArg<String>? datasetIdPrefix;

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String> location;

  @internal
  Map<String, Object?> encode() => {
    'dataset_id_prefix': ?datasetIdPrefix?.toTfJson(),
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'location': location.toTfJson(),
  };
}

/// Typed helper for the `destination_config.gcs_destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamGcsDestinationConfig {
  const DatastreamStreamGcsDestinationConfig({
    this.fileRotationInterval,
    this.fileRotationMb,
    this.path,
    required this.fileFormat,
  });

  final TfArg<String>? fileRotationInterval;

  final TfArg<num>? fileRotationMb;

  final TfArg<String>? path;

  final DatastreamStreamFileFormat fileFormat;

  @internal
  Map<String, Object?> encode() => {
    'file_rotation_interval': ?fileRotationInterval?.toTfJson(),
    'file_rotation_mb': ?fileRotationMb?.toTfJson(),
    'path': ?path?.toTfJson(),
    ...fileFormat.encode(),
  };
}

/// Exactly one of `avro_file_format`, `json_file_format` on the `destination_config.gcs_destination_config` block of `google_datastream_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.avroFileFormat(...)`.
sealed class DatastreamStreamFileFormat {
  const DatastreamStreamFileFormat();

  /// Sets `avro_file_format`.
  const factory DatastreamStreamFileFormat.avroFileFormat(
    DatastreamStreamAvroFileFormat avroFileFormat,
  ) = DatastreamStreamAvroFileFormatChoice;

  /// Sets `json_file_format`.
  const factory DatastreamStreamFileFormat.jsonFileFormat(
    DatastreamStreamJsonFileFormat jsonFileFormat,
  ) = DatastreamStreamJsonFileFormatChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamFileFormat.avroFileFormat] choice: sets `avro_file_format`.
final class DatastreamStreamAvroFileFormatChoice
    extends DatastreamStreamFileFormat {
  const DatastreamStreamAvroFileFormatChoice(this.avroFileFormat);

  final DatastreamStreamAvroFileFormat avroFileFormat;

  @internal
  @override
  String get blockKey => 'avro_file_format';

  @internal
  @override
  Map<String, Object?> encode() => {
    'avro_file_format': avroFileFormat.encode(),
  };
}

/// The [DatastreamStreamFileFormat.jsonFileFormat] choice: sets `json_file_format`.
final class DatastreamStreamJsonFileFormatChoice
    extends DatastreamStreamFileFormat {
  const DatastreamStreamJsonFileFormatChoice(this.jsonFileFormat);

  final DatastreamStreamJsonFileFormat jsonFileFormat;

  @internal
  @override
  String get blockKey => 'json_file_format';

  @internal
  @override
  Map<String, Object?> encode() => {
    'json_file_format': jsonFileFormat.encode(),
  };
}

/// Typed helper for the `destination_config.gcs_destination_config.avro_file_format` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamAvroFileFormat {
  const DatastreamStreamAvroFileFormat();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.gcs_destination_config.json_file_format` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamJsonFileFormat {
  const DatastreamStreamJsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  final DatastreamStreamCompression? compression;

  final DatastreamStreamSchemaFileFormat? schemaFileFormat;

  @internal
  Map<String, Object?> encode() => {
    'compression': ?compression?.toTfJson(),
    'schema_file_format': ?schemaFileFormat?.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
extension type const DatastreamStreamCompression._(TfArg<String> _)
    implements TfArg<String> {
  DatastreamStreamCompression.variable(String name)
    : this._(TfArg.variable(name));
  DatastreamStreamCompression.expression(String template)
    : this._(TfArg.expression(template));
  const DatastreamStreamCompression.arg(TfArg<String> arg) : this._(arg);

  static const noCompression = DatastreamStreamCompression._(
    TfArgLiteral('NO_COMPRESSION'),
  );
  static const gzip = DatastreamStreamCompression._(TfArgLiteral('GZIP'));

  static const List<DatastreamStreamCompression> values = [noCompression, gzip];
}

/// `schema_file_format` — derived from the provider schema description.
extension type const DatastreamStreamSchemaFileFormat._(TfArg<String> _)
    implements TfArg<String> {
  DatastreamStreamSchemaFileFormat.variable(String name)
    : this._(TfArg.variable(name));
  DatastreamStreamSchemaFileFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DatastreamStreamSchemaFileFormat.arg(TfArg<String> arg) : this._(arg);

  static const noSchemaFile = DatastreamStreamSchemaFileFormat._(
    TfArgLiteral('NO_SCHEMA_FILE'),
  );
  static const avroSchemaFile = DatastreamStreamSchemaFileFormat._(
    TfArgLiteral('AVRO_SCHEMA_FILE'),
  );

  static const List<DatastreamStreamSchemaFileFormat> values = [
    noSchemaFile,
    avroSchemaFile,
  ];
}

/// Typed helper for the `rule_sets` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSets {
  const DatastreamStreamRuleSets({
    required this.customizationRules,
    required this.objectFilter,
  });

  final List<DatastreamStreamCustomizationRules> customizationRules;

  final DatastreamStreamObjectFilter objectFilter;

  @internal
  Map<String, Object?> encode() => {
    'customization_rules': [for (final e in customizationRules) e.encode()],
    'object_filter': objectFilter.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamCustomizationRules {
  const DatastreamStreamCustomizationRules({
    this.bigqueryClustering,
    this.bigqueryPartitioning,
  });

  final DatastreamStreamBigqueryClustering? bigqueryClustering;

  final DatastreamStreamBigqueryPartitioning? bigqueryPartitioning;

  @internal
  Map<String, Object?> encode() => {
    'bigquery_clustering': ?bigqueryClustering?.encode(),
    'bigquery_partitioning': ?bigqueryPartitioning?.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_clustering` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBigqueryClustering {
  const DatastreamStreamBigqueryClustering({required this.columns});

  final TfArg<List<String>> columns;

  @internal
  Map<String, Object?> encode() => {'columns': columns.toTfJson()};
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBigqueryPartitioning {
  const DatastreamStreamBigqueryPartitioning({
    this.requirePartitionFilter,
    this.ingestionTimePartition,
    this.integerRangePartition,
    this.timeUnitPartition,
  });

  final TfArg<bool>? requirePartitionFilter;

  final DatastreamStreamIngestionTimePartition? ingestionTimePartition;

  final DatastreamStreamIntegerRangePartition? integerRangePartition;

  final DatastreamStreamTimeUnitPartition? timeUnitPartition;

  @internal
  Map<String, Object?> encode() => {
    'require_partition_filter': ?requirePartitionFilter?.toTfJson(),
    'ingestion_time_partition': ?ingestionTimePartition?.encode(),
    'integer_range_partition': ?integerRangePartition?.encode(),
    'time_unit_partition': ?timeUnitPartition?.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning.ingestion_time_partition` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamIngestionTimePartition {
  const DatastreamStreamIngestionTimePartition({
    this.partitioningTimeGranularity,
  });

  final DatastreamStreamPartitioningTimeGranularity?
  partitioningTimeGranularity;

  @internal
  Map<String, Object?> encode() => {
    'partitioning_time_granularity': ?partitioningTimeGranularity?.toTfJson(),
  };
}

/// `partitioning_time_granularity` — derived from the provider schema description.
extension type const DatastreamStreamPartitioningTimeGranularity._(
  TfArg<String> _
) implements TfArg<String> {
  DatastreamStreamPartitioningTimeGranularity.variable(String name)
    : this._(TfArg.variable(name));
  DatastreamStreamPartitioningTimeGranularity.expression(String template)
    : this._(TfArg.expression(template));
  const DatastreamStreamPartitioningTimeGranularity.arg(TfArg<String> arg)
    : this._(arg);

  static const partitioningTimeGranularityUnspecified =
      DatastreamStreamPartitioningTimeGranularity._(
        TfArgLiteral('PARTITIONING_TIME_GRANULARITY_UNSPECIFIED'),
      );
  static const partitioningTimeGranularityHour =
      DatastreamStreamPartitioningTimeGranularity._(
        TfArgLiteral('PARTITIONING_TIME_GRANULARITY_HOUR'),
      );
  static const partitioningTimeGranularityDay =
      DatastreamStreamPartitioningTimeGranularity._(
        TfArgLiteral('PARTITIONING_TIME_GRANULARITY_DAY'),
      );
  static const partitioningTimeGranularityMonth =
      DatastreamStreamPartitioningTimeGranularity._(
        TfArgLiteral('PARTITIONING_TIME_GRANULARITY_MONTH'),
      );
  static const partitioningTimeGranularityYear =
      DatastreamStreamPartitioningTimeGranularity._(
        TfArgLiteral('PARTITIONING_TIME_GRANULARITY_YEAR'),
      );

  static const List<DatastreamStreamPartitioningTimeGranularity> values = [
    partitioningTimeGranularityUnspecified,
    partitioningTimeGranularityHour,
    partitioningTimeGranularityDay,
    partitioningTimeGranularityMonth,
    partitioningTimeGranularityYear,
  ];
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning.integer_range_partition` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamIntegerRangePartition {
  const DatastreamStreamIntegerRangePartition({
    required this.column,
    required this.end,
    required this.interval,
    required this.start,
  });

  final TfArg<String> column;

  final TfArg<num> end;

  final TfArg<num> interval;

  final TfArg<num> start;

  @internal
  Map<String, Object?> encode() => {
    'column': column.toTfJson(),
    'end': end.toTfJson(),
    'interval': interval.toTfJson(),
    'start': start.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning.time_unit_partition` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamTimeUnitPartition {
  const DatastreamStreamTimeUnitPartition({
    required this.column,
    this.partitioningTimeGranularity,
  });

  final TfArg<String> column;

  final DatastreamStreamPartitioningTimeGranularity?
  partitioningTimeGranularity;

  @internal
  Map<String, Object?> encode() => {
    'column': column.toTfJson(),
    'partitioning_time_granularity': ?partitioningTimeGranularity?.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamObjectFilter {
  const DatastreamStreamObjectFilter({this.sourceObjectIdentifier});

  final DatastreamStreamSourceObjectIdentifier? sourceObjectIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'source_object_identifier': ?sourceObjectIdentifier?.encode(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceObjectIdentifier {
  const DatastreamStreamSourceObjectIdentifier({
    this.mongodbIdentifier,
    this.mysqlIdentifier,
    this.oracleIdentifier,
    this.postgresqlIdentifier,
    this.salesforceIdentifier,
    this.spannerIdentifier,
    this.sqlServerIdentifier,
  });

  final DatastreamStreamMongodbIdentifier? mongodbIdentifier;

  final DatastreamStreamMysqlIdentifier? mysqlIdentifier;

  final DatastreamStreamOracleIdentifier? oracleIdentifier;

  final DatastreamStreamPostgresqlIdentifier? postgresqlIdentifier;

  final DatastreamStreamSalesforceIdentifier? salesforceIdentifier;

  final DatastreamStreamSpannerIdentifier? spannerIdentifier;

  final DatastreamStreamSqlServerIdentifier? sqlServerIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'mongodb_identifier': ?mongodbIdentifier?.encode(),
    'mysql_identifier': ?mysqlIdentifier?.encode(),
    'oracle_identifier': ?oracleIdentifier?.encode(),
    'postgresql_identifier': ?postgresqlIdentifier?.encode(),
    'salesforce_identifier': ?salesforceIdentifier?.encode(),
    'spanner_identifier': ?spannerIdentifier?.encode(),
    'sql_server_identifier': ?sqlServerIdentifier?.encode(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.mongodb_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMongodbIdentifier {
  const DatastreamStreamMongodbIdentifier({
    required this.collection,
    required this.database,
  });

  final TfArg<String> collection;

  final TfArg<String> database;

  @internal
  Map<String, Object?> encode() => {
    'collection': collection.toTfJson(),
    'database': database.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.mysql_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMysqlIdentifier {
  const DatastreamStreamMysqlIdentifier({
    required this.database,
    required this.table,
  });

  final TfArg<String> database;

  final TfArg<String> table;

  @internal
  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.oracle_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamOracleIdentifier {
  const DatastreamStreamOracleIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.postgresql_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamPostgresqlIdentifier {
  const DatastreamStreamPostgresqlIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.salesforce_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSalesforceIdentifier {
  const DatastreamStreamSalesforceIdentifier({required this.objectName});

  final TfArg<String> objectName;

  @internal
  Map<String, Object?> encode() => {'object_name': objectName.toTfJson()};
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.spanner_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerIdentifier {
  const DatastreamStreamSpannerIdentifier({this.schema, required this.table});

  final TfArg<String>? schema;

  final TfArg<String> table;

  @internal
  Map<String, Object?> encode() => {
    'schema': ?schema?.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.sql_server_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSqlServerIdentifier {
  const DatastreamStreamSqlServerIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfig {
  const DatastreamStreamSourceConfig({
    required this.sourceConnectionProfile,
    required this.system,
  });

  final TfArg<String> sourceConnectionProfile;

  final DatastreamStreamSourceConfigSystem system;

  @internal
  Map<String, Object?> encode() => {
    'source_connection_profile': sourceConnectionProfile.toTfJson(),
    ...system.encode(),
  };
}

/// Exactly one of `mysql_source_config`, `oracle_source_config`, `postgresql_source_config`, `sql_server_source_config`, `salesforce_source_config`, `spanner_source_config`, `mongodb_source_config` on the `source_config` block of `google_datastream_stream`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.mysqlSourceConfig(...)`.
sealed class DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystem();

  /// Sets `mysql_source_config`.
  const factory DatastreamStreamSourceConfigSystem.mysqlSourceConfig(
    DatastreamStreamMysqlSourceConfig mysqlSourceConfig,
  ) = DatastreamStreamSourceConfigSystemMysqlSourceConfig;

  /// Sets `oracle_source_config`.
  const factory DatastreamStreamSourceConfigSystem.oracleSourceConfig(
    DatastreamStreamOracleSourceConfig oracleSourceConfig,
  ) = DatastreamStreamSourceConfigSystemOracleSourceConfig;

  /// Sets `postgresql_source_config`.
  const factory DatastreamStreamSourceConfigSystem.postgresqlSourceConfig(
    DatastreamStreamPostgresqlSourceConfig postgresqlSourceConfig,
  ) = DatastreamStreamSourceConfigSystemPostgresqlSourceConfig;

  /// Sets `sql_server_source_config`.
  const factory DatastreamStreamSourceConfigSystem.sqlServerSourceConfig(
    DatastreamStreamSqlServerSourceConfig sqlServerSourceConfig,
  ) = DatastreamStreamSourceConfigSystemSqlServerSourceConfig;

  /// Sets `salesforce_source_config`.
  const factory DatastreamStreamSourceConfigSystem.salesforceSourceConfig(
    DatastreamStreamSalesforceSourceConfig salesforceSourceConfig,
  ) = DatastreamStreamSourceConfigSystemSalesforceSourceConfig;

  /// Sets `spanner_source_config`.
  const factory DatastreamStreamSourceConfigSystem.spannerSourceConfig(
    DatastreamStreamSpannerSourceConfig spannerSourceConfig,
  ) = DatastreamStreamSourceConfigSystemSpannerSourceConfig;

  /// Sets `mongodb_source_config`.
  const factory DatastreamStreamSourceConfigSystem.mongodbSourceConfig(
    DatastreamStreamMongodbSourceConfig mongodbSourceConfig,
  ) = DatastreamStreamSourceConfigSystemMongodbSourceConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamSourceConfigSystem.mysqlSourceConfig] choice: sets `mysql_source_config`.
final class DatastreamStreamSourceConfigSystemMysqlSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemMysqlSourceConfig(
    this.mysqlSourceConfig,
  );

  final DatastreamStreamMysqlSourceConfig mysqlSourceConfig;

  @internal
  @override
  String get blockKey => 'mysql_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'mysql_source_config': mysqlSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.oracleSourceConfig] choice: sets `oracle_source_config`.
final class DatastreamStreamSourceConfigSystemOracleSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemOracleSourceConfig(
    this.oracleSourceConfig,
  );

  final DatastreamStreamOracleSourceConfig oracleSourceConfig;

  @internal
  @override
  String get blockKey => 'oracle_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'oracle_source_config': oracleSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.postgresqlSourceConfig] choice: sets `postgresql_source_config`.
final class DatastreamStreamSourceConfigSystemPostgresqlSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemPostgresqlSourceConfig(
    this.postgresqlSourceConfig,
  );

  final DatastreamStreamPostgresqlSourceConfig postgresqlSourceConfig;

  @internal
  @override
  String get blockKey => 'postgresql_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'postgresql_source_config': postgresqlSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.sqlServerSourceConfig] choice: sets `sql_server_source_config`.
final class DatastreamStreamSourceConfigSystemSqlServerSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemSqlServerSourceConfig(
    this.sqlServerSourceConfig,
  );

  final DatastreamStreamSqlServerSourceConfig sqlServerSourceConfig;

  @internal
  @override
  String get blockKey => 'sql_server_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'sql_server_source_config': sqlServerSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.salesforceSourceConfig] choice: sets `salesforce_source_config`.
final class DatastreamStreamSourceConfigSystemSalesforceSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemSalesforceSourceConfig(
    this.salesforceSourceConfig,
  );

  final DatastreamStreamSalesforceSourceConfig salesforceSourceConfig;

  @internal
  @override
  String get blockKey => 'salesforce_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'salesforce_source_config': salesforceSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.spannerSourceConfig] choice: sets `spanner_source_config`.
final class DatastreamStreamSourceConfigSystemSpannerSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemSpannerSourceConfig(
    this.spannerSourceConfig,
  );

  final DatastreamStreamSpannerSourceConfig spannerSourceConfig;

  @internal
  @override
  String get blockKey => 'spanner_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'spanner_source_config': spannerSourceConfig.encode(),
  };
}

/// The [DatastreamStreamSourceConfigSystem.mongodbSourceConfig] choice: sets `mongodb_source_config`.
final class DatastreamStreamSourceConfigSystemMongodbSourceConfig
    extends DatastreamStreamSourceConfigSystem {
  const DatastreamStreamSourceConfigSystemMongodbSourceConfig(
    this.mongodbSourceConfig,
  );

  final DatastreamStreamMongodbSourceConfig mongodbSourceConfig;

  @internal
  @override
  String get blockKey => 'mongodb_source_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'mongodb_source_config': mongodbSourceConfig.encode(),
  };
}

/// Typed helper for the `source_config.mongodb_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMongodbSourceConfig {
  const DatastreamStreamMongodbSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final DatastreamStreamMongodbSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamMongodbSourceConfigIncludeObjects? includeObjects;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMongodbSourceConfigExcludeObjects {
  const DatastreamStreamMongodbSourceConfigExcludeObjects({this.databases});

  final List<DatastreamStreamExcludeObjectsDatabases>? databases;

  @internal
  Map<String, Object?> encode() => {
    if (databases != null)
      'databases': [for (final e in databases!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects.databases` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamExcludeObjectsDatabases {
  const DatastreamStreamExcludeObjectsDatabases({
    this.database,
    this.collections,
  });

  final TfArg<String>? database;

  final List<DatastreamStreamDatabasesCollections>? collections;

  @internal
  Map<String, Object?> encode() => {
    'database': ?database?.toTfJson(),
    if (collections != null)
      'collections': [for (final e in collections!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects.databases.collections` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamDatabasesCollections {
  const DatastreamStreamDatabasesCollections({this.collection, this.fields});

  final TfArg<String>? collection;

  final List<DatastreamStreamCollectionsFields>? fields;

  @internal
  Map<String, Object?> encode() => {
    'collection': ?collection?.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMongodbSourceConfigIncludeObjects {
  const DatastreamStreamMongodbSourceConfigIncludeObjects({this.databases});

  final List<DatastreamStreamExcludeObjectsDatabases>? databases;

  @internal
  Map<String, Object?> encode() => {
    if (databases != null)
      'databases': [for (final e in databases!) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMysqlSourceConfig {
  const DatastreamStreamMysqlSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.cdcMethod,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamCdcMethod? cdcMethod;

  final DatastreamStreamMysqlSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamMysqlSourceConfigIncludeObjects? includeObjects;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'max_concurrent_cdc_tasks': ?maxConcurrentCdcTasks?.toTfJson(),
    ...?cdcMethod?.encode(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
  };
}

/// At most one of `binary_log_position`, `gtid` on the `source_config.mysql_source_config` block of `google_datastream_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.binaryLogPosition(...)`.
sealed class DatastreamStreamCdcMethod {
  const DatastreamStreamCdcMethod();

  /// Sets `binary_log_position`.
  const factory DatastreamStreamCdcMethod.binaryLogPosition(
    DatastreamStreamBinaryLogPosition binaryLogPosition,
  ) = DatastreamStreamCdcMethodBinaryLogPosition;

  /// Sets `gtid`.
  const factory DatastreamStreamCdcMethod.gtid(DatastreamStreamGtid gtid) =
      DatastreamStreamCdcMethodGtid;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DatastreamStreamCdcMethod.binaryLogPosition] choice: sets `binary_log_position`.
final class DatastreamStreamCdcMethodBinaryLogPosition
    extends DatastreamStreamCdcMethod {
  const DatastreamStreamCdcMethodBinaryLogPosition(this.binaryLogPosition);

  final DatastreamStreamBinaryLogPosition binaryLogPosition;

  @internal
  @override
  String get blockKey => 'binary_log_position';

  @internal
  @override
  Map<String, Object?> encode() => {
    'binary_log_position': binaryLogPosition.encode(),
  };
}

/// The [DatastreamStreamCdcMethod.gtid] choice: sets `gtid`.
final class DatastreamStreamCdcMethodGtid extends DatastreamStreamCdcMethod {
  const DatastreamStreamCdcMethodGtid(this.gtid);

  final DatastreamStreamGtid gtid;

  @internal
  @override
  String get blockKey => 'gtid';

  @internal
  @override
  Map<String, Object?> encode() => {'gtid': gtid.encode()};
}

/// Typed helper for the `source_config.mysql_source_config.binary_log_position` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBinaryLogPosition {
  const DatastreamStreamBinaryLogPosition();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.mysql_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMysqlSourceConfigExcludeObjects {
  const DatastreamStreamMysqlSourceConfigExcludeObjects({
    required this.mysqlDatabases,
  });

  final List<DatastreamStreamMysqlDatabases> mysqlDatabases;

  @internal
  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.gtid` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamGtid {
  const DatastreamStreamGtid();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.mysql_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamMysqlSourceConfigIncludeObjects {
  const DatastreamStreamMysqlSourceConfigIncludeObjects({
    required this.mysqlDatabases,
  });

  final List<DatastreamStreamMysqlDatabases> mysqlDatabases;

  @internal
  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamOracleSourceConfig {
  const DatastreamStreamOracleSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.dropLargeObjects,
    this.excludeObjects,
    this.includeObjects,
    this.streamLargeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamDropLargeObjects? dropLargeObjects;

  final DatastreamStreamOracleSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamOracleSourceConfigIncludeObjects? includeObjects;

  final DatastreamStreamLargeObjects? streamLargeObjects;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'max_concurrent_cdc_tasks': ?maxConcurrentCdcTasks?.toTfJson(),
    'drop_large_objects': ?dropLargeObjects?.encode(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
    'stream_large_objects': ?streamLargeObjects?.encode(),
  };
}

/// Typed helper for the `source_config.oracle_source_config.drop_large_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDropLargeObjects {
  const DatastreamStreamDropLargeObjects();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.oracle_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamOracleSourceConfigExcludeObjects {
  const DatastreamStreamOracleSourceConfigExcludeObjects({
    required this.oracleSchemas,
  });

  final List<DatastreamStreamOracleSchemas> oracleSchemas;

  @internal
  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamOracleSourceConfigIncludeObjects {
  const DatastreamStreamOracleSourceConfigIncludeObjects({
    required this.oracleSchemas,
  });

  final List<DatastreamStreamOracleSchemas> oracleSchemas;

  @internal
  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.stream_large_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamLargeObjects {
  const DatastreamStreamLargeObjects();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.postgresql_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamPostgresqlSourceConfig {
  const DatastreamStreamPostgresqlSourceConfig({
    this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<String> publication;

  final TfArg<String> replicationSlot;

  final DatastreamStreamPostgresqlSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamPostgresqlSourceConfigIncludeObjects? includeObjects;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'publication': publication.toTfJson(),
    'replication_slot': replicationSlot.toTfJson(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
  };
}

/// Typed helper for the `source_config.postgresql_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamPostgresqlSourceConfigExcludeObjects {
  const DatastreamStreamPostgresqlSourceConfigExcludeObjects({
    required this.postgresqlSchemas,
  });

  final List<DatastreamStreamPostgresqlSchemas> postgresqlSchemas;

  @internal
  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamPostgresqlSourceConfigIncludeObjects {
  const DatastreamStreamPostgresqlSourceConfigIncludeObjects({
    required this.postgresqlSchemas,
  });

  final List<DatastreamStreamPostgresqlSchemas> postgresqlSchemas;

  @internal
  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSalesforceSourceConfig {
  const DatastreamStreamSalesforceSourceConfig({
    required this.pollingInterval,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<String> pollingInterval;

  final DatastreamStreamSalesforceSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamSalesforceSourceConfigIncludeObjects? includeObjects;

  @internal
  Map<String, Object?> encode() => {
    'polling_interval': pollingInterval.toTfJson(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
  };
}

/// Typed helper for the `source_config.salesforce_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSalesforceSourceConfigExcludeObjects {
  const DatastreamStreamSalesforceSourceConfigExcludeObjects({
    required this.objects,
  });

  final List<DatastreamStreamObjects> objects;

  @internal
  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSalesforceSourceConfigIncludeObjects {
  const DatastreamStreamSalesforceSourceConfigIncludeObjects({
    required this.objects,
  });

  final List<DatastreamStreamObjects> objects;

  @internal
  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerSourceConfig {
  const DatastreamStreamSpannerSourceConfig({
    this.backfillDataBoostEnabled,
    this.changeStreamName,
    this.fgacRole,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.spannerRpcPriority,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<bool>? backfillDataBoostEnabled;

  final TfArg<String>? changeStreamName;

  final TfArg<String>? fgacRole;

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamSpannerRpcPriority? spannerRpcPriority;

  final DatastreamStreamSpannerSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamSpannerSourceConfigIncludeObjects? includeObjects;

  @internal
  Map<String, Object?> encode() => {
    'backfill_data_boost_enabled': ?backfillDataBoostEnabled?.toTfJson(),
    'change_stream_name': ?changeStreamName?.toTfJson(),
    'fgac_role': ?fgacRole?.toTfJson(),
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'max_concurrent_cdc_tasks': ?maxConcurrentCdcTasks?.toTfJson(),
    'spanner_rpc_priority': ?spannerRpcPriority?.toTfJson(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
  };
}

/// `spanner_rpc_priority` — derived from the provider schema description.
extension type const DatastreamStreamSpannerRpcPriority._(TfArg<String> _)
    implements TfArg<String> {
  DatastreamStreamSpannerRpcPriority.variable(String name)
    : this._(TfArg.variable(name));
  DatastreamStreamSpannerRpcPriority.expression(String template)
    : this._(TfArg.expression(template));
  const DatastreamStreamSpannerRpcPriority.arg(TfArg<String> arg) : this._(arg);

  static const low = DatastreamStreamSpannerRpcPriority._(TfArgLiteral('LOW'));
  static const medium = DatastreamStreamSpannerRpcPriority._(
    TfArgLiteral('MEDIUM'),
  );
  static const high = DatastreamStreamSpannerRpcPriority._(
    TfArgLiteral('HIGH'),
  );

  static const List<DatastreamStreamSpannerRpcPriority> values = [
    low,
    medium,
    high,
  ];
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerSourceConfigExcludeObjects {
  const DatastreamStreamSpannerSourceConfigExcludeObjects({
    required this.schemas,
  });

  final List<DatastreamStreamExcludeObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamExcludeObjectsSchemas {
  const DatastreamStreamExcludeObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamExcludeObjectsTables>? tables;

  @internal
  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamExcludeObjectsTables {
  const DatastreamStreamExcludeObjectsTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<DatastreamStreamExcludeObjectsColumns>? columns;

  @internal
  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DatastreamStreamExcludeObjectsColumns {
  const DatastreamStreamExcludeObjectsColumns({this.column});

  final TfArg<String>? column;

  @internal
  Map<String, Object?> encode() => {'column': ?column?.toTfJson()};
}

/// Typed helper for the `source_config.spanner_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSpannerSourceConfigIncludeObjects {
  const DatastreamStreamSpannerSourceConfigIncludeObjects({
    required this.schemas,
  });

  final List<DatastreamStreamExcludeObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSqlServerSourceConfig {
  const DatastreamStreamSqlServerSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.changeTables,
    this.excludeObjects,
    this.includeObjects,
    this.transactionLogs,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamChangeTables? changeTables;

  final DatastreamStreamSqlServerSourceConfigExcludeObjects? excludeObjects;

  final DatastreamStreamSqlServerSourceConfigIncludeObjects? includeObjects;

  final DatastreamStreamTransactionLogs? transactionLogs;

  @internal
  Map<String, Object?> encode() => {
    'max_concurrent_backfill_tasks': ?maxConcurrentBackfillTasks?.toTfJson(),
    'max_concurrent_cdc_tasks': ?maxConcurrentCdcTasks?.toTfJson(),
    'change_tables': ?changeTables?.encode(),
    'exclude_objects': ?excludeObjects?.encode(),
    'include_objects': ?includeObjects?.encode(),
    'transaction_logs': ?transactionLogs?.encode(),
  };
}

/// Typed helper for the `source_config.sql_server_source_config.change_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamChangeTables {
  const DatastreamStreamChangeTables();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.sql_server_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSqlServerSourceConfigExcludeObjects {
  const DatastreamStreamSqlServerSourceConfigExcludeObjects({
    required this.schemas,
  });

  final List<DatastreamStreamSqlServerExcludedObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSqlServerSourceConfigIncludeObjects {
  const DatastreamStreamSqlServerSourceConfigIncludeObjects({
    required this.schemas,
  });

  final List<DatastreamStreamSqlServerExcludedObjectsSchemas> schemas;

  @internal
  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.transaction_logs` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamTransactionLogs {
  const DatastreamStreamTransactionLogs();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_datastream_stream`.
///
/// A resource representing streaming data from a source to a destination.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatastreamStream extends Resource {
  static const String tfType = 'google_datastream_stream';

  GoogleDatastreamStream(
    super.localName, {
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? customerManagedEncryptionKey,
    TfArg<String>? deletionPolicy,
    DatastreamStreamDesiredState? desiredState,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> streamId,
    required DatastreamStreamBackfill backfill,
    required DatastreamStreamDestinationConfig destinationConfig,
    List<DatastreamStreamRuleSets>? ruleSets,
    required DatastreamStreamSourceConfig sourceConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_without_validation': ?createWithoutValidation,
           'customer_managed_encryption_key': ?customerManagedEncryptionKey,
           'deletion_policy': ?deletionPolicy,
           'desired_state': ?desiredState,
           'display_name': displayName,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'stream_id': streamId,
           ...backfill.argMap,
           'destination_config': TfArg.literal(destinationConfig.encode()),
           if (ruleSets != null)
             'rule_sets': TfArg.literal([for (final e in ruleSets) e.encode()]),
           'source_config': TfArg.literal(sourceConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDatastreamStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatastreamStream>`.
  RefTo<GoogleDatastreamStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `create_without_validation` attribute.
  TfRef<bool> get createWithoutValidation =>
      TfRef.attribute<bool>(this, 'create_without_validation');

  /// Reference to `customer_managed_encryption_key` attribute.
  TfRef<String> get customerManagedEncryptionKey =>
      TfRef.attribute<String>(this, 'customer_managed_encryption_key');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `stream_id` attribute.
  TfRef<String> get streamId => TfRef.attribute<String>(this, 'stream_id');
}
