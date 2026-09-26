// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_public_access_block`.
const Set<String> _awsS3BucketPublicAccessBlockSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_public_access_block`.
final class AwsS3BucketPublicAccessBlock extends Resource {
  static const String tfType = 'aws_s3_bucket_public_access_block';

  AwsS3BucketPublicAccessBlock({
    required super.localName,
    TfArg<bool>? blockPublicAcls,
    TfArg<bool>? blockPublicPolicy,
    required TfArg<String> bucket,
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
           if (blockPublicAcls != null) 'block_public_acls': blockPublicAcls,
           if (blockPublicPolicy != null)
             'block_public_policy': blockPublicPolicy,
           'bucket': bucket,
           if (ignorePublicAcls != null) 'ignore_public_acls': ignorePublicAcls,
           if (region != null) 'region': region,
           if (restrictPublicBuckets != null)
             'restrict_public_buckets': restrictPublicBuckets,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketPublicAccessBlockSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
