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

  final SagemakerFeatureGroupCollectionType? collectionType;

  final TfArg<String>? featureName;

  final SagemakerFeatureGroupFeatureType? featureType;

  final SagemakerFeatureGroupCollectionConfig? collectionConfig;

  @internal
  Map<String, Object?> encode() => {
    'collection_type': ?collectionType?.toTfJson(),
    'feature_name': ?featureName?.toTfJson(),
    'feature_type': ?featureType?.toTfJson(),
    'collection_config': ?collectionConfig?.encode(),
  };
}

/// `collection_type` — derived from the provider schema description.
extension type const SagemakerFeatureGroupCollectionType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupCollectionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupCollectionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupCollectionType.arg(TfArg<String> arg)
    : this._(arg);

  static const list = SagemakerFeatureGroupCollectionType._(
    TfArgLiteral('List'),
  );
  static const set = SagemakerFeatureGroupCollectionType._(TfArgLiteral('Set'));
  static const vector = SagemakerFeatureGroupCollectionType._(
    TfArgLiteral('Vector'),
  );

  static const List<SagemakerFeatureGroupCollectionType> values = [
    list,
    set,
    vector,
  ];
}

/// `feature_type` — derived from the provider schema description.
extension type const SagemakerFeatureGroupFeatureType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupFeatureType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupFeatureType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupFeatureType.arg(TfArg<String> arg) : this._(arg);

  static const integral = SagemakerFeatureGroupFeatureType._(
    TfArgLiteral('Integral'),
  );
  static const fractional = SagemakerFeatureGroupFeatureType._(
    TfArgLiteral('Fractional'),
  );
  static const string = SagemakerFeatureGroupFeatureType._(
    TfArgLiteral('String'),
  );

  static const List<SagemakerFeatureGroupFeatureType> values = [
    integral,
    fractional,
    string,
  ];
}

/// Typed helper for the `feature_definition.collection_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupCollectionConfig {
  const SagemakerFeatureGroupCollectionConfig({this.vectorConfig});

  final SagemakerFeatureGroupVectorConfig? vectorConfig;

  @internal
  Map<String, Object?> encode() => {'vector_config': ?vectorConfig?.encode()};
}

/// Typed helper for the `feature_definition.collection_config.vector_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupVectorConfig {
  const SagemakerFeatureGroupVectorConfig({this.dimension});

  final TfArg<num>? dimension;

  @internal
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

  final SagemakerFeatureGroupTableFormat? tableFormat;

  final SagemakerFeatureGroupDataCatalogConfig? dataCatalogConfig;

  final SagemakerFeatureGroupS3StorageConfig s3StorageConfig;

  @internal
  Map<String, Object?> encode() => {
    'disable_glue_table_creation': ?disableGlueTableCreation?.toTfJson(),
    'table_format': ?tableFormat?.toTfJson(),
    'data_catalog_config': ?dataCatalogConfig?.encode(),
    's3_storage_config': s3StorageConfig.encode(),
  };
}

/// `table_format` — derived from the provider schema description.
extension type const SagemakerFeatureGroupTableFormat._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupTableFormat.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupTableFormat.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupTableFormat.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = SagemakerFeatureGroupTableFormat._(
    TfArgLiteral('Default'),
  );
  static const glue = SagemakerFeatureGroupTableFormat._(TfArgLiteral('Glue'));
  static const iceberg = SagemakerFeatureGroupTableFormat._(
    TfArgLiteral('Iceberg'),
  );

  static const List<SagemakerFeatureGroupTableFormat> values = [
    defaultCase,
    glue,
    iceberg,
  ];
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

  @internal
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

  @internal
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

  final SagemakerFeatureGroupStorageType? storageType;

  final SagemakerFeatureGroupSecurityConfig? securityConfig;

  final SagemakerFeatureGroupTtlDuration? ttlDuration;

  @internal
  Map<String, Object?> encode() => {
    'enable_online_store': ?enableOnlineStore?.toTfJson(),
    'storage_type': ?storageType?.toTfJson(),
    'security_config': ?securityConfig?.encode(),
    'ttl_duration': ?ttlDuration?.encode(),
  };
}

/// `storage_type` — derived from the provider schema description.
extension type const SagemakerFeatureGroupStorageType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupStorageType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupStorageType.arg(TfArg<String> arg) : this._(arg);

  static const standard = SagemakerFeatureGroupStorageType._(
    TfArgLiteral('Standard'),
  );
  static const standardV2 = SagemakerFeatureGroupStorageType._(
    TfArgLiteral('Standard_V2'),
  );
  static const inmemory = SagemakerFeatureGroupStorageType._(
    TfArgLiteral('InMemory'),
  );

  static const List<SagemakerFeatureGroupStorageType> values = [
    standard,
    standardV2,
    inmemory,
  ];
}

/// Typed helper for the `online_store_config.security_config` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupSecurityConfig {
  const SagemakerFeatureGroupSecurityConfig({this.kmsKeyId});

  final RefTo<AwsKmsKey>? kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `online_store_config.ttl_duration` block of
/// `aws_sagemaker_feature_group` (derived from provider schema).
@immutable
final class SagemakerFeatureGroupTtlDuration {
  const SagemakerFeatureGroupTtlDuration({this.unit, this.value});

  final SagemakerFeatureGroupUnit? unit;

  final TfArg<num>? value;

  @internal
  Map<String, Object?> encode() => {
    'unit': ?unit?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
extension type const SagemakerFeatureGroupUnit._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupUnit.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupUnit.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupUnit.arg(TfArg<String> arg) : this._(arg);

  static const seconds = SagemakerFeatureGroupUnit._(TfArgLiteral('Seconds'));
  static const minutes = SagemakerFeatureGroupUnit._(TfArgLiteral('Minutes'));
  static const hours = SagemakerFeatureGroupUnit._(TfArgLiteral('Hours'));
  static const days = SagemakerFeatureGroupUnit._(TfArgLiteral('Days'));
  static const weeks = SagemakerFeatureGroupUnit._(TfArgLiteral('Weeks'));

  static const List<SagemakerFeatureGroupUnit> values = [
    seconds,
    minutes,
    hours,
    days,
    weeks,
  ];
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

  final SagemakerFeatureGroupThroughputMode? throughputMode;

  @internal
  Map<String, Object?> encode() => {
    'provisioned_read_capacity_units': ?provisionedReadCapacityUnits
        ?.toTfJson(),
    'provisioned_write_capacity_units': ?provisionedWriteCapacityUnits
        ?.toTfJson(),
    'throughput_mode': ?throughputMode?.toTfJson(),
  };
}

/// `throughput_mode` — derived from the provider schema description.
extension type const SagemakerFeatureGroupThroughputMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerFeatureGroupThroughputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerFeatureGroupThroughputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerFeatureGroupThroughputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const ondemand = SagemakerFeatureGroupThroughputMode._(
    TfArgLiteral('OnDemand'),
  );
  static const provisioned = SagemakerFeatureGroupThroughputMode._(
    TfArgLiteral('Provisioned'),
  );

  static const List<SagemakerFeatureGroupThroughputMode> values = [
    ondemand,
    provisioned,
  ];
}

/// Factory wrapper for `aws_sagemaker_feature_group`.
final class AwsSagemakerFeatureGroup extends Resource {
  static const String tfType = 'aws_sagemaker_feature_group';

  AwsSagemakerFeatureGroup(
    super.localName, {
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
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `event_time_feature_name` attribute.
  TfRef<String> get eventTimeFeatureName =>
      TfRef.attribute<String>(this, 'event_time_feature_name');

  /// Reference to `feature_group_name` attribute.
  TfRef<String> get featureGroupName =>
      TfRef.attribute<String>(this, 'feature_group_name');

  /// Reference to `record_identifier_feature_name` attribute.
  TfRef<String> get recordIdentifierFeatureName =>
      TfRef.attribute<String>(this, 'record_identifier_feature_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
