// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_endpoint`.
const Set<String> _awsRoute53ResolverEndpointSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_route53_resolver_endpoint` (derived from provider schema).
@immutable
final class DataRoute53ResolverEndpointFilter {
  const DataRoute53ResolverEndpointFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_resolver_endpoint`.
final class DataAwsRoute53ResolverEndpoint extends Data {
  static const String tfType = 'aws_route53_resolver_endpoint';

  DataAwsRoute53ResolverEndpoint({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? resolverEndpointId,
    List<DataRoute53ResolverEndpointFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (resolverEndpointId != null)
             'resolver_endpoint_id': resolverEndpointId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `ip_addresses` attribute.
  TfRef<List<String>> get ipAddresses =>
      TfRef.attribute<List<String>>(this, 'ip_addresses');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `resolver_endpoint_type` attribute.
  TfRef<String> get resolverEndpointType =>
      TfRef.attribute<String>(this, 'resolver_endpoint_type');

  /// Reference to `rni_enhanced_metrics_enabled` attribute.
  TfRef<bool> get rniEnhancedMetricsEnabled =>
      TfRef.attribute<bool>(this, 'rni_enhanced_metrics_enabled');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `target_name_server_metrics_enabled` attribute.
  TfRef<bool> get targetNameServerMetricsEnabled =>
      TfRef.attribute<bool>(this, 'target_name_server_metrics_enabled');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
