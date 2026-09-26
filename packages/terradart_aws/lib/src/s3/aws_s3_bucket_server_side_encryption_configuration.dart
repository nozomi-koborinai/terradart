// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? blockedEncryptionTypes;

  final TfArg<bool>? bucketKeyEnabled;

  final S3BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault?
  applyServerSideEncryptionByDefault;

  Map<String, Object?> encode() => {
    if (blockedEncryptionTypes != null)
      'blocked_encryption_types': blockedEncryptionTypes!.toTfJson(),
    if (bucketKeyEnabled != null)
      'bucket_key_enabled': bucketKeyEnabled!.toTfJson(),
    if (applyServerSideEncryptionByDefault != null)
      'apply_server_side_encryption_by_default':
          applyServerSideEncryptionByDefault!.encode(),
  };
}

/// Typed helper for the `rule.apply_server_side_encryption_by_default` block of
/// `aws_s3_bucket_server_side_encryption_configuration` (derived from provider schema).
@immutable
final class S3BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault {
  const S3BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault({
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  final TfArg<String>? kmsMasterKeyId;

  final TfArg<String> sseAlgorithm;

  Map<String, Object?> encode() => {
    if (kmsMasterKeyId != null) 'kms_master_key_id': kmsMasterKeyId!.toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_server_side_encryption_configuration`.
final class AwsS3BucketServerSideEncryptionConfiguration extends Resource {
  static const String tfType =
      'aws_s3_bucket_server_side_encryption_configuration';

  AwsS3BucketServerSideEncryptionConfiguration({
    required super.localName,
    required TfArg<String> bucket,
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
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketServerSideEncryptionConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
