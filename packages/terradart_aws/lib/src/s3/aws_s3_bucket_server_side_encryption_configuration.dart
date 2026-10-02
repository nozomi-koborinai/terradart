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

  final List<S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes>?
  blockedEncryptionTypes;

  final TfArg<bool>? bucketKeyEnabled;

  final S3BucketServerSideEncryptionConfigurationApplyServerSideEncryptionByDefault?
  applyServerSideEncryptionByDefault;

  @internal
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
extension type const S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes._(
        TfArgLiteral('NONE'),
      );
  static const sseC =
      S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes._(
        TfArgLiteral('SSE-C'),
      );

  static const List<
    S3BucketServerSideEncryptionConfigurationBlockedEncryptionTypes
  >
  values = [none, sseC];
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

  final S3BucketServerSideEncryptionConfigurationSseAlgorithm sseAlgorithm;

  @internal
  Map<String, Object?> encode() => {
    'kms_master_key_id': ?kmsMasterKeyId?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
extension type const S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketServerSideEncryptionConfigurationSseAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketServerSideEncryptionConfigurationSseAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const S3BucketServerSideEncryptionConfigurationSseAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const aes256 = S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
    TfArgLiteral('AES256'),
  );
  static const awsFsx = S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
    TfArgLiteral('aws:fsx'),
  );
  static const awsBackup =
      S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
        TfArgLiteral('aws:backup'),
      );
  static const awsKms = S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
    TfArgLiteral('aws:kms'),
  );
  static const awsKmsDsse =
      S3BucketServerSideEncryptionConfigurationSseAlgorithm._(
        TfArgLiteral('aws:kms:dsse'),
      );

  static const List<S3BucketServerSideEncryptionConfigurationSseAlgorithm>
  values = [aes256, awsFsx, awsBackup, awsKms, awsKmsDsse];
}

/// Factory wrapper for `aws_s3_bucket_server_side_encryption_configuration`.
final class AwsS3BucketServerSideEncryptionConfiguration extends Resource {
  static const String tfType =
      'aws_s3_bucket_server_side_encryption_configuration';

  AwsS3BucketServerSideEncryptionConfiguration(
    super.localName, {
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
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
