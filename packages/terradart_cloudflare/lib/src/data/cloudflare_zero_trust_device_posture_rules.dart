// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_rules`.
const Set<String> _cloudflareZeroTrustDevicePostureRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_posture_rules`.
final class DataCloudflareZeroTrustDevicePostureRules extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_posture_rules';

  DataCloudflareZeroTrustDevicePostureRules({
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
      _cloudflareZeroTrustDevicePostureRulesSensitive;
}
