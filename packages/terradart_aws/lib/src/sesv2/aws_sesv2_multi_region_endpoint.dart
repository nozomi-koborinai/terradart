// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_multi_region_endpoint`.
const Set<String> _awsSesv2MultiRegionEndpointSensitive = <String>{};

/// Typed helper for the `details` block of
/// `aws_sesv2_multi_region_endpoint` (derived from provider schema).
@immutable
final class Sesv2MultiRegionEndpointDetails {
  const Sesv2MultiRegionEndpointDetails({this.routesDetails});

  final List<Sesv2MultiRegionEndpointDetailsRoutesDetails>? routesDetails;

  Map<String, Object?> encode() => {
    if (routesDetails != null)
      'routes_details': [for (final e in routesDetails!) e.encode()],
  };
}

/// Typed helper for the `details.routes_details` block of
/// `aws_sesv2_multi_region_endpoint` (derived from provider schema).
@immutable
final class Sesv2MultiRegionEndpointDetailsRoutesDetails {
  const Sesv2MultiRegionEndpointDetailsRoutesDetails({required this.region});

  final TfArg<String> region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// Factory wrapper for `aws_sesv2_multi_region_endpoint`.
final class AwsSesv2MultiRegionEndpoint extends Resource {
  static const String tfType = 'aws_sesv2_multi_region_endpoint';

  AwsSesv2MultiRegionEndpoint({
    required super.localName,
    required TfArg<String> endpointName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Sesv2MultiRegionEndpointDetails>? details,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_name': endpointName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (details != null)
             'details': TfArg.literal([for (final e in details) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2MultiRegionEndpointSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `routes` attribute.
  TfRef<List<Map<String, Object?>>> get routes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routes');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
