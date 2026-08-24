// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_risk_behavior`.
const Set<String> _cloudflareZeroTrustRiskBehaviorSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_risk_behavior`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustRiskBehavior extends Data {
  static const String tfType = 'cloudflare_zero_trust_risk_behavior';

  DataCloudflareZeroTrustRiskBehavior({
    required super.localName,
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustRiskBehaviorSensitive;
}
