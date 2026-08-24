// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_logging`.
const Set<String> _cloudflareZeroTrustGatewayLoggingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_logging`.
final class DataCloudflareZeroTrustGatewayLogging extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_logging';

  DataCloudflareZeroTrustGatewayLogging({
    required super.localName,
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayLoggingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `redact_pii` attribute.
  TfRef<bool> get redactPii => TfRef.attribute<bool>(this, 'redact_pii');
}
