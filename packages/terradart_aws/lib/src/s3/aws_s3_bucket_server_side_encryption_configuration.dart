// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_server_side_encryption_configuration`.
const Set<String> _awsS3BucketServerSideEncryptionConfigurationSensitive =
    <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_server_side_encryption_configuration` (derived from provider schema).
@immutable
final class S3BucketServerSideEncryptionConfigurationRule {
  const S3BucketServerSideEncryptionConfigurationRule({
    this.blockedEncryptionTypes,
    this.bucketKeyEnabled,
    this.applyServerSideEncryptionByDefault,
  });

  final List<
    TfArg<S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes>
  >?
  blockedEncryptionTypes;

  final TfArg<bool>? bucketKeyEnabled;

  final S3BucketServerSideEncryptionConfigurationApplyServerSideEncryptionByDefault?
  applyServerSideEncryptionByDefault;

  Map<String, Object?> encode() => {
    if (blockedEncryptionTypes != null)
      'blocked_encryption_types': [
        for (final e in blockedEncryptionTypes!) e.toTfJson(),
      ],
    'bucket_key_enabled': ?bucketKeyEnabled?.toTfJson(),
    'apply_server_side_encryption_by_default':
        ?applyServerSideEncryptionByDefault?.encode(),
  };
}

/// `blocked_encryption_types` — derived from the provider schema description.
enum S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes
    implements TerraformEnum {
  none('NONE'),
  sseC('SSE-C');

  const S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.apply_server_side_encryption_by_default` block of
/// `aws_s3_bucket_server_side_encryption_configuration` (derived from provider schema).
@immutable
final class S3BucketServerSideEncryptionConfigurationApplyServerSideEncryptionByDefault {
  const S3BucketServerSideEncryptionConfigurationApplyServerSideEncryptionByDefault({
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  final RefTo<AwsKmsKey>? kmsMasterKeyId;

  final TfArg<S3BucketServerSideEncryptionConfigurationSseAlgorithm>
  sseAlgorithm;

  Map<String, Object?> encode() => {
    'kms_master_key_id': ?kmsMasterKeyId?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
enum S3BucketServerSideEncryptionConfigurationSseAlgorithm
    implements TerraformEnum {
  aes256('AES256'),
  awsFsx('aws:fsx'),
  awsBackup('aws:backup'),
  awsKms('aws:kms'),
  awsKmsDsse('aws:kms:dsse');

  const S3BucketServerSideEncryptionConfigurationSseAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_server_side_encryption_configuration`.
final class AwsS3BucketServerSideEncryptionConfiguration extends Resource {
  static const String tfType =
      'aws_s3_bucket_server_side_encryption_configuration';

  AwsS3BucketServerSideEncryptionConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required List<S3BucketServerSideEncryptionConfigurationRule> rule,
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
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketServerSideEncryptionConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketServerSideEncryptionConfiguration>`.
  RefTo<AwsS3BucketServerSideEncryptionConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
