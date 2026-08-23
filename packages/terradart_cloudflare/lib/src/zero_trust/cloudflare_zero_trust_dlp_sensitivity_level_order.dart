// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_sensitivity_level_order`.
const Set<String> _cloudflareZeroTrustDlpSensitivityLevelOrderSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_sensitivity_level_order`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpSensitivityLevelOrder extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_dlp_sensitivity_level_order';

  CloudflareZeroTrustDlpSensitivityLevelOrder({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<List<String>> levelIds,
    required TfArg<String> sensitivityGroupId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'level_ids': levelIds,
           'sensitivity_group_id': sensitivityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpSensitivityLevelOrderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
