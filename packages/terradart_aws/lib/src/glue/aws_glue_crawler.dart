// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_crawler`.
const Set<String> _awsGlueCrawlerSensitive = <String>{};

/// Typed helper for the `catalog_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerCatalogTarget {
  const GlueCrawlerCatalogTarget({
    this.connectionName,
    required this.databaseName,
    this.dlqEventQueueArn,
    this.eventQueueArn,
    required this.tables,
  });

  final TfArg<String>? connectionName;

  final TfArg<String> databaseName;

  final TfArg<String>? dlqEventQueueArn;

  final TfArg<String>? eventQueueArn;

  final TfArg<List<Object?>> tables;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (dlqEventQueueArn != null)
      'dlq_event_queue_arn': dlqEventQueueArn!.toTfJson(),
    if (eventQueueArn != null) 'event_queue_arn': eventQueueArn!.toTfJson(),
    'tables': tables.toTfJson(),
  };
}

/// Typed helper for the `delta_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerDeltaTarget {
  const GlueCrawlerDeltaTarget({
    this.connectionName,
    this.createNativeDeltaTable,
    required this.deltaTables,
    required this.writeManifest,
  });

  final TfArg<String>? connectionName;

  final TfArg<bool>? createNativeDeltaTable;

  final TfArg<List<Object?>> deltaTables;

  final TfArg<bool> writeManifest;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (createNativeDeltaTable != null)
      'create_native_delta_table': createNativeDeltaTable!.toTfJson(),
    'delta_tables': deltaTables.toTfJson(),
    'write_manifest': writeManifest.toTfJson(),
  };
}

/// Typed helper for the `dynamodb_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerDynamodbTarget {
  const GlueCrawlerDynamodbTarget({
    required this.path,
    this.scanAll,
    this.scanRate,
  });

  final TfArg<String> path;

  final TfArg<bool>? scanAll;

  final TfArg<num>? scanRate;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    if (scanAll != null) 'scan_all': scanAll!.toTfJson(),
    if (scanRate != null) 'scan_rate': scanRate!.toTfJson(),
  };
}

/// Typed helper for the `hudi_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerHudiTarget {
  const GlueCrawlerHudiTarget({
    this.connectionName,
    this.exclusions,
    required this.maximumTraversalDepth,
    required this.paths,
  });

  final TfArg<String>? connectionName;

  final TfArg<List<Object?>>? exclusions;

  final TfArg<num> maximumTraversalDepth;

  final TfArg<List<Object?>> paths;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (exclusions != null) 'exclusions': exclusions!.toTfJson(),
    'maximum_traversal_depth': maximumTraversalDepth.toTfJson(),
    'paths': paths.toTfJson(),
  };
}

/// Typed helper for the `iceberg_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerIcebergTarget {
  const GlueCrawlerIcebergTarget({
    this.connectionName,
    this.exclusions,
    required this.maximumTraversalDepth,
    required this.paths,
  });

  final TfArg<String>? connectionName;

  final TfArg<List<Object?>>? exclusions;

  final TfArg<num> maximumTraversalDepth;

  final TfArg<List<Object?>> paths;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (exclusions != null) 'exclusions': exclusions!.toTfJson(),
    'maximum_traversal_depth': maximumTraversalDepth.toTfJson(),
    'paths': paths.toTfJson(),
  };
}

/// Typed helper for the `jdbc_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerJdbcTarget {
  const GlueCrawlerJdbcTarget({
    required this.connectionName,
    this.enableAdditionalMetadata,
    this.exclusions,
    required this.path,
  });

  final TfArg<String> connectionName;

  final TfArg<List<Object?>>? enableAdditionalMetadata;

  final TfArg<List<Object?>>? exclusions;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'connection_name': connectionName.toTfJson(),
    if (enableAdditionalMetadata != null)
      'enable_additional_metadata': enableAdditionalMetadata!.toTfJson(),
    if (exclusions != null) 'exclusions': exclusions!.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `lake_formation_configuration` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerLakeFormationConfiguration {
  const GlueCrawlerLakeFormationConfiguration({
    this.accountId,
    this.useLakeFormationCredentials,
  });

  final TfArg<String>? accountId;

  final TfArg<bool>? useLakeFormationCredentials;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    if (useLakeFormationCredentials != null)
      'use_lake_formation_credentials': useLakeFormationCredentials!.toTfJson(),
  };
}

/// Typed helper for the `lineage_configuration` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerLineageConfiguration {
  const GlueCrawlerLineageConfiguration({this.crawlerLineageSettings});

  final TfArg<String>? crawlerLineageSettings;

  Map<String, Object?> encode() => {
    if (crawlerLineageSettings != null)
      'crawler_lineage_settings': crawlerLineageSettings!.toTfJson(),
  };
}

/// Typed helper for the `mongodb_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerMongodbTarget {
  const GlueCrawlerMongodbTarget({
    required this.connectionName,
    required this.path,
    this.scanAll,
  });

  final TfArg<String> connectionName;

  final TfArg<String> path;

  final TfArg<bool>? scanAll;

  Map<String, Object?> encode() => {
    'connection_name': connectionName.toTfJson(),
    'path': path.toTfJson(),
    if (scanAll != null) 'scan_all': scanAll!.toTfJson(),
  };
}

/// Typed helper for the `recrawl_policy` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerRecrawlPolicy {
  const GlueCrawlerRecrawlPolicy({this.recrawlBehavior});

  final TfArg<String>? recrawlBehavior;

  Map<String, Object?> encode() => {
    if (recrawlBehavior != null)
      'recrawl_behavior': recrawlBehavior!.toTfJson(),
  };
}

/// Typed helper for the `s3_target` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerS3Target {
  const GlueCrawlerS3Target({
    this.connectionName,
    this.dlqEventQueueArn,
    this.eventQueueArn,
    this.exclusions,
    required this.path,
    this.sampleSize,
  });

  final TfArg<String>? connectionName;

  final TfArg<String>? dlqEventQueueArn;

  final TfArg<String>? eventQueueArn;

  final TfArg<List<Object?>>? exclusions;

  final TfArg<String> path;

  final TfArg<num>? sampleSize;

  Map<String, Object?> encode() => {
    if (connectionName != null) 'connection_name': connectionName!.toTfJson(),
    if (dlqEventQueueArn != null)
      'dlq_event_queue_arn': dlqEventQueueArn!.toTfJson(),
    if (eventQueueArn != null) 'event_queue_arn': eventQueueArn!.toTfJson(),
    if (exclusions != null) 'exclusions': exclusions!.toTfJson(),
    'path': path.toTfJson(),
    if (sampleSize != null) 'sample_size': sampleSize!.toTfJson(),
  };
}

/// Typed helper for the `schema_change_policy` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerSchemaChangePolicy {
  const GlueCrawlerSchemaChangePolicy({
    this.deleteBehavior,
    this.updateBehavior,
  });

  final TfArg<String>? deleteBehavior;

  final TfArg<String>? updateBehavior;

  Map<String, Object?> encode() => {
    if (deleteBehavior != null) 'delete_behavior': deleteBehavior!.toTfJson(),
    if (updateBehavior != null) 'update_behavior': updateBehavior!.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_crawler`.
final class AwsGlueCrawler extends Resource {
  static const String tfType = 'aws_glue_crawler';

  AwsGlueCrawler({
    required super.localName,
    TfArg<List<String>>? classifiers,
    TfArg<String>? configuration,
    required TfArg<String> databaseName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<String>? schedule,
    TfArg<String>? securityConfiguration,
    TfArg<String>? tablePrefix,
    TfArg<Map<String, String>>? tags,
    List<GlueCrawlerCatalogTarget>? catalogTarget,
    List<GlueCrawlerDeltaTarget>? deltaTarget,
    List<GlueCrawlerDynamodbTarget>? dynamodbTarget,
    List<GlueCrawlerHudiTarget>? hudiTarget,
    List<GlueCrawlerIcebergTarget>? icebergTarget,
    List<GlueCrawlerJdbcTarget>? jdbcTarget,
    GlueCrawlerLakeFormationConfiguration? lakeFormationConfiguration,
    GlueCrawlerLineageConfiguration? lineageConfiguration,
    List<GlueCrawlerMongodbTarget>? mongodbTarget,
    GlueCrawlerRecrawlPolicy? recrawlPolicy,
    List<GlueCrawlerS3Target>? s3Target,
    GlueCrawlerSchemaChangePolicy? schemaChangePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (classifiers != null) 'classifiers': classifiers,
           if (configuration != null) 'configuration': configuration,
           'database_name': databaseName,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'role': role,
           if (schedule != null) 'schedule': schedule,
           if (securityConfiguration != null)
             'security_configuration': securityConfiguration,
           if (tablePrefix != null) 'table_prefix': tablePrefix,
           if (tags != null) 'tags': tags,
           if (catalogTarget != null)
             'catalog_target': TfArg.literal([
               for (final e in catalogTarget) e.encode(),
             ]),
           if (deltaTarget != null)
             'delta_target': TfArg.literal([
               for (final e in deltaTarget) e.encode(),
             ]),
           if (dynamodbTarget != null)
             'dynamodb_target': TfArg.literal([
               for (final e in dynamodbTarget) e.encode(),
             ]),
           if (hudiTarget != null)
             'hudi_target': TfArg.literal([
               for (final e in hudiTarget) e.encode(),
             ]),
           if (icebergTarget != null)
             'iceberg_target': TfArg.literal([
               for (final e in icebergTarget) e.encode(),
             ]),
           if (jdbcTarget != null)
             'jdbc_target': TfArg.literal([
               for (final e in jdbcTarget) e.encode(),
             ]),
           if (lakeFormationConfiguration != null)
             'lake_formation_configuration': TfArg.literal(
               lakeFormationConfiguration.encode(),
             ),
           if (lineageConfiguration != null)
             'lineage_configuration': TfArg.literal(
               lineageConfiguration.encode(),
             ),
           if (mongodbTarget != null)
             'mongodb_target': TfArg.literal([
               for (final e in mongodbTarget) e.encode(),
             ]),
           if (recrawlPolicy != null)
             'recrawl_policy': TfArg.literal(recrawlPolicy.encode()),
           if (s3Target != null)
             's3_target': TfArg.literal([for (final e in s3Target) e.encode()]),
           if (schemaChangePolicy != null)
             'schema_change_policy': TfArg.literal(schemaChangePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCrawlerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
