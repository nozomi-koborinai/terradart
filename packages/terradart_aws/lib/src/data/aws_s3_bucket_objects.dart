// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_objects`.
const Set<String> _awsS3BucketObjectsSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_objects`.
final class DataAwsS3BucketObjects extends Data {
  static const String tfType = 'aws_s3_bucket_objects';

  DataAwsS3BucketObjects({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? delimiter,
    TfArg<String>? encodingType,
    TfArg<bool>? fetchOwner,
    TfArg<num>? maxKeys,
    TfArg<String>? prefix,
    TfArg<String>? region,
    TfArg<String>? startAfter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'delimiter': ?delimiter,
           'encoding_type': ?encodingType,
           'fetch_owner': ?fetchOwner,
           'max_keys': ?maxKeys,
           'prefix': ?prefix,
           'region': ?region,
           'start_after': ?startAfter,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketObjectsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `common_prefixes` attribute.
  TfRef<List<String>> get commonPrefixes =>
      TfRef.attribute<List<String>>(this, 'common_prefixes');

  /// Reference to `keys` attribute.
  TfRef<List<String>> get keys => TfRef.attribute<List<String>>(this, 'keys');

  /// Reference to `owners` attribute.
  TfRef<List<String>> get owners =>
      TfRef.attribute<List<String>>(this, 'owners');
}
