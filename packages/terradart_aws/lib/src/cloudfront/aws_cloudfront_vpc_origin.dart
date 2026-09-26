// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_vpc_origin`.
const Set<String> _awsCloudfrontVpcOriginSensitive = <String>{};

/// Typed helper for the `vpc_origin_endpoint_config` block of
/// `aws_cloudfront_vpc_origin` (derived from provider schema).
@immutable
final class CloudfrontVpcOriginVpcOriginEndpointConfig {
  const CloudfrontVpcOriginVpcOriginEndpointConfig({
    required this.arn,
    required this.httpPort,
    required this.httpsPort,
    required this.name,
    required this.originProtocolPolicy,
    this.originSslProtocols,
  });

  final TfArg<String> arn;

  final TfArg<num> httpPort;

  final TfArg<num> httpsPort;

  final TfArg<String> name;

  final TfArg<String> originProtocolPolicy;

  final List<CloudfrontVpcOriginVpcOriginEndpointConfigOriginSslProtocols>?
  originSslProtocols;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'http_port': httpPort.toTfJson(),
    'https_port': httpsPort.toTfJson(),
    'name': name.toTfJson(),
    'origin_protocol_policy': originProtocolPolicy.toTfJson(),
    if (originSslProtocols != null)
      'origin_ssl_protocols': [for (final e in originSslProtocols!) e.encode()],
  };
}

/// Typed helper for the `vpc_origin_endpoint_config.origin_ssl_protocols` block of
/// `aws_cloudfront_vpc_origin` (derived from provider schema).
@immutable
final class CloudfrontVpcOriginVpcOriginEndpointConfigOriginSslProtocols {
  const CloudfrontVpcOriginVpcOriginEndpointConfigOriginSslProtocols({
    required this.items,
    required this.quantity,
  });

  final TfArg<List<Object?>> items;

  final TfArg<num> quantity;

  Map<String, Object?> encode() => {
    'items': items.toTfJson(),
    'quantity': quantity.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_vpc_origin`.
final class AwsCloudfrontVpcOrigin extends Resource {
  static const String tfType = 'aws_cloudfront_vpc_origin';

  AwsCloudfrontVpcOrigin({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    List<CloudfrontVpcOriginVpcOriginEndpointConfig>? vpcOriginEndpointConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (tags != null) 'tags': tags,
           if (vpcOriginEndpointConfig != null)
             'vpc_origin_endpoint_config': TfArg.literal([
               for (final e in vpcOriginEndpointConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontVpcOriginSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
