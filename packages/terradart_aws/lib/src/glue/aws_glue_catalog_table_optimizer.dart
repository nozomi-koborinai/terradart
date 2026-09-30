// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_glue_catalog_table_optimizer`.
const Set<String> _awsGlueCatalogTableOptimizerSensitive = <String>{};

/// Glue Catalog Table Optimizer enum for `type`.
enum GlueCatalogTableOptimizerType implements TerraformEnum {
  compaction('compaction'),
  retention('retention'),
  orphanFileDeletion('orphan_file_deletion');

  const GlueCatalogTableOptimizerType(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<GlueCatalogTableOptimizerConfigurationCompactionConfiguration>?
  compactionConfiguration;

  final List<
    GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration
  >?
  orphanFileDeletionConfiguration;

  final List<GlueCatalogTableOptimizerConfigurationRetentionConfiguration>?
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
final class GlueCatalogTableOptimizerConfigurationCompactionConfiguration {
  const GlueCatalogTableOptimizerConfigurationCompactionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration
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
final class GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfiguration({
    this.deleteFileThreshold,
    this.minInputFiles,
    this.strategy,
  });

  final TfArg<num>? deleteFileThreshold;

  final TfArg<num>? minInputFiles;

  final TfArg<
    GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationStrategy
  >?
  strategy;

  Map<String, Object?> encode() => {
    'delete_file_threshold': ?deleteFileThreshold?.toTfJson(),
    'min_input_files': ?minInputFiles?.toTfJson(),
    'strategy': ?strategy?.toTfJson(),
  };
}

/// `strategy` — derived from the provider schema description.
enum GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationStrategy
    implements TerraformEnum {
  binpack('binpack'),
  sort('sort'),
  zOrder('z-order');

  const GlueCatalogTableOptimizerConfigurationCompactionConfigurationIcebergConfigurationStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.orphan_file_deletion_configuration` block of
/// `aws_glue_catalog_table_optimizer` (derived from provider schema).
@immutable
final class GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration {
  const GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration
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
final class GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerConfigurationOrphanFileDeletionConfigurationIcebergConfiguration({
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
final class GlueCatalogTableOptimizerConfigurationRetentionConfiguration {
  const GlueCatalogTableOptimizerConfigurationRetentionConfiguration({
    this.icebergConfiguration,
  });

  final List<
    GlueCatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration
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
final class GlueCatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration {
  const GlueCatalogTableOptimizerConfigurationRetentionConfigurationIcebergConfiguration({
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

  AwsGlueCatalogTableOptimizer({
    required super.localName,
    required TfArg<String> catalogId,
    required TfArg<String> databaseName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    required TfArg<GlueCatalogTableOptimizerType> type,
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
  TfRef<String> get catalogIdRef => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseNameRef =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableNameRef => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
