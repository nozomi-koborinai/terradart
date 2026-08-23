// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoint`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoint`.
final class CloudflareZeroTrustGatewayProxyEndpoint extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoint';

  CloudflareZeroTrustGatewayProxyEndpoint({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<List<String>>? ips,
    TfArg<String>? kind,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (ips != null) 'ips': ips,
           if (kind != null) 'kind': kind,
           'name': name,
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

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
