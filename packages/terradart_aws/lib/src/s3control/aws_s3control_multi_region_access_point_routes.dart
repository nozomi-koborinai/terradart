// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3control_multi_region_access_point_routes`.
const Set<String> _awsS3controlMultiRegionAccessPointRoutesSensitive =
    <String>{};

/// Typed helper for the `route` block of
/// `aws_s3control_multi_region_access_point_routes` (derived from provider schema).
@immutable
final class S3controlMultiRegionAccessPointRoutesRoute {
  const S3controlMultiRegionAccessPointRoutesRoute({
    required this.bucket,
    required this.region,
    required this.trafficDialPercentage,
  });

  final TfArg<String> bucket;

  final TfArg<String> region;

  final TfArg<num> trafficDialPercentage;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'region': region.toTfJson(),
    'traffic_dial_percentage': trafficDialPercentage.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3control_multi_region_access_point_routes`.
final class AwsS3controlMultiRegionAccessPointRoutes extends Resource {
  static const String tfType = 'aws_s3control_multi_region_access_point_routes';

  AwsS3controlMultiRegionAccessPointRoutes({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> mrap,
    TfArg<String>? region,
    List<S3controlMultiRegionAccessPointRoutesRoute>? route,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'mrap': mrap,
           if (region != null) 'region': region,
           if (route != null)
             'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3controlMultiRegionAccessPointRoutesSensitive;
}
