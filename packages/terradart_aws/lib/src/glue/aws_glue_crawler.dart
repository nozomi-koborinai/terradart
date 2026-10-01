// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<List<String>> tables;

  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'dlq_event_queue_arn': ?dlqEventQueueArn?.toTfJson(),
    'event_queue_arn': ?eventQueueArn?.toTfJson(),
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

  final TfArg<List<String>> deltaTables;

  final TfArg<bool> writeManifest;

  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'create_native_delta_table': ?createNativeDeltaTable?.toTfJson(),
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
    'scan_all': ?scanAll?.toTfJson(),
    'scan_rate': ?scanRate?.toTfJson(),
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

  final TfArg<List<String>>? exclusions;

  final TfArg<num> maximumTraversalDepth;

  final TfArg<List<String>> paths;

  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'exclusions': ?exclusions?.toTfJson(),
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

  final TfArg<List<String>>? exclusions;

  final TfArg<num> maximumTraversalDepth;

  final TfArg<List<String>> paths;

  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'exclusions': ?exclusions?.toTfJson(),
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

  final List<GlueCrawlerEnableAdditionalMetadata>? enableAdditionalMetadata;

  final TfArg<List<String>>? exclusions;

  final TfArg<String> path;

  Map<String, Object?> encode() => {
    'connection_name': connectionName.toTfJson(),
    if (enableAdditionalMetadata != null)
      'enable_additional_metadata': [
        for (final e in enableAdditionalMetadata!) e.toTfJson(),
      ],
    'exclusions': ?exclusions?.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// `enable_additional_metadata` — derived from the provider schema description.
extension type const GlueCrawlerEnableAdditionalMetadata._(TfArg<String> _)
    implements TfArg<String> {
  GlueCrawlerEnableAdditionalMetadata.variable(String name)
    : this._(TfArg.variable(name));
  GlueCrawlerEnableAdditionalMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCrawlerEnableAdditionalMetadata.arg(TfArg<String> arg)
    : this._(arg);

  static const comments = GlueCrawlerEnableAdditionalMetadata._(
    TfArgLiteral('COMMENTS'),
  );
  static const rawtypes = GlueCrawlerEnableAdditionalMetadata._(
    TfArgLiteral('RAWTYPES'),
  );

  static const List<GlueCrawlerEnableAdditionalMetadata> values = [
    comments,
    rawtypes,
  ];
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
    'account_id': ?accountId?.toTfJson(),
    'use_lake_formation_credentials': ?useLakeFormationCredentials?.toTfJson(),
  };
}

/// Typed helper for the `lineage_configuration` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerLineageConfiguration {
  const GlueCrawlerLineageConfiguration({this.crawlerLineageSettings});

  final GlueCrawlerLineageSettings? crawlerLineageSettings;

  Map<String, Object?> encode() => {
    'crawler_lineage_settings': ?crawlerLineageSettings?.toTfJson(),
  };
}

/// `crawler_lineage_settings` — derived from the provider schema description.
extension type const GlueCrawlerLineageSettings._(TfArg<String> _)
    implements TfArg<String> {
  GlueCrawlerLineageSettings.variable(String name)
    : this._(TfArg.variable(name));
  GlueCrawlerLineageSettings.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCrawlerLineageSettings.arg(TfArg<String> arg) : this._(arg);

  static const enable = GlueCrawlerLineageSettings._(TfArgLiteral('ENABLE'));
  static const disable = GlueCrawlerLineageSettings._(TfArgLiteral('DISABLE'));

  static const List<GlueCrawlerLineageSettings> values = [enable, disable];
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
    'scan_all': ?scanAll?.toTfJson(),
  };
}

/// Typed helper for the `recrawl_policy` block of
/// `aws_glue_crawler` (derived from provider schema).
@immutable
final class GlueCrawlerRecrawlPolicy {
  const GlueCrawlerRecrawlPolicy({this.recrawlBehavior});

  final GlueCrawlerRecrawlBehavior? recrawlBehavior;

  Map<String, Object?> encode() => {
    'recrawl_behavior': ?recrawlBehavior?.toTfJson(),
  };
}

/// `recrawl_behavior` — derived from the provider schema description.
extension type const GlueCrawlerRecrawlBehavior._(TfArg<String> _)
    implements TfArg<String> {
  GlueCrawlerRecrawlBehavior.variable(String name)
    : this._(TfArg.variable(name));
  GlueCrawlerRecrawlBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCrawlerRecrawlBehavior.arg(TfArg<String> arg) : this._(arg);

  static const crawlEverything = GlueCrawlerRecrawlBehavior._(
    TfArgLiteral('CRAWL_EVERYTHING'),
  );
  static const crawlNewFoldersOnly = GlueCrawlerRecrawlBehavior._(
    TfArgLiteral('CRAWL_NEW_FOLDERS_ONLY'),
  );
  static const crawlEventMode = GlueCrawlerRecrawlBehavior._(
    TfArgLiteral('CRAWL_EVENT_MODE'),
  );

  static const List<GlueCrawlerRecrawlBehavior> values = [
    crawlEverything,
    crawlNewFoldersOnly,
    crawlEventMode,
  ];
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

  final TfArg<List<String>>? exclusions;

  final TfArg<String> path;

  final TfArg<num>? sampleSize;

  Map<String, Object?> encode() => {
    'connection_name': ?connectionName?.toTfJson(),
    'dlq_event_queue_arn': ?dlqEventQueueArn?.toTfJson(),
    'event_queue_arn': ?eventQueueArn?.toTfJson(),
    'exclusions': ?exclusions?.toTfJson(),
    'path': path.toTfJson(),
    'sample_size': ?sampleSize?.toTfJson(),
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

  final GlueCrawlerDeleteBehavior? deleteBehavior;

  final GlueCrawlerUpdateBehavior? updateBehavior;

  Map<String, Object?> encode() => {
    'delete_behavior': ?deleteBehavior?.toTfJson(),
    'update_behavior': ?updateBehavior?.toTfJson(),
  };
}

/// `delete_behavior` — derived from the provider schema description.
extension type const GlueCrawlerDeleteBehavior._(TfArg<String> _)
    implements TfArg<String> {
  GlueCrawlerDeleteBehavior.variable(String name)
    : this._(TfArg.variable(name));
  GlueCrawlerDeleteBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCrawlerDeleteBehavior.arg(TfArg<String> arg) : this._(arg);

  static const log = GlueCrawlerDeleteBehavior._(TfArgLiteral('LOG'));
  static const deleteFromDatabase = GlueCrawlerDeleteBehavior._(
    TfArgLiteral('DELETE_FROM_DATABASE'),
  );
  static const deprecateInDatabase = GlueCrawlerDeleteBehavior._(
    TfArgLiteral('DEPRECATE_IN_DATABASE'),
  );

  static const List<GlueCrawlerDeleteBehavior> values = [
    log,
    deleteFromDatabase,
    deprecateInDatabase,
  ];
}

/// `update_behavior` — derived from the provider schema description.
extension type const GlueCrawlerUpdateBehavior._(TfArg<String> _)
    implements TfArg<String> {
  GlueCrawlerUpdateBehavior.variable(String name)
    : this._(TfArg.variable(name));
  GlueCrawlerUpdateBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCrawlerUpdateBehavior.arg(TfArg<String> arg) : this._(arg);

  static const log = GlueCrawlerUpdateBehavior._(TfArgLiteral('LOG'));
  static const updateInDatabase = GlueCrawlerUpdateBehavior._(
    TfArgLiteral('UPDATE_IN_DATABASE'),
  );

  static const List<GlueCrawlerUpdateBehavior> values = [log, updateInDatabase];
}

/// Factory wrapper for `aws_glue_crawler`.
final class AwsGlueCrawler extends Resource {
  static const String tfType = 'aws_glue_crawler';

  AwsGlueCrawler(
    super.localName, {
    TfArg<List<String>>? classifiers,
    TfArg<String>? configuration,
    required TfArg<String> databaseName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> role,
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
           'classifiers': ?classifiers,
           'configuration': ?configuration,
           'database_name': databaseName,
           'description': ?description,
           'name': name,
           'region': ?region,
           'role': role.encodeAs('name'),
           'schedule': ?schedule,
           'security_configuration': ?securityConfiguration,
           'table_prefix': ?tablePrefix,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueCrawler>`.
  RefTo<AwsGlueCrawler> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `classifiers` attribute.
  TfRef<List<String>> get classifiers =>
      TfRef.attribute<List<String>>(this, 'classifiers');

  /// Reference to `configuration` attribute.
  TfRef<String> get configuration =>
      TfRef.attribute<String>(this, 'configuration');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `security_configuration` attribute.
  TfRef<String> get securityConfiguration =>
      TfRef.attribute<String>(this, 'security_configuration');

  /// Reference to `table_prefix` attribute.
  TfRef<String> get tablePrefix =>
      TfRef.attribute<String>(this, 'table_prefix');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
