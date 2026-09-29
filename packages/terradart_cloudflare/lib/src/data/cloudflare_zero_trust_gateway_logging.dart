// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_gateway_logging.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_logging`.
const Set<String> _cloudflareZeroTrustGatewayLoggingSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_logging`.
final class DataCloudflareZeroTrustGatewayLogging extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_logging';

  DataCloudflareZeroTrustGatewayLogging({
    required super.localName,
    TfArg<String>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayLoggingSensitive;

  /// A reference to the `cloudflare_zero_trust_gateway_logging` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustGatewayLogging>`.
  RefTo<CloudflareZeroTrustGatewayLogging> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `redact_pii` attribute.
  TfRef<bool> get redactPii => TfRef.attribute<bool>(this, 'redact_pii');
}
