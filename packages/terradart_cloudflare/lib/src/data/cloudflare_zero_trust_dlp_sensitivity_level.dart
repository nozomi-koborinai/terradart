// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_sensitivity_level`.
const Set<String> _cloudflareZeroTrustDlpSensitivityLevelSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_sensitivity_level`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpSensitivityLevel extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_sensitivity_level';

  DataCloudflareZeroTrustDlpSensitivityLevel({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> sensitivityGroupId,
    required TfArg<String> sensitivityLevelId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'sensitivity_group_id': sensitivityGroupId,
           'sensitivity_level_id': sensitivityLevelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpSensitivityLevelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
