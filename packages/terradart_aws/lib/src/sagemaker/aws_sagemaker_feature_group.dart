// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final TfArg<SagemakerFeatureGroupCollectionType>? collectionType;

  final TfArg<String>? featureName;

  final TfArg<SagemakerFeatureGroupFeatureType>? featureType;

  final SagemakerFeatureGroupCollectionConfig? collectionConfig;

  Map<String, Object?> encode() => {
    'collection_type': ?collectionType?.toTfJson(),
    'feature_name': ?featureName?.toTfJson(),
    'feature_type': ?featureType?.toTfJson(),
    'collection_config': ?collectionConfig?.encode(),
  };
}

/// `collection_type` — derived from the provider schema description.
enum SagemakerFeatureGroupCollectionType implements TerraformEnum {
  list('List'),
  set('Set'),
  vector('Vector');

  const SagemakerFeatureGroupCollectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `feature_type` — derived from the provider schema description.
enum SagemakerFeatureGroupFeatureType implements TerraformEnum {
  integral('Integral'),
  fractional('Fractional'),
  string('String');

  const SagemakerFeatureGroupFeatureType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `feature_definition.collection_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupCollectionConfig {
  const SagemakerFeatureGroupCollectionConfig({this.vectorConfig});

  final SagemakerFeatureGroupVectorConfig? vectorConfig;

  Map<String, Object?> encode() => {'vector_config': ?vectorConfig?.encode()};
}

/// Typed helper for the `feature_definition.collection_config.vector_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupVectorConfig {
  const SagemakerFeatureGroupVectorConfig({this.dimension});

  final TfArg<num>? dimension;

  Map<String, Object?> encode() => {'dimension': ?dimension?.toTfJson()};
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

  final TfArg<SagemakerFeatureGroupTableFormat>? tableFormat;

  final SagemakerFeatureGroupDataCatalogConfig? dataCatalogConfig;

  final SagemakerFeatureGroupS3StorageConfig s3StorageConfig;

  Map<String, Object?> encode() => {
    'disable_glue_table_creation': ?disableGlueTableCreation?.toTfJson(),
    'table_format': ?tableFormat?.toTfJson(),
    'data_catalog_config': ?dataCatalogConfig?.encode(),
    's3_storage_config': s3StorageConfig.encode(),
  };
}

/// `table_format` — derived from the provider schema description.
enum SagemakerFeatureGroupTableFormat implements TerraformEnum {
  defaultCase('Default'),
  glue('Glue'),
  iceberg('Iceberg');

  const SagemakerFeatureGroupTableFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `offline_store_config.data_catalog_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupDataCatalogConfig {
  const SagemakerFeatureGroupDataCatalogConfig({
    this.catalog,
    this.database,
    this.tableName,
  });

  final TfArg<String>? catalog;

  final TfArg<String>? database;

  final TfArg<String>? tableName;

  Map<String, Object?> encode() => {
    'catalog': ?catalog?.toTfJson(),
    'database': ?database?.toTfJson(),
    'table_name': ?tableName?.toTfJson(),
  };
}

/// Typed helper for the `offline_store_config.s3_storage_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupS3StorageConfig {
  const SagemakerFeatureGroupS3StorageConfig({
    this.kmsKeyId,
    this.resolvedOutputS3Uri,
    required this.s3Uri,
  });

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? resolvedOutputS3Uri;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'resolved_output_s3_uri': ?resolvedOutputS3Uri?.toTfJson(),
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

  final TfArg<SagemakerFeatureGroupStorageType>? storageType;

  final SagemakerFeatureGroupSecurityConfig? securityConfig;

  final SagemakerFeatureGroupTtlDuration? ttlDuration;

  Map<String, Object?> encode() => {
    'enable_online_store': ?enableOnlineStore?.toTfJson(),
    'storage_type': ?storageType?.toTfJson(),
    'security_config': ?securityConfig?.encode(),
    'ttl_duration': ?ttlDuration?.encode(),
  };
}

/// `storage_type` — derived from the provider schema description.
enum SagemakerFeatureGroupStorageType implements TerraformEnum {
  standard('Standard'),
  standardV2('Standard_V2'),
  inmemory('InMemory');

  const SagemakerFeatureGroupStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `online_store_config.security_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupSecurityConfig {
  const SagemakerFeatureGroupSecurityConfig({this.kmsKeyId});

  final RefTo<AwsKmsKey>? kmsKeyId;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `online_store_config.ttl_duration` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupTtlDuration {
  const SagemakerFeatureGroupTtlDuration({this.unit, this.value});

  final TfArg<SagemakerFeatureGroupUnit>? unit;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'unit': ?unit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum SagemakerFeatureGroupUnit implements TerraformEnum {
  seconds('Seconds'),
  minutes('Minutes'),
  hours('Hours'),
  days('Days'),
  weeks('Weeks');

  const SagemakerFeatureGroupUnit(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerFeatureGroupThroughputMode>? throughputMode;

  Map<String, Object?> encode() => {
    'provisioned_read_capacity_units': ?provisionedReadCapacityUnits
        ?.toTfJson(),
    'provisioned_write_capacity_units': ?provisionedWriteCapacityUnits
        ?.toTfJson(),
    'throughput_mode': ?throughputMode?.toTfJson(),
  };
}

/// `throughput_mode` — derived from the provider schema description.
enum SagemakerFeatureGroupThroughputMode implements TerraformEnum {
  ondemand('OnDemand'),
  provisioned('Provisioned');

  const SagemakerFeatureGroupThroughputMode(this.terraformValue);
  @override
  final String terraformValue;
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
    required RefTo<AwsIamRole> roleArn,
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
           'description': ?description,
           'event_time_feature_name': eventTimeFeatureName,
           'feature_group_name': featureGroupName,
           'record_identifier_feature_name': recordIdentifierFeatureName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerFeatureGroup>`.
  RefTo<AwsSagemakerFeatureGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `event_time_feature_name` attribute.
  TfRef<String> get eventTimeFeatureNameRef =>
      TfRef.attribute<String>(this, 'event_time_feature_name');

  /// Reference to `feature_group_name` attribute.
  TfRef<String> get featureGroupNameRef =>
      TfRef.attribute<String>(this, 'feature_group_name');

  /// Reference to `record_identifier_feature_name` attribute.
  TfRef<String> get recordIdentifierFeatureNameRef =>
      TfRef.attribute<String>(this, 'record_identifier_feature_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
