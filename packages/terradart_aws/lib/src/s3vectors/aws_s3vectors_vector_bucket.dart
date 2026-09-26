// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3vectors_vector_bucket`.
const Set<String> _awsS3vectorsVectorBucketSensitive = <String>{};

/// Factory wrapper for `aws_s3vectors_vector_bucket`.
final class AwsS3vectorsVectorBucket extends Resource {
  static const String tfType = 'aws_s3vectors_vector_bucket';

  AwsS3vectorsVectorBucket({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? encryptionConfiguration,
    TfArg<bool>? forceDestroy,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vectorBucketName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (encryptionConfiguration != null)
             'encryption_configuration': encryptionConfiguration,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vector_bucket_name': vectorBucketName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3vectorsVectorBucketSensitive;

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vector_bucket_arn` attribute.
  TfRef<String> get vectorBucketArn =>
      TfRef.attribute<String>(this, 'vector_bucket_arn');
}
