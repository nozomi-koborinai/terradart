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

  final S3BucketMetadataConfigurationState configurationState;

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
extension type const S3BucketMetadataConfigurationState._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketMetadataConfigurationState.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketMetadataConfigurationState.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketMetadataConfigurationState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = S3BucketMetadataConfigurationState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = S3BucketMetadataConfigurationState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<S3BucketMetadataConfigurationState> values = [
    enabled,
    disabled,
  ];
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

  final S3BucketMetadataConfigurationSseAlgorithm sseAlgorithm;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
extension type const S3BucketMetadataConfigurationSseAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketMetadataConfigurationSseAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketMetadataConfigurationSseAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketMetadataConfigurationSseAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const awsKms = S3BucketMetadataConfigurationSseAlgorithm._(
    TfArgLiteral('aws:kms'),
  );
  static const aes256 = S3BucketMetadataConfigurationSseAlgorithm._(
    TfArgLiteral('AES256'),
  );

  static const List<S3BucketMetadataConfigurationSseAlgorithm> values = [
    awsKms,
    aes256,
  ];
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

  final S3BucketMetadataConfigurationExpiration expiration;

  Map<String, Object?> encode() => {
    'days': ?days?.toTfJson(),
    'expiration': expiration.toTfJson(),
  };
}

/// `expiration` — derived from the provider schema description.
extension type const S3BucketMetadataConfigurationExpiration._(TfArg<String> _)
    implements TfArg<String> {
  S3BucketMetadataConfigurationExpiration.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketMetadataConfigurationExpiration.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketMetadataConfigurationExpiration.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = S3BucketMetadataConfigurationExpiration._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = S3BucketMetadataConfigurationExpiration._(
    TfArgLiteral('DISABLED'),
  );

  static const List<S3BucketMetadataConfigurationExpiration> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_s3_bucket_metadata_configuration`.
final class AwsS3BucketMetadataConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_metadata_configuration';

  AwsS3BucketMetadataConfiguration(
    super.localName, {
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
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
