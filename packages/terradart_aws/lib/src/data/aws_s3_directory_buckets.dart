// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_directory_buckets`.
const Set<String> _awsS3DirectoryBucketsSensitive = <String>{};

/// Factory wrapper for `aws_s3_directory_buckets`.
final class DataAwsS3DirectoryBuckets extends Data {
  static const String tfType = 'aws_s3_directory_buckets';

  DataAwsS3DirectoryBuckets({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsS3DirectoryBucketsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `buckets` attribute.
  TfRef<List<String>> get buckets =>
      TfRef.attribute<List<String>>(this, 'buckets');
}
