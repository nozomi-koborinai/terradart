// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoints`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointsSensitive =
    <String>{};

/// Data Zero Trust Gateway Proxy Endpoints enum for `direction`.
extension type const DataZeroTrustGatewayProxyEndpointsDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataZeroTrustGatewayProxyEndpointsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustGatewayProxyEndpointsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustGatewayProxyEndpointsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataZeroTrustGatewayProxyEndpointsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataZeroTrustGatewayProxyEndpointsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustGatewayProxyEndpointsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Zero Trust Gateway Proxy Endpoints Order enum for `order_by`.
extension type const DataZeroTrustGatewayProxyEndpointsOrderBy._(
  TfArg<String> _
) implements TfArg<String> {
  DataZeroTrustGatewayProxyEndpointsOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustGatewayProxyEndpointsOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustGatewayProxyEndpointsOrderBy.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataZeroTrustGatewayProxyEndpointsOrderBy._(
    TfArgLiteral('name'),
  );
  static const createdAt = DataZeroTrustGatewayProxyEndpointsOrderBy._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustGatewayProxyEndpointsOrderBy._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustGatewayProxyEndpointsOrderBy> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoints`.
final class DataCloudflareZeroTrustGatewayProxyEndpoints extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoints';

  DataCloudflareZeroTrustGatewayProxyEndpoints(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataZeroTrustGatewayProxyEndpointsDirection? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    DataZeroTrustGatewayProxyEndpointsOrderBy? orderBy,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `filter` attribute.
  TfRef<List<String>> get filter =>
      TfRef.attribute<List<String>>(this, 'filter');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
