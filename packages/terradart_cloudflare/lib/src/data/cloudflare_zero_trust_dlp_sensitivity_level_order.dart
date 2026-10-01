// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dlp_sensitivity_level_order.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_sensitivity_level_order`.
const Set<String> _cloudflareZeroTrustDlpSensitivityLevelOrderSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_sensitivity_level_order`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpSensitivityLevelOrder extends Data {
  static const String tfType =
      'cloudflare_zero_trust_dlp_sensitivity_level_order';

  DataCloudflareZeroTrustDlpSensitivityLevelOrder({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> sensitivityGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'sensitivity_group_id': sensitivityGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpSensitivityLevelOrderSensitive;

  /// A reference to the `cloudflare_zero_trust_dlp_sensitivity_level_order` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDlpSensitivityLevelOrder>`.
  RefTo<CloudflareZeroTrustDlpSensitivityLevelOrder> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `level_ids` attribute.
  TfRef<List<String>> get levelIds =>
      TfRef.attribute<List<String>>(this, 'level_ids');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `sensitivity_group_id` attribute.
  TfRef<String> get sensitivityGroupId =>
      TfRef.attribute<String>(this, 'sensitivity_group_id');
}
