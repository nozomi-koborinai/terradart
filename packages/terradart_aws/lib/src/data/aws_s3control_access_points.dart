// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3control_access_points`.
const Set<String> _awsS3controlAccessPointsSensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_points`.
final class DataAwsS3controlAccessPoints extends Data {
  static const String tfType = 'aws_s3control_access_points';

  DataAwsS3controlAccessPoints({
    required super.localName,
    TfArg<String>? accountId,
    RefTo<AwsS3Bucket>? bucket,
    TfArg<String>? dataSourceId,
    TfArg<String>? dataSourceType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'bucket': ?bucket?.encodeAs('id'),
           'data_source_id': ?dataSourceId,
           'data_source_type': ?dataSourceType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessPointsSensitive;

  /// Reference to `access_points` attribute.
  TfRef<List<Map<String, Object?>>> get accessPoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_points');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `data_source_type` attribute.
  TfRef<String> get dataSourceType =>
      TfRef.attribute<String>(this, 'data_source_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
