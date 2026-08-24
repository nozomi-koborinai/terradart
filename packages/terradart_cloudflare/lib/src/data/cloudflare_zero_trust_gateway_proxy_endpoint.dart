// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoint`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoint`.
final class DataCloudflareZeroTrustGatewayProxyEndpoint extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoint';

  DataCloudflareZeroTrustGatewayProxyEndpoint({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> proxyEndpointId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'proxy_endpoint_id': proxyEndpointId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayProxyEndpointSensitive;

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
