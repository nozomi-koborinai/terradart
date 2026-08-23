// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_settings`.
const Set<String> _cloudflareZeroTrustDlpSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_settings`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpSettings extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_settings';

  DataCloudflareZeroTrustDlpSettings({
    required super.localName,
    required TfArg<String> accountId,
  }) : super(terraformType: tfType, argMap: {'account_id': accountId});

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ai_context_analysis` attribute.
  TfRef<bool> get aiContextAnalysis =>
      TfRef.attribute<bool>(this, 'ai_context_analysis');

  /// Reference to `ocr` attribute.
  TfRef<bool> get ocr => TfRef.attribute<bool>(this, 'ocr');
}
