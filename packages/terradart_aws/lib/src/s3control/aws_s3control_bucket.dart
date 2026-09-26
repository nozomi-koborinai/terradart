// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_bucket`.
const Set<String> _awsS3controlBucketSensitive = <String>{};

/// Factory wrapper for `aws_s3control_bucket`.
final class AwsS3controlBucket extends Resource {
  static const String tfType = 'aws_s3control_bucket';

  AwsS3controlBucket({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> outpostId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'outpost_id': outpostId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlBucketSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `public_access_block_enabled` attribute.
  TfRef<bool> get publicAccessBlockEnabled =>
      TfRef.attribute<bool>(this, 'public_access_block_enabled');
}
