// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_metadata_configuration`.
const Set<String> _awsS3BucketMetadataConfigurationSensitive = <String>{};

/// Typed helper for the `metadata_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfiguration {
  const S3BucketMetadataConfiguration({
    this.inventoryTableConfiguration,
    this.journalTableConfiguration,
  });

  final List<S3BucketMetadataConfigurationInventoryTableConfiguration>?
  inventoryTableConfiguration;

  final List<S3BucketMetadataConfigurationJournalTableConfiguration>?
  journalTableConfiguration;

  Map<String, Object?> encode() => {
    if (inventoryTableConfiguration != null)
      'inventory_table_configuration': [
        for (final e in inventoryTableConfiguration!) e.encode(),
      ],
    if (journalTableConfiguration != null)
      'journal_table_configuration': [
        for (final e in journalTableConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `metadata_configuration.inventory_table_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationInventoryTableConfiguration {
  const S3BucketMetadataConfigurationInventoryTableConfiguration({
    required this.configurationState,
    this.encryptionConfiguration,
  });

  final TfArg<S3BucketMetadataConfigurationState> configurationState;

  final List<S3BucketMetadataConfigurationEncryptionConfiguration>?
  encryptionConfiguration;

  Map<String, Object?> encode() => {
    'configuration_state': configurationState.toTfJson(),
    if (encryptionConfiguration != null)
      'encryption_configuration': [
        for (final e in encryptionConfiguration!) e.encode(),
      ],
  };
}

/// `configuration_state` — derived from the provider schema description.
enum S3BucketMetadataConfigurationState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const S3BucketMetadataConfigurationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration.inventory_table_configuration.encryption_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class S3BucketMetadataConfigurationEncryptionConfiguration {
  const S3BucketMetadataConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<S3BucketMetadataConfigurationSseAlgorithm> sseAlgorithm;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
enum S3BucketMetadataConfigurationSseAlgorithm implements TerraformEnum {
  awsKms('aws:kms'),
  aes256('AES256');

  const S3BucketMetadataConfigurationSseAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration.journal_table_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationJournalTableConfiguration {
  const S3BucketMetadataConfigurationJournalTableConfiguration({
    this.encryptionConfiguration,
    this.recordExpiration,
  });

  final List<S3BucketMetadataConfigurationEncryptionConfiguration>?
  encryptionConfiguration;

  final List<S3BucketMetadataConfigurationRecordExpiration>? recordExpiration;

  Map<String, Object?> encode() => {
    if (encryptionConfiguration != null)
      'encryption_configuration': [
        for (final e in encryptionConfiguration!) e.encode(),
      ],
    if (recordExpiration != null)
      'record_expiration': [for (final e in recordExpiration!) e.encode()],
  };
}

/// Typed helper for the `metadata_configuration.journal_table_configuration.record_expiration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationRecordExpiration {
  const S3BucketMetadataConfigurationRecordExpiration({
    this.days,
    required this.expiration,
  });

  final TfArg<num>? days;

  final TfArg<S3BucketMetadataConfigurationExpiration> expiration;

  Map<String, Object?> encode() => {
    'days': ?days?.toTfJson(),
    'expiration': expiration.toTfJson(),
  };
}

/// `expiration` — derived from the provider schema description.
enum S3BucketMetadataConfigurationExpiration implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const S3BucketMetadataConfigurationExpiration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_metadata_configuration`.
final class AwsS3BucketMetadataConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_metadata_configuration';

  AwsS3BucketMetadataConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    List<S3BucketMetadataConfiguration>? metadataConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'region': ?region,
           if (metadataConfiguration != null)
             'metadata_configuration': TfArg.literal([
               for (final e in metadataConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketMetadataConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketMetadataConfiguration>`.
  RefTo<AwsS3BucketMetadataConfiguration> get ref => RefTo.of(this);

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
