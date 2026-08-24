// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_pacfiles`.
const Set<String> _cloudflareZeroTrustGatewayPacfilesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_pacfiles`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustGatewayPacfiles extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_pacfiles';

  DataCloudflareZeroTrustGatewayPacfiles({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayPacfilesSensitive;
}
