// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> configurationState;

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

/// Typed helper for the `metadata_configuration.inventory_table_configuration.encryption_configuration` block of
/// `aws_s3_bucket_metadata_configuration` (derived from provider schema).
@immutable
final class S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration {
  const S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationEncryptionConfiguration({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> sseAlgorithm;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
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

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> sseAlgorithm;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
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

  final TfArg<String> expiration;

  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    'expiration': expiration.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_metadata_configuration`.
final class AwsS3BucketMetadataConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_metadata_configuration';

  AwsS3BucketMetadataConfiguration({
    required super.localName,
    required TfArg<String> bucket,
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
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           if (metadataConfiguration != null)
             'metadata_configuration': TfArg.literal([
               for (final e in metadataConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketMetadataConfigurationSensitive;
}
