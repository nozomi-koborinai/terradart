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
final class S3BucketMetadataConfigurationMetadataConfiguration {
  const S3BucketMetadataConfigurationMetadataConfiguration({
    this.inventoryTableConfiguration,
    this.journalTableConfiguration,
  });

  final List<
    S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration
  >?
  inventoryTableConfiguration;

  final List<
    S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration
  >?
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
final class S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration {
  const S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration({
    required this.configurationState,
    this.encryptionConfiguration,
  });

  final TfArg<
    S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationConfigurationState
  >
  configurationState;

  final List<
    S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration
  >?
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
enum S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationConfigurationState
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationConfigurationState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration.inventory_table_configuration.encryption_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration {
  const S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<
    S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfigurationSseAlgorithm
  >
  sseAlgorithm;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
enum S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfigurationSseAlgorithm
    implements TerraformEnum {
  awsKms('aws:kms'),
  aes256('AES256');

  const S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfigurationSseAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration.journal_table_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration {
  const S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration({
    this.encryptionConfiguration,
    this.recordExpiration,
  });

  final List<
    S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration
  >?
  encryptionConfiguration;

  final List<
    S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration
  >?
  recordExpiration;

  Map<String, Object?> encode() => {
    if (encryptionConfiguration != null)
      'encryption_configuration': [
        for (final e in encryptionConfiguration!) e.encode(),
      ],
    if (recordExpiration != null)
      'record_expiration': [for (final e in recordExpiration!) e.encode()],
  };
}

/// Typed helper for the `metadata_configuration.journal_table_configuration.encryption_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration {
  const S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<
    S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfigurationSseAlgorithm
  >
  sseAlgorithm;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
enum S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfigurationSseAlgorithm
    implements TerraformEnum {
  awsKms('aws:kms'),
  aes256('AES256');

  const S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationEncryptionConfigurationSseAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration.journal_table_configuration.record_expiration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration {
  const S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration({
    this.days,
    required this.expiration,
  });

  final TfArg<num>? days;

  final TfArg<
    S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationExpiration
  >
  expiration;

  Map<String, Object?> encode() => {
    'days': ?days?.toTfJson(),
    'expiration': expiration.toTfJson(),
  };
}

/// `expiration` — derived from the provider schema description.
enum S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationExpiration
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationExpiration(
    this.terraformValue,
  );
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
    List<S3BucketMetadataConfigurationMetadataConfiguration>?
    metadataConfiguration,
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
