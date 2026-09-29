// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoints`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoints`.
final class DataCloudflareZeroTrustGatewayProxyEndpoints extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoints';

  DataCloudflareZeroTrustGatewayProxyEndpoints({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    TfArg<String>? orderBy,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayProxyEndpointsSensitive;
}
