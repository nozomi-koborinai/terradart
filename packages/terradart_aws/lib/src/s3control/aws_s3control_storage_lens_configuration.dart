// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_s3control_storage_lens_configuration`.
const Set<String> _awsS3controlStorageLensConfigurationSensitive = <String>{};

/// Typed helper for the `storage_lens_configuration` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationStorageLensConfiguration {
  const S3controlStorageLensConfigurationStorageLensConfiguration({
    required this.enabled,
    this.prefixDelimiter,
    required this.accountLevel,
    this.awsOrg,
    this.dataExport,
    this.exclude,
    this.expandedPrefixesDataExport,
    this.include,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? prefixDelimiter;

  final S3controlStorageLensConfigurationAccountLevel accountLevel;

  final S3controlStorageLensConfigurationAwsOrg? awsOrg;

  final S3controlStorageLensConfigurationDataExport? dataExport;

  final S3controlStorageLensConfigurationExclude? exclude;

  final S3controlStorageLensConfigurationExpandedPrefixesDataExport?
  expandedPrefixesDataExport;

  final S3controlStorageLensConfigurationInclude? include;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'prefix_delimiter': ?prefixDelimiter?.toTfJson(),
    'account_level': accountLevel.encode(),
    'aws_org': ?awsOrg?.encode(),
    'data_export': ?dataExport?.encode(),
    'exclude': ?exclude?.encode(),
    'expanded_prefixes_data_export': ?expandedPrefixesDataExport?.encode(),
    'include': ?include?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.account_level` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationAccountLevel {
  const S3controlStorageLensConfigurationAccountLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    this.advancedPerformanceMetrics,
    required this.bucketLevel,
    this.detailedStatusCodeMetrics,
  });

  final S3controlStorageLensConfigurationActivityMetrics? activityMetrics;

  final S3controlStorageLensConfigurationAdvancedCostOptimizationMetrics?
  advancedCostOptimizationMetrics;

  final S3controlStorageLensConfigurationAdvancedDataProtectionMetrics?
  advancedDataProtectionMetrics;

  final S3controlStorageLensConfigurationAdvancedPerformanceMetrics?
  advancedPerformanceMetrics;

  final S3controlStorageLensConfigurationBucketLevel bucketLevel;

  final S3controlStorageLensConfigurationDetailedStatusCodeMetrics?
  detailedStatusCodeMetrics;

  Map<String, Object?> encode() => {
    'activity_metrics': ?activityMetrics?.encode(),
    'advanced_cost_optimization_metrics': ?advancedCostOptimizationMetrics
        ?.encode(),
    'advanced_data_protection_metrics': ?advancedDataProtectionMetrics
        ?.encode(),
    'advanced_performance_metrics': ?advancedPerformanceMetrics?.encode(),
    'bucket_level': bucketLevel.encode(),
    'detailed_status_code_metrics': ?detailedStatusCodeMetrics?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.account_level.activity_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationActivityMetrics {
  const S3controlStorageLensConfigurationActivityMetrics({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.account_level.advanced_cost_optimization_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationAdvancedCostOptimizationMetrics {
  const S3controlStorageLensConfigurationAdvancedCostOptimizationMetrics({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.account_level.advanced_data_protection_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationAdvancedDataProtectionMetrics {
  const S3controlStorageLensConfigurationAdvancedDataProtectionMetrics({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.account_level.advanced_performance_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationAdvancedPerformanceMetrics {
  const S3controlStorageLensConfigurationAdvancedPerformanceMetrics({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.account_level.bucket_level` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationBucketLevel {
  const S3controlStorageLensConfigurationBucketLevel({
    this.activityMetrics,
    this.advancedCostOptimizationMetrics,
    this.advancedDataProtectionMetrics,
    this.advancedPerformanceMetrics,
    this.detailedStatusCodeMetrics,
    this.prefixLevel,
  });

  final S3controlStorageLensConfigurationActivityMetrics? activityMetrics;

  final S3controlStorageLensConfigurationAdvancedCostOptimizationMetrics?
  advancedCostOptimizationMetrics;

  final S3controlStorageLensConfigurationAdvancedDataProtectionMetrics?
  advancedDataProtectionMetrics;

  final S3controlStorageLensConfigurationAdvancedPerformanceMetrics?
  advancedPerformanceMetrics;

  final S3controlStorageLensConfigurationDetailedStatusCodeMetrics?
  detailedStatusCodeMetrics;

  final S3controlStorageLensConfigurationPrefixLevel? prefixLevel;

  Map<String, Object?> encode() => {
    'activity_metrics': ?activityMetrics?.encode(),
    'advanced_cost_optimization_metrics': ?advancedCostOptimizationMetrics
        ?.encode(),
    'advanced_data_protection_metrics': ?advancedDataProtectionMetrics
        ?.encode(),
    'advanced_performance_metrics': ?advancedPerformanceMetrics?.encode(),
    'detailed_status_code_metrics': ?detailedStatusCodeMetrics?.encode(),
    'prefix_level': ?prefixLevel?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.account_level.detailed_status_code_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationDetailedStatusCodeMetrics {
  const S3controlStorageLensConfigurationDetailedStatusCodeMetrics({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.account_level.bucket_level.prefix_level` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationPrefixLevel {
  const S3controlStorageLensConfigurationPrefixLevel({
    required this.storageMetrics,
  });

  final S3controlStorageLensConfigurationStorageMetrics storageMetrics;

  Map<String, Object?> encode() => {'storage_metrics': storageMetrics.encode()};
}

/// Typed helper for the `storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationStorageMetrics {
  const S3controlStorageLensConfigurationStorageMetrics({
    this.enabled,
    this.selectionCriteria,
  });

  final TfArg<bool>? enabled;

  final S3controlStorageLensConfigurationSelectionCriteria? selectionCriteria;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'selection_criteria': ?selectionCriteria?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationSelectionCriteria {
  const S3controlStorageLensConfigurationSelectionCriteria({
    this.delimiter,
    this.maxDepth,
    this.minStorageBytesPercentage,
  });

  final TfArg<String>? delimiter;

  final TfArg<num>? maxDepth;

  final TfArg<num>? minStorageBytesPercentage;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'max_depth': ?maxDepth?.toTfJson(),
    'min_storage_bytes_percentage': ?minStorageBytesPercentage?.toTfJson(),
  };
}

/// Typed helper for the `storage_lens_configuration.aws_org` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationAwsOrg {
  const S3controlStorageLensConfigurationAwsOrg({required this.arn});

  final TfArg<String> arn;

  Map<String, Object?> encode() => {'arn': arn.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.data_export` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationDataExport {
  const S3controlStorageLensConfigurationDataExport({
    this.cloudWatchMetrics,
    this.s3BucketDestination,
    this.storageLensTableDestination,
  });

  final S3controlStorageLensConfigurationCloudWatchMetrics? cloudWatchMetrics;

  final S3controlStorageLensConfigurationS3BucketDestination?
  s3BucketDestination;

  final S3controlStorageLensConfigurationStorageLensTableDestination?
  storageLensTableDestination;

  Map<String, Object?> encode() => {
    'cloud_watch_metrics': ?cloudWatchMetrics?.encode(),
    's3_bucket_destination': ?s3BucketDestination?.encode(),
    'storage_lens_table_destination': ?storageLensTableDestination?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.data_export.cloud_watch_metrics` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationCloudWatchMetrics {
  const S3controlStorageLensConfigurationCloudWatchMetrics({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.data_export.s3_bucket_destination` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationS3BucketDestination {
  const S3controlStorageLensConfigurationS3BucketDestination({
    required this.accountId,
    required this.arn,
    required this.format,
    required this.outputSchemaVersion,
    this.prefix,
    this.encryption,
  });

  final TfArg<String> accountId;

  final TfArg<String> arn;

  final TfArg<String> format;

  final TfArg<String> outputSchemaVersion;

  final TfArg<String>? prefix;

  final S3controlStorageLensConfigurationEncryption? encryption;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'arn': arn.toTfJson(),
    'format': format.toTfJson(),
    'output_schema_version': outputSchemaVersion.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'encryption': ?encryption?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.data_export.s3_bucket_destination.encryption` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationEncryption {
  const S3controlStorageLensConfigurationEncryption({this.sseKms, this.sseS3});

  final S3controlStorageLensConfigurationSseKms? sseKms;

  final List<S3controlStorageLensConfigurationSseS3>? sseS3;

  Map<String, Object?> encode() => {
    'sse_kms': ?sseKms?.encode(),
    if (sseS3 != null) 'sse_s3': [for (final e in sseS3!) e.encode()],
  };
}

/// Typed helper for the `storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_kms` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationSseKms {
  const S3controlStorageLensConfigurationSseKms({required this.keyId});

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {'key_id': keyId.encodeAs('arn').toTfJson()};
}

/// Typed helper for the `storage_lens_configuration.data_export.s3_bucket_destination.encryption.sse_s3` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationSseS3 {
  const S3controlStorageLensConfigurationSseS3();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `storage_lens_configuration.data_export.storage_lens_table_destination` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3controlStorageLensConfigurationStorageLensTableDestination {
  const S3controlStorageLensConfigurationStorageLensTableDestination({
    required this.enabled,
    this.encryption,
  });

  final TfArg<bool> enabled;

  final S3controlStorageLensConfigurationEncryption? encryption;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'encryption': ?encryption?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.exclude` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationExclude {
  const S3controlStorageLensConfigurationExclude({this.buckets, this.regions});

  final TfArg<List<String>>? buckets;

  final TfArg<List<String>>? regions;

  Map<String, Object?> encode() => {
    'buckets': ?buckets?.toTfJson(),
    'regions': ?regions?.toTfJson(),
  };
}

/// Typed helper for the `storage_lens_configuration.expanded_prefixes_data_export` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationExpandedPrefixesDataExport {
  const S3controlStorageLensConfigurationExpandedPrefixesDataExport({
    this.s3BucketDestination,
    this.storageLensTableDestination,
  });

  final S3controlStorageLensConfigurationS3BucketDestination?
  s3BucketDestination;

  final S3controlStorageLensConfigurationStorageLensTableDestination?
  storageLensTableDestination;

  Map<String, Object?> encode() => {
    's3_bucket_destination': ?s3BucketDestination?.encode(),
    'storage_lens_table_destination': ?storageLensTableDestination?.encode(),
  };
}

/// Typed helper for the `storage_lens_configuration.include` block of
/// `aws_s3control_storage_lens_configuration` (derived from provider schema).
@immutable
final class S3controlStorageLensConfigurationInclude {
  const S3controlStorageLensConfigurationInclude({this.buckets, this.regions});

  final TfArg<List<String>>? buckets;

  final TfArg<List<String>>? regions;

  Map<String, Object?> encode() => {
    'buckets': ?buckets?.toTfJson(),
    'regions': ?regions?.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_storage_lens_configuration`.
final class AwsS3controlStorageLensConfiguration extends Resource {
  static const String tfType = 'aws_s3control_storage_lens_configuration';

  AwsS3controlStorageLensConfiguration({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> configId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required S3controlStorageLensConfigurationStorageLensConfiguration
    storageLensConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'config_id': configId,
           'region': ?region,
           'tags': ?tags,
           'storage_lens_configuration': TfArg.literal(
             storageLensConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlStorageLensConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3controlStorageLensConfiguration>`.
  RefTo<AwsS3controlStorageLensConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `config_id` attribute.
  TfRef<String> get configIdRef => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
