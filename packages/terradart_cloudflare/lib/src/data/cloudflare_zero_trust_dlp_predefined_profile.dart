// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_predefined_profile`.
const Set<String> _cloudflareZeroTrustDlpPredefinedProfileSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_predefined_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpPredefinedProfile extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_predefined_profile';

  DataCloudflareZeroTrustDlpPredefinedProfile({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> profileId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'profile_id': profileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpPredefinedProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ai_context_enabled` attribute.
  TfRef<bool> get aiContextEnabled =>
      TfRef.attribute<bool>(this, 'ai_context_enabled');

  /// Reference to `allowed_match_count` attribute.
  TfRef<num> get allowedMatchCount =>
      TfRef.attribute<num>(this, 'allowed_match_count');

  /// Reference to `confidence_threshold` attribute.
  TfRef<String> get confidenceThreshold =>
      TfRef.attribute<String>(this, 'confidence_threshold');

  /// Reference to `enabled_entries` attribute.
  TfRef<List<String>> get enabledEntries =>
      TfRef.attribute<List<String>>(this, 'enabled_entries');

  /// Reference to `ocr_enabled` attribute.
  TfRef<bool> get ocrEnabled => TfRef.attribute<bool>(this, 'ocr_enabled');

  /// Reference to `open_access` attribute.
  TfRef<bool> get openAccess => TfRef.attribute<bool>(this, 'open_access');
}
