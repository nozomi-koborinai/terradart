// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_public_access_block`.
const Set<String> _awsS3BucketPublicAccessBlockSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_public_access_block`.
final class AwsS3BucketPublicAccessBlock extends Resource {
  static const String tfType = 'aws_s3_bucket_public_access_block';

  AwsS3BucketPublicAccessBlock({
    required super.localName,
    TfArg<bool>? blockPublicAcls,
    TfArg<bool>? blockPublicPolicy,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<bool>? ignorePublicAcls,
    TfArg<String>? region,
    TfArg<bool>? restrictPublicBuckets,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'block_public_acls': ?blockPublicAcls,
           'block_public_policy': ?blockPublicPolicy,
           'bucket': bucket.encodeAs('id'),
           'ignore_public_acls': ?ignorePublicAcls,
           'region': ?region,
           'restrict_public_buckets': ?restrictPublicBuckets,
           'skip_destroy': ?skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketPublicAccessBlockSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketPublicAccessBlock>`.
  RefTo<AwsS3BucketPublicAccessBlock> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_public_acls` attribute.
  TfRef<bool> get blockPublicAcls =>
      TfRef.attribute<bool>(this, 'block_public_acls');

  /// Reference to `block_public_policy` attribute.
  TfRef<bool> get blockPublicPolicy =>
      TfRef.attribute<bool>(this, 'block_public_policy');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `ignore_public_acls` attribute.
  TfRef<bool> get ignorePublicAcls =>
      TfRef.attribute<bool>(this, 'ignore_public_acls');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `restrict_public_buckets` attribute.
  TfRef<bool> get restrictPublicBuckets =>
      TfRef.attribute<bool>(this, 'restrict_public_buckets');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');
}
