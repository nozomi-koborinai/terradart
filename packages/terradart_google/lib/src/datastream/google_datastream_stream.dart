// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_datastream_stream`.
const Set<String> _googleDatastreamStreamSensitive = <String>{};

/// Datastream Stream Desired enum for `desired_state`.
enum DatastreamStreamDesiredState implements TerraformEnum {
  notStarted('NOT_STARTED'),
  running('RUNNING'),
  paused('PAUSED');

  const DatastreamStreamDesiredState(this.terraformValue);
  @override
  final String terraformValue;
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

  final DatastreamStreamBackfillAllMongodbExcludedObjects?
  mongodbExcludedObjects;

  final DatastreamStreamBackfillAllMysqlExcludedObjects? mysqlExcludedObjects;

  final DatastreamStreamBackfillAllOracleExcludedObjects? oracleExcludedObjects;

  final DatastreamStreamBackfillAllPostgresqlExcludedObjects?
  postgresqlExcludedObjects;

  final DatastreamStreamBackfillAllSalesforceExcludedObjects?
  salesforceExcludedObjects;

  final DatastreamStreamBackfillAllSpannerExcludedObjects?
  spannerExcludedObjects;

  final DatastreamStreamBackfillAllSqlServerExcludedObjects?
  sqlServerExcludedObjects;

  Map<String, Object?> encode() => {
    if (mongodbExcludedObjects != null)
      'mongodb_excluded_objects': mongodbExcludedObjects!.encode(),
    if (mysqlExcludedObjects != null)
      'mysql_excluded_objects': mysqlExcludedObjects!.encode(),
    if (oracleExcludedObjects != null)
      'oracle_excluded_objects': oracleExcludedObjects!.encode(),
    if (postgresqlExcludedObjects != null)
      'postgresql_excluded_objects': postgresqlExcludedObjects!.encode(),
    if (salesforceExcludedObjects != null)
      'salesforce_excluded_objects': salesforceExcludedObjects!.encode(),
    if (spannerExcludedObjects != null)
      'spanner_excluded_objects': spannerExcludedObjects!.encode(),
    if (sqlServerExcludedObjects != null)
      'sql_server_excluded_objects': sqlServerExcludedObjects!.encode(),
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMongodbExcludedObjects {
  const DatastreamStreamBackfillAllMongodbExcludedObjects({
    required this.databases,
  });

  final List<DatastreamStreamBackfillAllMongodbExcludedObjectsDatabases>
  databases;

  Map<String, Object?> encode() => {
    'databases': [for (final e in databases) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMongodbExcludedObjectsDatabases {
  const DatastreamStreamBackfillAllMongodbExcludedObjectsDatabases({
    required this.database,
    this.collections,
  });

  final TfArg<String> database;

  final List<
    DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollections
  >?
  collections;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (collections != null)
      'collections': [for (final e in collections!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases.collections` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollections {
  const DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollections({
    required this.collection,
    this.fields,
  });

  final TfArg<String> collection;

  final List<
    DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollectionsFields
  >?
  fields;

  Map<String, Object?> encode() => {
    'collection': collection.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mongodb_excluded_objects.databases.collections.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollectionsFields {
  const DatastreamStreamBackfillAllMongodbExcludedObjectsDatabasesCollectionsFields({
    this.field,
  });

  final TfArg<String>? field;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMysqlExcludedObjects {
  const DatastreamStreamBackfillAllMysqlExcludedObjects({
    required this.mysqlDatabases,
  });

  final List<DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabases>
  mysqlDatabases;

  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabases {
  const DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabases({
    required this.database,
    this.mysqlTables,
  });

  final TfArg<String> database;

  final List<
    DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTables
  >?
  mysqlTables;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (mysqlTables != null)
      'mysql_tables': [for (final e in mysqlTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTables {
  const DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTables({
    required this.table,
    this.mysqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTablesMysqlColumns
  >?
  mysqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (mysqlColumns != null)
      'mysql_columns': [for (final e in mysqlColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.mysql_excluded_objects.mysql_databases.mysql_tables.mysql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTablesMysqlColumns {
  const DatastreamStreamBackfillAllMysqlExcludedObjectsMysqlDatabasesMysqlTablesMysqlColumns({
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

  Map<String, Object?> encode() => {
    if (collation != null) 'collation': collation!.toTfJson(),
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllOracleExcludedObjects {
  const DatastreamStreamBackfillAllOracleExcludedObjects({
    required this.oracleSchemas,
  });

  final List<DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemas>
  oracleSchemas;

  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemas {
  const DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemas({
    required this.schema,
    this.oracleTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTables
  >?
  oracleTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (oracleTables != null)
      'oracle_tables': [for (final e in oracleTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTables {
  const DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTables({
    required this.table,
    this.oracleColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTablesOracleColumns
  >?
  oracleColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (oracleColumns != null)
      'oracle_columns': [for (final e in oracleColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.oracle_excluded_objects.oracle_schemas.oracle_tables.oracle_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTablesOracleColumns {
  const DatastreamStreamBackfillAllOracleExcludedObjectsOracleSchemasOracleTablesOracleColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllPostgresqlExcludedObjects {
  const DatastreamStreamBackfillAllPostgresqlExcludedObjects({
    required this.postgresqlSchemas,
  });

  final List<
    DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemas
  >
  postgresqlSchemas;

  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemas {
  const DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemas({
    required this.schema,
    this.postgresqlTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTables
  >?
  postgresqlTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (postgresqlTables != null)
      'postgresql_tables': [for (final e in postgresqlTables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTables {
  const DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTables({
    required this.table,
    this.postgresqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns
  >?
  postgresqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (postgresqlColumns != null)
      'postgresql_columns': [for (final e in postgresqlColumns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.postgresql_excluded_objects.postgresql_schemas.postgresql_tables.postgresql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns {
  const DatastreamStreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns({
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

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSalesforceExcludedObjects {
  const DatastreamStreamBackfillAllSalesforceExcludedObjects({
    required this.objects,
  });

  final List<DatastreamStreamBackfillAllSalesforceExcludedObjectsObjects>
  objects;

  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects.objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSalesforceExcludedObjectsObjects {
  const DatastreamStreamBackfillAllSalesforceExcludedObjectsObjects({
    this.objectName,
    this.fields,
  });

  final TfArg<String>? objectName;

  final List<DatastreamStreamBackfillAllSalesforceExcludedObjectsObjectsFields>?
  fields;

  Map<String, Object?> encode() => {
    if (objectName != null) 'object_name': objectName!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.salesforce_excluded_objects.objects.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSalesforceExcludedObjectsObjectsFields {
  const DatastreamStreamBackfillAllSalesforceExcludedObjectsObjectsFields({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `backfill_all.spanner_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSpannerExcludedObjects {
  const DatastreamStreamBackfillAllSpannerExcludedObjects({
    required this.schemas,
  });

  final List<DatastreamStreamBackfillAllSpannerExcludedObjectsSchemas> schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSpannerExcludedObjectsSchemas {
  const DatastreamStreamBackfillAllSpannerExcludedObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTables>?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTables {
  const DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.spanner_excluded_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTablesColumns {
  const DatastreamStreamBackfillAllSpannerExcludedObjectsSchemasTablesColumns({
    required this.column,
  });

  final TfArg<String> column;

  Map<String, Object?> encode() => {'column': column.toTfJson()};
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSqlServerExcludedObjects {
  const DatastreamStreamBackfillAllSqlServerExcludedObjects({
    required this.schemas,
  });

  final List<DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemas>
  schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemas {
  const DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTables>?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTables {
  const DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `backfill_all.sql_server_excluded_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTablesColumns {
  const DatastreamStreamBackfillAllSqlServerExcludedObjectsSchemasTablesColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `backfill_none` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamBackfillNone {
  const DatastreamStreamBackfillNone();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfig {
  const DatastreamStreamDestinationConfig({
    required this.destinationConnectionProfile,
    this.bigqueryDestinationConfig,
    this.gcsDestinationConfig,
  });

  final TfArg<String> destinationConnectionProfile;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfig?
  bigqueryDestinationConfig;

  final DatastreamStreamDestinationConfigGcsDestinationConfig?
  gcsDestinationConfig;

  Map<String, Object?> encode() => {
    'destination_connection_profile': destinationConnectionProfile.toTfJson(),
    if (bigqueryDestinationConfig != null)
      'bigquery_destination_config': bigqueryDestinationConfig!.encode(),
    if (gcsDestinationConfig != null)
      'gcs_destination_config': gcsDestinationConfig!.encode(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfig {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfig({
    this.dataFreshness,
    this.appendOnly,
    this.blmtConfig,
    this.merge,
    this.singleTargetDataset,
    this.sourceHierarchyDatasets,
  });

  final TfArg<String>? dataFreshness;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigAppendOnly?
  appendOnly;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigBlmtConfig?
  blmtConfig;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigMerge? merge;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset?
  singleTargetDataset;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets?
  sourceHierarchyDatasets;

  Map<String, Object?> encode() => {
    if (dataFreshness != null) 'data_freshness': dataFreshness!.toTfJson(),
    if (appendOnly != null) 'append_only': appendOnly!.encode(),
    if (blmtConfig != null) 'blmt_config': blmtConfig!.encode(),
    if (merge != null) 'merge': merge!.encode(),
    if (singleTargetDataset != null)
      'single_target_dataset': singleTargetDataset!.encode(),
    if (sourceHierarchyDatasets != null)
      'source_hierarchy_datasets': sourceHierarchyDatasets!.encode(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.append_only` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigAppendOnly {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigAppendOnly();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.bigquery_destination_config.blmt_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigBlmtConfig {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigBlmtConfig({
    required this.bucket,
    required this.connectionName,
    required this.fileFormat,
    this.rootPath,
    required this.tableFormat,
  });

  final TfArg<String> bucket;

  final TfArg<String> connectionName;

  final TfArg<String> fileFormat;

  final TfArg<String>? rootPath;

  final TfArg<String> tableFormat;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'connection_name': connectionName.toTfJson(),
    'file_format': fileFormat.toTfJson(),
    if (rootPath != null) 'root_path': rootPath!.toTfJson(),
    'table_format': tableFormat.toTfJson(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.merge` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigMerge {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigMerge();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.bigquery_destination_config.single_target_dataset` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset({
    required this.datasetId,
  });

  final TfArg<String> datasetId;

  Map<String, Object?> encode() => {'dataset_id': datasetId.toTfJson()};
}

/// Typed helper for the `destination_config.bigquery_destination_config.source_hierarchy_datasets` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets({
    this.projectId,
    required this.datasetTemplate,
  });

  final TfArg<String>? projectId;

  final DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate
  datasetTemplate;

  Map<String, Object?> encode() => {
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    'dataset_template': datasetTemplate.encode(),
  };
}

/// Typed helper for the `destination_config.bigquery_destination_config.source_hierarchy_datasets.dataset_template` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate {
  const DatastreamStreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate({
    this.datasetIdPrefix,
    this.kmsKeyName,
    required this.location,
  });

  final TfArg<String>? datasetIdPrefix;

  final TfArg<String>? kmsKeyName;

  final TfArg<String> location;

  Map<String, Object?> encode() => {
    if (datasetIdPrefix != null)
      'dataset_id_prefix': datasetIdPrefix!.toTfJson(),
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    'location': location.toTfJson(),
  };
}

/// Typed helper for the `destination_config.gcs_destination_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigGcsDestinationConfig {
  const DatastreamStreamDestinationConfigGcsDestinationConfig({
    this.fileRotationInterval,
    this.fileRotationMb,
    this.path,
    this.avroFileFormat,
    this.jsonFileFormat,
  });

  final TfArg<String>? fileRotationInterval;

  final TfArg<num>? fileRotationMb;

  final TfArg<String>? path;

  final DatastreamStreamDestinationConfigGcsDestinationConfigAvroFileFormat?
  avroFileFormat;

  final DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormat?
  jsonFileFormat;

  Map<String, Object?> encode() => {
    if (fileRotationInterval != null)
      'file_rotation_interval': fileRotationInterval!.toTfJson(),
    if (fileRotationMb != null) 'file_rotation_mb': fileRotationMb!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (avroFileFormat != null) 'avro_file_format': avroFileFormat!.encode(),
    if (jsonFileFormat != null) 'json_file_format': jsonFileFormat!.encode(),
  };
}

/// Typed helper for the `destination_config.gcs_destination_config.avro_file_format` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigGcsDestinationConfigAvroFileFormat {
  const DatastreamStreamDestinationConfigGcsDestinationConfigAvroFileFormat();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_config.gcs_destination_config.json_file_format` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormat {
  const DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  final TfArg<
    DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatCompression
  >?
  compression;

  final TfArg<
    DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatSchemaFileFormat
  >?
  schemaFileFormat;

  Map<String, Object?> encode() => {
    if (compression != null) 'compression': compression!.toTfJson(),
    if (schemaFileFormat != null)
      'schema_file_format': schemaFileFormat!.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatCompression
    implements TerraformEnum {
  noCompression('NO_COMPRESSION'),
  gzip('GZIP');

  const DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatCompression(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `schema_file_format` — derived from the provider schema description.
enum DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatSchemaFileFormat
    implements TerraformEnum {
  noSchemaFile('NO_SCHEMA_FILE'),
  avroSchemaFile('AVRO_SCHEMA_FILE');

  const DatastreamStreamDestinationConfigGcsDestinationConfigJsonFileFormatSchemaFileFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_sets` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSets {
  const DatastreamStreamRuleSets({
    required this.customizationRules,
    required this.objectFilter,
  });

  final List<DatastreamStreamRuleSetsCustomizationRules> customizationRules;

  final DatastreamStreamRuleSetsObjectFilter objectFilter;

  Map<String, Object?> encode() => {
    'customization_rules': [for (final e in customizationRules) e.encode()],
    'object_filter': objectFilter.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsCustomizationRules {
  const DatastreamStreamRuleSetsCustomizationRules({
    this.bigqueryClustering,
    this.bigqueryPartitioning,
  });

  final DatastreamStreamRuleSetsCustomizationRulesBigqueryClustering?
  bigqueryClustering;

  final DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioning?
  bigqueryPartitioning;

  Map<String, Object?> encode() => {
    if (bigqueryClustering != null)
      'bigquery_clustering': bigqueryClustering!.encode(),
    if (bigqueryPartitioning != null)
      'bigquery_partitioning': bigqueryPartitioning!.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_clustering` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsCustomizationRulesBigqueryClustering {
  const DatastreamStreamRuleSetsCustomizationRulesBigqueryClustering({
    required this.columns,
  });

  final TfArg<List<Object?>> columns;

  Map<String, Object?> encode() => {'columns': columns.toTfJson()};
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioning {
  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioning({
    this.requirePartitionFilter,
    this.ingestionTimePartition,
    this.integerRangePartition,
    this.timeUnitPartition,
  });

  final TfArg<bool>? requirePartitionFilter;

  final DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartition?
  ingestionTimePartition;

  final DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIntegerRangePartition?
  integerRangePartition;

  final DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartition?
  timeUnitPartition;

  Map<String, Object?> encode() => {
    if (requirePartitionFilter != null)
      'require_partition_filter': requirePartitionFilter!.toTfJson(),
    if (ingestionTimePartition != null)
      'ingestion_time_partition': ingestionTimePartition!.encode(),
    if (integerRangePartition != null)
      'integer_range_partition': integerRangePartition!.encode(),
    if (timeUnitPartition != null)
      'time_unit_partition': timeUnitPartition!.encode(),
  };
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning.ingestion_time_partition` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartition {
  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartition({
    this.partitioningTimeGranularity,
  });

  final TfArg<
    DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartitionPartitioningTimeGranularity
  >?
  partitioningTimeGranularity;

  Map<String, Object?> encode() => {
    if (partitioningTimeGranularity != null)
      'partitioning_time_granularity': partitioningTimeGranularity!.toTfJson(),
  };
}

/// `partitioning_time_granularity` — derived from the provider schema description.
enum DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartitionPartitioningTimeGranularity
    implements TerraformEnum {
  partitioningTimeGranularityUnspecified(
    'PARTITIONING_TIME_GRANULARITY_UNSPECIFIED',
  ),
  partitioningTimeGranularityHour('PARTITIONING_TIME_GRANULARITY_HOUR'),
  partitioningTimeGranularityDay('PARTITIONING_TIME_GRANULARITY_DAY'),
  partitioningTimeGranularityMonth('PARTITIONING_TIME_GRANULARITY_MONTH'),
  partitioningTimeGranularityYear('PARTITIONING_TIME_GRANULARITY_YEAR');

  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIngestionTimePartitionPartitioningTimeGranularity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_sets.customization_rules.bigquery_partitioning.integer_range_partition` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIntegerRangePartition {
  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningIntegerRangePartition({
    required this.column,
    required this.end,
    required this.interval,
    required this.start,
  });

  final TfArg<String> column;

  final TfArg<num> end;

  final TfArg<num> interval;

  final TfArg<num> start;

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
final class DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartition {
  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartition({
    required this.column,
    this.partitioningTimeGranularity,
  });

  final TfArg<String> column;

  final TfArg<
    DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartitionPartitioningTimeGranularity
  >?
  partitioningTimeGranularity;

  Map<String, Object?> encode() => {
    'column': column.toTfJson(),
    if (partitioningTimeGranularity != null)
      'partitioning_time_granularity': partitioningTimeGranularity!.toTfJson(),
  };
}

/// `partitioning_time_granularity` — derived from the provider schema description.
enum DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartitionPartitioningTimeGranularity
    implements TerraformEnum {
  partitioningTimeGranularityUnspecified(
    'PARTITIONING_TIME_GRANULARITY_UNSPECIFIED',
  ),
  partitioningTimeGranularityHour('PARTITIONING_TIME_GRANULARITY_HOUR'),
  partitioningTimeGranularityDay('PARTITIONING_TIME_GRANULARITY_DAY'),
  partitioningTimeGranularityMonth('PARTITIONING_TIME_GRANULARITY_MONTH'),
  partitioningTimeGranularityYear('PARTITIONING_TIME_GRANULARITY_YEAR');

  const DatastreamStreamRuleSetsCustomizationRulesBigqueryPartitioningTimeUnitPartitionPartitioningTimeGranularity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_sets.object_filter` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilter {
  const DatastreamStreamRuleSetsObjectFilter({this.sourceObjectIdentifier});

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifier?
  sourceObjectIdentifier;

  Map<String, Object?> encode() => {
    if (sourceObjectIdentifier != null)
      'source_object_identifier': sourceObjectIdentifier!.encode(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifier({
    this.mongodbIdentifier,
    this.mysqlIdentifier,
    this.oracleIdentifier,
    this.postgresqlIdentifier,
    this.salesforceIdentifier,
    this.spannerIdentifier,
    this.sqlServerIdentifier,
  });

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMongodbIdentifier?
  mongodbIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMysqlIdentifier?
  mysqlIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierOracleIdentifier?
  oracleIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierPostgresqlIdentifier?
  postgresqlIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSalesforceIdentifier?
  salesforceIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSpannerIdentifier?
  spannerIdentifier;

  final DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSqlServerIdentifier?
  sqlServerIdentifier;

  Map<String, Object?> encode() => {
    if (mongodbIdentifier != null)
      'mongodb_identifier': mongodbIdentifier!.encode(),
    if (mysqlIdentifier != null) 'mysql_identifier': mysqlIdentifier!.encode(),
    if (oracleIdentifier != null)
      'oracle_identifier': oracleIdentifier!.encode(),
    if (postgresqlIdentifier != null)
      'postgresql_identifier': postgresqlIdentifier!.encode(),
    if (salesforceIdentifier != null)
      'salesforce_identifier': salesforceIdentifier!.encode(),
    if (spannerIdentifier != null)
      'spanner_identifier': spannerIdentifier!.encode(),
    if (sqlServerIdentifier != null)
      'sql_server_identifier': sqlServerIdentifier!.encode(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.mongodb_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMongodbIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMongodbIdentifier({
    required this.collection,
    required this.database,
  });

  final TfArg<String> collection;

  final TfArg<String> database;

  Map<String, Object?> encode() => {
    'collection': collection.toTfJson(),
    'database': database.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.mysql_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMysqlIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierMysqlIdentifier({
    required this.database,
    required this.table,
  });

  final TfArg<String> database;

  final TfArg<String> table;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.oracle_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierOracleIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierOracleIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.postgresql_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierPostgresqlIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierPostgresqlIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.salesforce_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSalesforceIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSalesforceIdentifier({
    required this.objectName,
  });

  final TfArg<String> objectName;

  Map<String, Object?> encode() => {'object_name': objectName.toTfJson()};
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.spanner_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSpannerIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSpannerIdentifier({
    this.schema,
    required this.table,
  });

  final TfArg<String>? schema;

  final TfArg<String> table;

  Map<String, Object?> encode() => {
    if (schema != null) 'schema': schema!.toTfJson(),
    'table': table.toTfJson(),
  };
}

/// Typed helper for the `rule_sets.object_filter.source_object_identifier.sql_server_identifier` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSqlServerIdentifier {
  const DatastreamStreamRuleSetsObjectFilterSourceObjectIdentifierSqlServerIdentifier({
    required this.schema,
    required this.table,
  });

  final TfArg<String> schema;

  final TfArg<String> table;

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
    this.mongodbSourceConfig,
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.postgresqlSourceConfig,
    this.salesforceSourceConfig,
    this.spannerSourceConfig,
    this.sqlServerSourceConfig,
  });

  final TfArg<String> sourceConnectionProfile;

  final DatastreamStreamSourceConfigMongodbSourceConfig? mongodbSourceConfig;

  final DatastreamStreamSourceConfigMysqlSourceConfig? mysqlSourceConfig;

  final DatastreamStreamSourceConfigOracleSourceConfig? oracleSourceConfig;

  final DatastreamStreamSourceConfigPostgresqlSourceConfig?
  postgresqlSourceConfig;

  final DatastreamStreamSourceConfigSalesforceSourceConfig?
  salesforceSourceConfig;

  final DatastreamStreamSourceConfigSpannerSourceConfig? spannerSourceConfig;

  final DatastreamStreamSourceConfigSqlServerSourceConfig?
  sqlServerSourceConfig;

  Map<String, Object?> encode() => {
    'source_connection_profile': sourceConnectionProfile.toTfJson(),
    if (mongodbSourceConfig != null)
      'mongodb_source_config': mongodbSourceConfig!.encode(),
    if (mysqlSourceConfig != null)
      'mysql_source_config': mysqlSourceConfig!.encode(),
    if (oracleSourceConfig != null)
      'oracle_source_config': oracleSourceConfig!.encode(),
    if (postgresqlSourceConfig != null)
      'postgresql_source_config': postgresqlSourceConfig!.encode(),
    if (salesforceSourceConfig != null)
      'salesforce_source_config': salesforceSourceConfig!.encode(),
    if (spannerSourceConfig != null)
      'spanner_source_config': spannerSourceConfig!.encode(),
    if (sqlServerSourceConfig != null)
      'sql_server_source_config': sqlServerSourceConfig!.encode(),
  };
}

/// Typed helper for the `source_config.mongodb_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfig {
  const DatastreamStreamSourceConfigMongodbSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjects?
  includeObjects;

  Map<String, Object?> encode() => {
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjects({
    this.databases,
  });

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabases
  >?
  databases;

  Map<String, Object?> encode() => {
    if (databases != null)
      'databases': [for (final e in databases!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects.databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabases {
  const DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabases({
    this.database,
    this.collections,
  });

  final TfArg<String>? database;

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollections
  >?
  collections;

  Map<String, Object?> encode() => {
    if (database != null) 'database': database!.toTfJson(),
    if (collections != null)
      'collections': [for (final e in collections!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects.databases.collections` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollections {
  const DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollections({
    this.collection,
    this.fields,
  });

  final TfArg<String>? collection;

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollectionsFields
  >?
  fields;

  Map<String, Object?> encode() => {
    if (collection != null) 'collection': collection!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.exclude_objects.databases.collections.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollectionsFields {
  const DatastreamStreamSourceConfigMongodbSourceConfigExcludeObjectsDatabasesCollectionsFields({
    this.field,
  });

  final TfArg<String>? field;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
  };
}

/// Typed helper for the `source_config.mongodb_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjects({
    this.databases,
  });

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabases
  >?
  databases;

  Map<String, Object?> encode() => {
    if (databases != null)
      'databases': [for (final e in databases!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.include_objects.databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabases {
  const DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabases({
    this.database,
    this.collections,
  });

  final TfArg<String>? database;

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollections
  >?
  collections;

  Map<String, Object?> encode() => {
    if (database != null) 'database': database!.toTfJson(),
    if (collections != null)
      'collections': [for (final e in collections!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.include_objects.databases.collections` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollections {
  const DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollections({
    this.collection,
    this.fields,
  });

  final TfArg<String>? collection;

  final List<
    DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollectionsFields
  >?
  fields;

  Map<String, Object?> encode() => {
    if (collection != null) 'collection': collection!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `source_config.mongodb_source_config.include_objects.databases.collections.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollectionsFields {
  const DatastreamStreamSourceConfigMongodbSourceConfigIncludeObjectsDatabasesCollectionsFields({
    this.field,
  });

  final TfArg<String>? field;

  Map<String, Object?> encode() => {
    if (field != null) 'field': field!.toTfJson(),
  };
}

/// Typed helper for the `source_config.mysql_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfig {
  const DatastreamStreamSourceConfigMysqlSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.binaryLogPosition,
    this.excludeObjects,
    this.gtid,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamSourceConfigMysqlSourceConfigBinaryLogPosition?
  binaryLogPosition;

  final DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigMysqlSourceConfigGtid? gtid;

  final DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjects?
  includeObjects;

  Map<String, Object?> encode() => {
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    if (maxConcurrentCdcTasks != null)
      'max_concurrent_cdc_tasks': maxConcurrentCdcTasks!.toTfJson(),
    if (binaryLogPosition != null)
      'binary_log_position': binaryLogPosition!.encode(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (gtid != null) 'gtid': gtid!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
  };
}

/// Typed helper for the `source_config.mysql_source_config.binary_log_position` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigBinaryLogPosition {
  const DatastreamStreamSourceConfigMysqlSourceConfigBinaryLogPosition();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.mysql_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjects({
    required this.mysqlDatabases,
  });

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabases
  >
  mysqlDatabases;

  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.exclude_objects.mysql_databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabases {
  const DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabases({
    required this.database,
    this.mysqlTables,
  });

  final TfArg<String> database;

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTables
  >?
  mysqlTables;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (mysqlTables != null)
      'mysql_tables': [for (final e in mysqlTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTables {
  const DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTables({
    required this.table,
    this.mysqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTablesMysqlColumns
  >?
  mysqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (mysqlColumns != null)
      'mysql_columns': [for (final e in mysqlColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.exclude_objects.mysql_databases.mysql_tables.mysql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTablesMysqlColumns {
  const DatastreamStreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabasesMysqlTablesMysqlColumns({
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

  Map<String, Object?> encode() => {
    if (collation != null) 'collation': collation!.toTfJson(),
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `source_config.mysql_source_config.gtid` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigGtid {
  const DatastreamStreamSourceConfigMysqlSourceConfigGtid();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.mysql_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjects({
    required this.mysqlDatabases,
  });

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabases
  >
  mysqlDatabases;

  Map<String, Object?> encode() => {
    'mysql_databases': [for (final e in mysqlDatabases) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.include_objects.mysql_databases` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabases {
  const DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabases({
    required this.database,
    this.mysqlTables,
  });

  final TfArg<String> database;

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTables
  >?
  mysqlTables;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    if (mysqlTables != null)
      'mysql_tables': [for (final e in mysqlTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTables {
  const DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTables({
    required this.table,
    this.mysqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTablesMysqlColumns
  >?
  mysqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (mysqlColumns != null)
      'mysql_columns': [for (final e in mysqlColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.mysql_source_config.include_objects.mysql_databases.mysql_tables.mysql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTablesMysqlColumns {
  const DatastreamStreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabasesMysqlTablesMysqlColumns({
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

  Map<String, Object?> encode() => {
    if (collation != null) 'collation': collation!.toTfJson(),
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `source_config.oracle_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfig {
  const DatastreamStreamSourceConfigOracleSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.dropLargeObjects,
    this.excludeObjects,
    this.includeObjects,
    this.streamLargeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamSourceConfigOracleSourceConfigDropLargeObjects?
  dropLargeObjects;

  final DatastreamStreamSourceConfigOracleSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigOracleSourceConfigIncludeObjects?
  includeObjects;

  final DatastreamStreamSourceConfigOracleSourceConfigStreamLargeObjects?
  streamLargeObjects;

  Map<String, Object?> encode() => {
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    if (maxConcurrentCdcTasks != null)
      'max_concurrent_cdc_tasks': maxConcurrentCdcTasks!.toTfJson(),
    if (dropLargeObjects != null)
      'drop_large_objects': dropLargeObjects!.encode(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
    if (streamLargeObjects != null)
      'stream_large_objects': streamLargeObjects!.encode(),
  };
}

/// Typed helper for the `source_config.oracle_source_config.drop_large_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigDropLargeObjects {
  const DatastreamStreamSourceConfigOracleSourceConfigDropLargeObjects();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.oracle_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigOracleSourceConfigExcludeObjects({
    required this.oracleSchemas,
  });

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemas
  >
  oracleSchemas;

  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.exclude_objects.oracle_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemas {
  const DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemas({
    required this.schema,
    this.oracleTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTables
  >?
  oracleTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (oracleTables != null)
      'oracle_tables': [for (final e in oracleTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTables {
  const DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTables({
    required this.table,
    this.oracleColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTablesOracleColumns
  >?
  oracleColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (oracleColumns != null)
      'oracle_columns': [for (final e in oracleColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.exclude_objects.oracle_schemas.oracle_tables.oracle_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTablesOracleColumns {
  const DatastreamStreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemasOracleTablesOracleColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `source_config.oracle_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigOracleSourceConfigIncludeObjects({
    required this.oracleSchemas,
  });

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemas
  >
  oracleSchemas;

  Map<String, Object?> encode() => {
    'oracle_schemas': [for (final e in oracleSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.include_objects.oracle_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemas {
  const DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemas({
    required this.schema,
    this.oracleTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTables
  >?
  oracleTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (oracleTables != null)
      'oracle_tables': [for (final e in oracleTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTables {
  const DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTables({
    required this.table,
    this.oracleColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTablesOracleColumns
  >?
  oracleColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (oracleColumns != null)
      'oracle_columns': [for (final e in oracleColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.oracle_source_config.include_objects.oracle_schemas.oracle_tables.oracle_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTablesOracleColumns {
  const DatastreamStreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemasOracleTablesOracleColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `source_config.oracle_source_config.stream_large_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigOracleSourceConfigStreamLargeObjects {
  const DatastreamStreamSourceConfigOracleSourceConfigStreamLargeObjects();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.postgresql_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfig {
  const DatastreamStreamSourceConfigPostgresqlSourceConfig({
    this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<String> publication;

  final TfArg<String> replicationSlot;

  final DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjects?
  includeObjects;

  Map<String, Object?> encode() => {
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    'publication': publication.toTfJson(),
    'replication_slot': replicationSlot.toTfJson(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
  };
}

/// Typed helper for the `source_config.postgresql_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjects({
    required this.postgresqlSchemas,
  });

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemas
  >
  postgresqlSchemas;

  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.exclude_objects.postgresql_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemas {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemas({
    required this.schema,
    this.postgresqlTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTables
  >?
  postgresqlTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (postgresqlTables != null)
      'postgresql_tables': [for (final e in postgresqlTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTables {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTables({
    required this.table,
    this.postgresqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns
  >?
  postgresqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (postgresqlColumns != null)
      'postgresql_columns': [for (final e in postgresqlColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.exclude_objects.postgresql_schemas.postgresql_tables.postgresql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns({
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

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `source_config.postgresql_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjects({
    required this.postgresqlSchemas,
  });

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemas
  >
  postgresqlSchemas;

  Map<String, Object?> encode() => {
    'postgresql_schemas': [for (final e in postgresqlSchemas) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.include_objects.postgresql_schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemas {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemas({
    required this.schema,
    this.postgresqlTables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTables
  >?
  postgresqlTables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (postgresqlTables != null)
      'postgresql_tables': [for (final e in postgresqlTables!) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTables {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTables({
    required this.table,
    this.postgresqlColumns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns
  >?
  postgresqlColumns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (postgresqlColumns != null)
      'postgresql_columns': [for (final e in postgresqlColumns!) e.encode()],
  };
}

/// Typed helper for the `source_config.postgresql_source_config.include_objects.postgresql_schemas.postgresql_tables.postgresql_columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns {
  const DatastreamStreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemasPostgresqlTablesPostgresqlColumns({
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

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (ordinalPosition != null)
      'ordinal_position': ordinalPosition!.toTfJson(),
    if (primaryKey != null) 'primary_key': primaryKey!.toTfJson(),
  };
}

/// Typed helper for the `source_config.salesforce_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfig {
  const DatastreamStreamSourceConfigSalesforceSourceConfig({
    required this.pollingInterval,
    this.excludeObjects,
    this.includeObjects,
  });

  final TfArg<String> pollingInterval;

  final DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjects?
  includeObjects;

  Map<String, Object?> encode() => {
    'polling_interval': pollingInterval.toTfJson(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
  };
}

/// Typed helper for the `source_config.salesforce_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjects({
    required this.objects,
  });

  final List<
    DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjects
  >
  objects;

  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config.exclude_objects.objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjects {
  const DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjects({
    this.objectName,
    this.fields,
  });

  final TfArg<String>? objectName;

  final List<
    DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectsFields
  >?
  fields;

  Map<String, Object?> encode() => {
    if (objectName != null) 'object_name': objectName!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config.exclude_objects.objects.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectsFields {
  const DatastreamStreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectsFields({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `source_config.salesforce_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjects({
    required this.objects,
  });

  final List<
    DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjects
  >
  objects;

  Map<String, Object?> encode() => {
    'objects': [for (final e in objects) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config.include_objects.objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjects {
  const DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjects({
    this.objectName,
    this.fields,
  });

  final TfArg<String>? objectName;

  final List<
    DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectsFields
  >?
  fields;

  Map<String, Object?> encode() => {
    if (objectName != null) 'object_name': objectName!.toTfJson(),
    if (fields != null) 'fields': [for (final e in fields!) e.encode()],
  };
}

/// Typed helper for the `source_config.salesforce_source_config.include_objects.objects.fields` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectsFields {
  const DatastreamStreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectsFields({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `source_config.spanner_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfig {
  const DatastreamStreamSourceConfigSpannerSourceConfig({
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

  final TfArg<
    DatastreamStreamSourceConfigSpannerSourceConfigSpannerRpcPriority
  >?
  spannerRpcPriority;

  final DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjects?
  includeObjects;

  Map<String, Object?> encode() => {
    if (backfillDataBoostEnabled != null)
      'backfill_data_boost_enabled': backfillDataBoostEnabled!.toTfJson(),
    if (changeStreamName != null)
      'change_stream_name': changeStreamName!.toTfJson(),
    if (fgacRole != null) 'fgac_role': fgacRole!.toTfJson(),
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    if (maxConcurrentCdcTasks != null)
      'max_concurrent_cdc_tasks': maxConcurrentCdcTasks!.toTfJson(),
    if (spannerRpcPriority != null)
      'spanner_rpc_priority': spannerRpcPriority!.toTfJson(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
  };
}

/// `spanner_rpc_priority` — derived from the provider schema description.
enum DatastreamStreamSourceConfigSpannerSourceConfigSpannerRpcPriority
    implements TerraformEnum {
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH');

  const DatastreamStreamSourceConfigSpannerSourceConfigSpannerRpcPriority(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjects({
    required this.schemas,
  });

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemas
  >
  schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemas {
  const DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTables
  >?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTables {
  const DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.exclude_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTablesColumns {
  const DatastreamStreamSourceConfigSpannerSourceConfigExcludeObjectsSchemasTablesColumns({
    this.column,
  });

  final TfArg<String>? column;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
  };
}

/// Typed helper for the `source_config.spanner_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjects({
    required this.schemas,
  });

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemas
  >
  schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.include_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemas {
  const DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTables
  >?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.include_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTables {
  const DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `source_config.spanner_source_config.include_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTablesColumns {
  const DatastreamStreamSourceConfigSpannerSourceConfigIncludeObjectsSchemasTablesColumns({
    this.column,
  });

  final TfArg<String>? column;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
  };
}

/// Typed helper for the `source_config.sql_server_source_config` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfig {
  const DatastreamStreamSourceConfigSqlServerSourceConfig({
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.changeTables,
    this.excludeObjects,
    this.includeObjects,
    this.transactionLogs,
  });

  final TfArg<num>? maxConcurrentBackfillTasks;

  final TfArg<num>? maxConcurrentCdcTasks;

  final DatastreamStreamSourceConfigSqlServerSourceConfigChangeTables?
  changeTables;

  final DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjects?
  excludeObjects;

  final DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjects?
  includeObjects;

  final DatastreamStreamSourceConfigSqlServerSourceConfigTransactionLogs?
  transactionLogs;

  Map<String, Object?> encode() => {
    if (maxConcurrentBackfillTasks != null)
      'max_concurrent_backfill_tasks': maxConcurrentBackfillTasks!.toTfJson(),
    if (maxConcurrentCdcTasks != null)
      'max_concurrent_cdc_tasks': maxConcurrentCdcTasks!.toTfJson(),
    if (changeTables != null) 'change_tables': changeTables!.encode(),
    if (excludeObjects != null) 'exclude_objects': excludeObjects!.encode(),
    if (includeObjects != null) 'include_objects': includeObjects!.encode(),
    if (transactionLogs != null) 'transaction_logs': transactionLogs!.encode(),
  };
}

/// Typed helper for the `source_config.sql_server_source_config.change_tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigChangeTables {
  const DatastreamStreamSourceConfigSqlServerSourceConfigChangeTables();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `source_config.sql_server_source_config.exclude_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjects {
  const DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjects({
    required this.schemas,
  });

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemas
  >
  schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.exclude_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemas {
  const DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTables
  >?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.exclude_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTables {
  const DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.exclude_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTablesColumns {
  const DatastreamStreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemasTablesColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `source_config.sql_server_source_config.include_objects` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjects {
  const DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjects({
    required this.schemas,
  });

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemas
  >
  schemas;

  Map<String, Object?> encode() => {
    'schemas': [for (final e in schemas) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.include_objects.schemas` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemas {
  const DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemas({
    required this.schema,
    this.tables,
  });

  final TfArg<String> schema;

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTables
  >?
  tables;

  Map<String, Object?> encode() => {
    'schema': schema.toTfJson(),
    if (tables != null) 'tables': [for (final e in tables!) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.include_objects.schemas.tables` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTables {
  const DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTables({
    required this.table,
    this.columns,
  });

  final TfArg<String> table;

  final List<
    DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTablesColumns
  >?
  columns;

  Map<String, Object?> encode() => {
    'table': table.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
  };
}

/// Typed helper for the `source_config.sql_server_source_config.include_objects.schemas.tables.columns` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTablesColumns {
  const DatastreamStreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemasTablesColumns({
    this.column,
    this.dataType,
  });

  final TfArg<String>? column;

  final TfArg<String>? dataType;

  Map<String, Object?> encode() => {
    if (column != null) 'column': column!.toTfJson(),
    if (dataType != null) 'data_type': dataType!.toTfJson(),
  };
}

/// Typed helper for the `source_config.sql_server_source_config.transaction_logs` block of
/// `google_datastream_stream` (derived from provider schema).
@immutable
final class DatastreamStreamSourceConfigSqlServerSourceConfigTransactionLogs {
  const DatastreamStreamSourceConfigSqlServerSourceConfigTransactionLogs();

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

  GoogleDatastreamStream({
    required super.localName,
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? customerManagedEncryptionKey,
    TfArg<String>? deletionPolicy,
    TfArg<DatastreamStreamDesiredState>? desiredState,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> streamId,
    DatastreamStreamBackfillNone? backfillNone,
    required DatastreamStreamDestinationConfig destinationConfig,
    List<DatastreamStreamRuleSets>? ruleSets,
    required DatastreamStreamSourceConfig sourceConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (createWithoutValidation != null)
             'create_without_validation': createWithoutValidation,
           if (customerManagedEncryptionKey != null)
             'customer_managed_encryption_key': customerManagedEncryptionKey,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (desiredState != null) 'desired_state': desiredState,
           'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'stream_id': streamId,
           if (backfillNone != null)
             'backfill_none': TfArg.literal(backfillNone.encode()),
           'destination_config': TfArg.literal(destinationConfig.encode()),
           if (ruleSets != null)
             'rule_sets': TfArg.literal([for (final e in ruleSets) e.encode()]),
           'source_config': TfArg.literal(sourceConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDatastreamStreamSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
