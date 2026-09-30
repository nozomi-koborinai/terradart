// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    required TfArg<String> sensitivityGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
           'sensitivity_group_id': sensitivityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpSensitivityLevelsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `sensitivity_group_id` attribute.
  TfRef<String> get sensitivityGroupIdRef =>
      TfRef.attribute<String>(this, 'sensitivity_group_id');
}
