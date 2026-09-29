// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_gateway_proxy_endpoint.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoint`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_gateway_proxy_endpoint` (derived from provider schema).
@immutable
final class DataZeroTrustGatewayProxyEndpointFilter {
  const DataZeroTrustGatewayProxyEndpointFilter({
    this.direction,
    this.filter,
    this.orderBy,
    this.search,
  });

  final TfArg<DataZeroTrustGatewayProxyEndpointFilterDirection>? direction;

  final TfArg<List<Object?>>? filter;

  final TfArg<DataZeroTrustGatewayProxyEndpointFilterOrderBy>? orderBy;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataZeroTrustGatewayProxyEndpointFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataZeroTrustGatewayProxyEndpointFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order_by` — derived from the provider schema description.
enum DataZeroTrustGatewayProxyEndpointFilterOrderBy implements TerraformEnum {
  name('name'),
  createdAt('created_at'),
  updatedAt('updated_at');

  const DataZeroTrustGatewayProxyEndpointFilterOrderBy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoint`.
final class DataCloudflareZeroTrustGatewayProxyEndpoint extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoint';

  DataCloudflareZeroTrustGatewayProxyEndpoint({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? proxyEndpointId,
    DataZeroTrustGatewayProxyEndpointFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'proxy_endpoint_id': ?proxyEndpointId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayProxyEndpointSensitive;

  /// A reference to the `cloudflare_zero_trust_gateway_proxy_endpoint` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustGatewayProxyEndpoint>`.
  RefTo<CloudflareZeroTrustGatewayProxyEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `ips` attribute.
  TfRef<List<String>> get ips => TfRef.attribute<List<String>>(this, 'ips');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
