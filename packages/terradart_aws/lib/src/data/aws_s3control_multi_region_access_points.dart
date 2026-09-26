// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_multi_region_access_points`.
const Set<String> _awsS3controlMultiRegionAccessPointsSensitive = <String>{};

/// Factory wrapper for `aws_s3control_multi_region_access_points`.
final class DataAwsS3controlMultiRegionAccessPoints extends Data {
  static const String tfType = 'aws_s3control_multi_region_access_points';

  DataAwsS3controlMultiRegionAccessPoints({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlMultiRegionAccessPointsSensitive;

  /// Reference to `access_points` attribute.
  TfRef<List<Map<String, Object?>>> get accessPoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_points');
}
