// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_sensitivity_levels`.
const Set<String> _cloudflareZeroTrustDlpSensitivityLevelsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_sensitivity_levels`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpSensitivityLevels extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_sensitivity_levels';

  DataCloudflareZeroTrustDlpSensitivityLevels({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    required TfArg<String> sensitivityGroupId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           'sensitivity_group_id': sensitivityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpSensitivityLevelsSensitive;
}
