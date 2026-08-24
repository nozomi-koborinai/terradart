// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_settings`.
const Set<String> _cloudflareZeroTrustDlpSettingsSensitive = <String>{};

/// Typed helper for the `payload_logging` block of
/// `cloudflare_zero_trust_dlp_settings` (derived from provider schema).
@immutable
final class ZeroTrustDlpSettingsPayloadLogging {
  const ZeroTrustDlpSettingsPayloadLogging({this.maskingLevel, this.publicKey});

  final TfArg<String>? maskingLevel;

  final TfArg<String>? publicKey;

  Map<String, Object?> encode() => {
    if (maskingLevel != null) 'masking_level': maskingLevel!.toTfJson(),
    if (publicKey != null) 'public_key': publicKey!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_settings`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpSettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_settings';

  CloudflareZeroTrustDlpSettings({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? aiContextAnalysis,
    TfArg<bool>? ocr,
    ZeroTrustDlpSettingsPayloadLogging? payloadLogging,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (aiContextAnalysis != null)
             'ai_context_analysis': aiContextAnalysis,
           if (ocr != null) 'ocr': ocr,
           if (payloadLogging != null)
             'payload_logging': TfArg.literal(payloadLogging.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
