// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_objects`.
const Set<String> _awsS3BucketObjectsSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_objects`.
final class DataAwsS3BucketObjects extends Data {
  static const String tfType = 'aws_s3_bucket_objects';

  DataAwsS3BucketObjects({
    required super.localName,
    required TfArg<String> bucket,
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
           'bucket': bucket,
           if (delimiter != null) 'delimiter': delimiter,
           if (encodingType != null) 'encoding_type': encodingType,
           if (fetchOwner != null) 'fetch_owner': fetchOwner,
           if (maxKeys != null) 'max_keys': maxKeys,
           if (prefix != null) 'prefix': prefix,
           if (region != null) 'region': region,
           if (startAfter != null) 'start_after': startAfter,
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
