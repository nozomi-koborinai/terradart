// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_feature_group`.
const Set<String> _awsSagemakerFeatureGroupSensitive = <String>{};

/// Typed helper for the `feature_definition` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupFeatureDefinition {
  const SagemakerFeatureGroupFeatureDefinition({
    this.collectionType,
    this.featureName,
    this.featureType,
    this.collectionConfig,
  });

  final TfArg<String>? collectionType;

  final TfArg<String>? featureName;

  final TfArg<String>? featureType;

  final SagemakerFeatureGroupFeatureDefinitionCollectionConfig?
  collectionConfig;

  Map<String, Object?> encode() => {
    if (collectionType != null) 'collection_type': collectionType!.toTfJson(),
    if (featureName != null) 'feature_name': featureName!.toTfJson(),
    if (featureType != null) 'feature_type': featureType!.toTfJson(),
    if (collectionConfig != null)
      'collection_config': collectionConfig!.encode(),
  };
}

/// Typed helper for the `feature_definition.collection_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupFeatureDefinitionCollectionConfig {
  const SagemakerFeatureGroupFeatureDefinitionCollectionConfig({
    this.vectorConfig,
  });

  final SagemakerFeatureGroupFeatureDefinitionCollectionConfigVectorConfig?
  vectorConfig;

  Map<String, Object?> encode() => {
    if (vectorConfig != null) 'vector_config': vectorConfig!.encode(),
  };
}

/// Typed helper for the `feature_definition.collection_config.vector_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupFeatureDefinitionCollectionConfigVectorConfig {
  const SagemakerFeatureGroupFeatureDefinitionCollectionConfigVectorConfig({
    this.dimension,
  });

  final TfArg<num>? dimension;

  Map<String, Object?> encode() => {
    if (dimension != null) 'dimension': dimension!.toTfJson(),
  };
}

/// Typed helper for the `offline_store_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOfflineStoreConfig {
  const SagemakerFeatureGroupOfflineStoreConfig({
    this.disableGlueTableCreation,
    this.tableFormat,
    this.dataCatalogConfig,
    required this.s3StorageConfig,
  });

  final TfArg<bool>? disableGlueTableCreation;

  final TfArg<String>? tableFormat;

  final SagemakerFeatureGroupOfflineStoreConfigDataCatalogConfig?
  dataCatalogConfig;

  final SagemakerFeatureGroupOfflineStoreConfigS3StorageConfig s3StorageConfig;

  Map<String, Object?> encode() => {
    if (disableGlueTableCreation != null)
      'disable_glue_table_creation': disableGlueTableCreation!.toTfJson(),
    if (tableFormat != null) 'table_format': tableFormat!.toTfJson(),
    if (dataCatalogConfig != null)
      'data_catalog_config': dataCatalogConfig!.encode(),
    's3_storage_config': s3StorageConfig.encode(),
  };
}

/// Typed helper for the `offline_store_config.data_catalog_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOfflineStoreConfigDataCatalogConfig {
  const SagemakerFeatureGroupOfflineStoreConfigDataCatalogConfig({
    this.catalog,
    this.database,
    this.tableName,
  });

  final TfArg<String>? catalog;

  final TfArg<String>? database;

  final TfArg<String>? tableName;

  Map<String, Object?> encode() => {
    if (catalog != null) 'catalog': catalog!.toTfJson(),
    if (database != null) 'database': database!.toTfJson(),
    if (tableName != null) 'table_name': tableName!.toTfJson(),
  };
}

/// Typed helper for the `offline_store_config.s3_storage_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOfflineStoreConfigS3StorageConfig {
  const SagemakerFeatureGroupOfflineStoreConfigS3StorageConfig({
    this.kmsKeyId,
    this.resolvedOutputS3Uri,
    required this.s3Uri,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? resolvedOutputS3Uri;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (resolvedOutputS3Uri != null)
      'resolved_output_s3_uri': resolvedOutputS3Uri!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `online_store_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOnlineStoreConfig {
  const SagemakerFeatureGroupOnlineStoreConfig({
    this.enableOnlineStore,
    this.storageType,
    this.securityConfig,
    this.ttlDuration,
  });

  final TfArg<bool>? enableOnlineStore;

  final TfArg<String>? storageType;

  final SagemakerFeatureGroupOnlineStoreConfigSecurityConfig? securityConfig;

  final SagemakerFeatureGroupOnlineStoreConfigTtlDuration? ttlDuration;

  Map<String, Object?> encode() => {
    if (enableOnlineStore != null)
      'enable_online_store': enableOnlineStore!.toTfJson(),
    if (storageType != null) 'storage_type': storageType!.toTfJson(),
    if (securityConfig != null) 'security_config': securityConfig!.encode(),
    if (ttlDuration != null) 'ttl_duration': ttlDuration!.encode(),
  };
}

/// Typed helper for the `online_store_config.security_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOnlineStoreConfigSecurityConfig {
  const SagemakerFeatureGroupOnlineStoreConfigSecurityConfig({this.kmsKeyId});

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
  };
}

/// Typed helper for the `online_store_config.ttl_duration` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupOnlineStoreConfigTtlDuration {
  const SagemakerFeatureGroupOnlineStoreConfigTtlDuration({
    this.unit,
    this.value,
  });

  final TfArg<String>? unit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (unit != null) 'unit': unit!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `throughput_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupThroughputConfig {
  const SagemakerFeatureGroupThroughputConfig({
    this.provisionedReadCapacityUnits,
    this.provisionedWriteCapacityUnits,
    this.throughputMode,
  });

  final TfArg<num>? provisionedReadCapacityUnits;

  final TfArg<num>? provisionedWriteCapacityUnits;

  final TfArg<String>? throughputMode;

  Map<String, Object?> encode() => {
    if (provisionedReadCapacityUnits != null)
      'provisioned_read_capacity_units': provisionedReadCapacityUnits!
          .toTfJson(),
    if (provisionedWriteCapacityUnits != null)
      'provisioned_write_capacity_units': provisionedWriteCapacityUnits!
          .toTfJson(),
    if (throughputMode != null) 'throughput_mode': throughputMode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_feature_group`.
final class AwsSagemakerFeatureGroup extends Resource {
  static const String tfType = 'aws_sagemaker_feature_group';

  AwsSagemakerFeatureGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> eventTimeFeatureName,
    required TfArg<String> featureGroupName,
    required TfArg<String> recordIdentifierFeatureName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required List<SagemakerFeatureGroupFeatureDefinition> featureDefinition,
    SagemakerFeatureGroupOfflineStoreConfig? offlineStoreConfig,
    SagemakerFeatureGroupOnlineStoreConfig? onlineStoreConfig,
    SagemakerFeatureGroupThroughputConfig? throughputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'event_time_feature_name': eventTimeFeatureName,
           'feature_group_name': featureGroupName,
           'record_identifier_feature_name': recordIdentifierFeatureName,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'feature_definition': TfArg.literal([
             for (final e in featureDefinition) e.encode(),
           ]),
           if (offlineStoreConfig != null)
             'offline_store_config': TfArg.literal(offlineStoreConfig.encode()),
           if (onlineStoreConfig != null)
             'online_store_config': TfArg.literal(onlineStoreConfig.encode()),
           if (throughputConfig != null)
             'throughput_config': TfArg.literal(throughputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerFeatureGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
