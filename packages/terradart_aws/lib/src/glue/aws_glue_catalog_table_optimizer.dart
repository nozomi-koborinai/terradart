// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_glue_catalog_table_optimizer`.
const Set<String> _awsGlueCatalogTableOptimizerSensitive = <String>{};

/// Glue Catalog Table Optimizer enum for `type`.
extension type const GlueCatalogTableOptimizerType._(TfArg<String> _)
    implements TfArg<String> {
  GlueCatalogTableOptimizerType.variable(String name)
    : this._(TfArg.variable(name));
  GlueCatalogTableOptimizerType.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCatalogTableOptimizerType.arg(TfArg<String> arg) : this._(arg);

  static const compaction = GlueCatalogTableOptimizerType._(
    TfArgLiteral('compaction'),
  );
  static const retention = GlueCatalogTableOptimizerType._(
    TfArgLiteral('retention'),
  );
  static const orphanFileDeletion = GlueCatalogTableOptimizerType._(
    TfArgLiteral('orphan_file_deletion'),
  );

  static const List<GlueCatalogTableOptimizerType> values = [
    compaction,
    retention,
    orphanFileDeletion,
  ];
}

/// Typed helper for the `configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerConfiguration {
  const GlueCatalogTableOptimizerConfiguration({
    required this.enabled,
    required this.roleArn,
    this.compactionConfiguration,
    this.orphanFileDeletionConfiguration,
    this.retentionConfiguration,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsIamRole> roleArn;

  final List<GlueCatalogTableOptimizerCompactionConfiguration>?
  compactionConfiguration;

  final List<GlueCatalogTableOptimizerOrphanFileDeletionConfiguration>?
  orphanFileDeletionConfiguration;

  final List<GlueCatalogTableOptimizerRetentionConfiguration>?
  retentionConfiguration;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    if (compactionConfiguration != null)
      'compaction_configuration': [
        for (final e in compactionConfiguration!) e.encode(),
      ],
    if (orphanFileDeletionConfiguration != null)
      'orphan_file_deletion_configuration': [
        for (final e in orphanFileDeletionConfiguration!) e.encode(),
      ],
    if (retentionConfiguration != null)
      'retention_configuration': [
        for (final e in retentionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.compaction_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerCompactionConfiguration {
  const GlueCatalogTableOptimizerCompactionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerCompactionConfigurationIcebergConfiguration
  >?
  icebergConfiguration;

  Map<String, Object?> encode() => {
    if (icebergConfiguration != null)
      'iceberg_configuration': [
        for (final e in icebergConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.compaction_configuration.iceberg_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerCompactionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerCompactionConfigurationIcebergConfiguration({
    this.deleteFileThreshold,
    this.minInputFiles,
    this.strategy,
  });

  final TfArg<num>? deleteFileThreshold;

  final TfArg<num>? minInputFiles;

  final GlueCatalogTableOptimizerStrategy? strategy;

  Map<String, Object?> encode() => {
    'delete_file_threshold': ?deleteFileThreshold?.toTfJson(),
    'min_input_files': ?minInputFiles?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
  };
}

/// `strategy` — derived from the provider schema description.
extension type const GlueCatalogTableOptimizerStrategy._(TfArg<String> _)
    implements TfArg<String> {
  GlueCatalogTableOptimizerStrategy.variable(String name)
    : this._(TfArg.variable(name));
  GlueCatalogTableOptimizerStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const GlueCatalogTableOptimizerStrategy.arg(TfArg<String> arg) : this._(arg);

  static const binpack = GlueCatalogTableOptimizerStrategy._(
    TfArgLiteral('binpack'),
  );
  static const sort = GlueCatalogTableOptimizerStrategy._(TfArgLiteral('sort'));
  static const zOrder = GlueCatalogTableOptimizerStrategy._(
    TfArgLiteral('z-order'),
  );

  static const List<GlueCatalogTableOptimizerStrategy> values = [
    binpack,
    sort,
    zOrder,
  ];
}

/// Typed helper for the `configuration.orphan_file_deletion_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerOrphanFileDeletionConfiguration {
  const GlueCatalogTableOptimizerOrphanFileDeletionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerOrphanFileDeletionConfigurationIcebergConfiguration
  >?
  icebergConfiguration;

  Map<String, Object?> encode() => {
    if (icebergConfiguration != null)
      'iceberg_configuration': [
        for (final e in icebergConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.orphan_file_deletion_configuration.iceberg_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerOrphanFileDeletionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerOrphanFileDeletionConfigurationIcebergConfiguration({
    this.location,
    this.orphanFileRetentionPeriodInDays,
    this.runRateInHours,
  });

  final TfArg<String>? location;

  final TfArg<num>? orphanFileRetentionPeriodInDays;

  final TfArg<num>? runRateInHours;

  Map<String, Object?> encode() => {
    'location': ?location?.toTfJson(),
    'orphan_file_retention_period_in_days': ?orphanFileRetentionPeriodInDays
        ?.toTfJson(),
    'run_rate_in_hours': ?runRateInHours?.toTfJson(),
  };
}

/// Typed helper for the `configuration.retention_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerRetentionConfiguration {
  const GlueCatalogTableOptimizerRetentionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerRetentionConfigurationIcebergConfiguration
  >?
  icebergConfiguration;

  Map<String, Object?> encode() => {
    if (icebergConfiguration != null)
      'iceberg_configuration': [
        for (final e in icebergConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.retention_configuration.iceberg_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerRetentionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerRetentionConfigurationIcebergConfiguration({
    this.cleanExpiredFiles,
    this.numberOfSnapshotsToRetain,
    this.runRateInHours,
    this.snapshotRetentionPeriodInDays,
  });

  final TfArg<bool>? cleanExpiredFiles;

  final TfArg<num>? numberOfSnapshotsToRetain;

  final TfArg<num>? runRateInHours;

  final TfArg<num>? snapshotRetentionPeriodInDays;

  Map<String, Object?> encode() => {
    'clean_expired_files': ?cleanExpiredFiles?.toTfJson(),
    'number_of_snapshots_to_retain': ?numberOfSnapshotsToRetain?.toTfJson(),
    'run_rate_in_hours': ?runRateInHours?.toTfJson(),
    'snapshot_retention_period_in_days': ?snapshotRetentionPeriodInDays
        ?.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_catalog_table_optimizer`.
final class AwsGlueCatalogTableOptimizer extends Resource {
  static const String tfType = 'aws_glue_catalog_table_optimizer';

  AwsGlueCatalogTableOptimizer(
    super.localName, {
    required TfArg<String> catalogId,
    required TfArg<String> databaseName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    required GlueCatalogTableOptimizerType type,
    List<GlueCatalogTableOptimizerConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': catalogId,
           'database_name': databaseName,
           'region': ?region,
           'table_name': tableName,
           'type': type,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueCatalogTableOptimizerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueCatalogTableOptimizer>`.
  RefTo<AwsGlueCatalogTableOptimizer> get ref => RefTo.of(this);

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
