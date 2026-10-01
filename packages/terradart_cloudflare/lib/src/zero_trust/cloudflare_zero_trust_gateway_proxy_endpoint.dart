// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_proxy_endpoint`.
const Set<String> _cloudflareZeroTrustGatewayProxyEndpointSensitive =
    <String>{};

/// Zero Trust Gateway Proxy Endpoint enum for `kind`.
enum ZeroTrustGatewayProxyEndpointKind implements TerraformEnum {
  ip('ip'),
  identity('identity');

  const ZeroTrustGatewayProxyEndpointKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_proxy_endpoint`.
final class CloudflareZeroTrustGatewayProxyEndpoint extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_proxy_endpoint';

  CloudflareZeroTrustGatewayProxyEndpoint({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<List<String>>? ips,
    TfArg<ZeroTrustGatewayProxyEndpointKind>? kind,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ips': ?ips,
           'kind': ?kind,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayProxyEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustGatewayProxyEndpoint>`.
  RefTo<CloudflareZeroTrustGatewayProxyEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ips` attribute.
  TfRef<List<String>> get ips => TfRef.attribute<List<String>>(this, 'ips');
}
