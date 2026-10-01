// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dlp_sensitivity_group.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_sensitivity_group`.
const Set<String> _cloudflareZeroTrustDlpSensitivityGroupSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_sensitivity_group`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpSensitivityGroup extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_sensitivity_group';

  DataCloudflareZeroTrustDlpSensitivityGroup(
    super.localName, {
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
      _cloudflareZeroTrustDlpSensitivityGroupSensitive;

  /// A reference to the `cloudflare_zero_trust_dlp_sensitivity_group` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDlpSensitivityGroup>`.
  RefTo<CloudflareZeroTrustDlpSensitivityGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `sensitivity_group_id` attribute.
  TfRef<String> get sensitivityGroupId =>
      TfRef.attribute<String>(this, 'sensitivity_group_id');
}
