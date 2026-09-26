// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_access_points`.
const Set<String> _awsS3controlAccessPointsSensitive = <String>{};

/// Factory wrapper for `aws_s3control_access_points`.
final class DataAwsS3controlAccessPoints extends Data {
  static const String tfType = 'aws_s3control_access_points';

  DataAwsS3controlAccessPoints({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? bucket,
    TfArg<String>? dataSourceId,
    TfArg<String>? dataSourceType,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (bucket != null) 'bucket': bucket,
           if (dataSourceId != null) 'data_source_id': dataSourceId,
           if (dataSourceType != null) 'data_source_type': dataSourceType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3controlAccessPointsSensitive;

  /// Reference to `access_points` attribute.
  TfRef<List<Map<String, Object?>>> get accessPoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_points');
}
