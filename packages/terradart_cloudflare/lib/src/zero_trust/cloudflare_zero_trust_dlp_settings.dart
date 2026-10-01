// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_settings`.
const Set<String> _cloudflareZeroTrustDlpSettingsSensitive = <String>{};

/// Typed helper for the `payload_logging` block of
/// `cloudflare_zero_trust_dlp_settings` (derived from provider schema).
@immutable
final class ZeroTrustDlpSettingsPayloadLogging {
  const ZeroTrustDlpSettingsPayloadLogging({this.maskingLevel, this.publicKey});

  final TfArg<ZeroTrustDlpSettingsMaskingLevel>? maskingLevel;

  final TfArg<String>? publicKey;

  Map<String, Object?> encode() => {
    'masking_level': ?maskingLevel?.toTfJson(),
    'public_key': ?publicKey?.toTfJson(),
  };
}

/// `masking_level` — derived from the provider schema description.
enum ZeroTrustDlpSettingsMaskingLevel implements TerraformEnum {
  full('full'),
  partial('partial'),
  clear('clear'),
  defaultCase('default');

  const ZeroTrustDlpSettingsMaskingLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_settings`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpSettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_settings';

  CloudflareZeroTrustDlpSettings(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? aiContextAnalysis,
    TfArg<bool>? ocr,
    ZeroTrustDlpSettingsPayloadLogging? payloadLogging,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ai_context_analysis': ?aiContextAnalysis,
           'ocr': ?ocr,
           if (payloadLogging != null)
             'payload_logging': TfArg.literal(payloadLogging.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDlpSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpSettings>`.
  RefTo<CloudflareZeroTrustDlpSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ai_context_analysis` attribute.
  TfRef<bool> get aiContextAnalysis =>
      TfRef.attribute<bool>(this, 'ai_context_analysis');

  /// Reference to `ocr` attribute.
  TfRef<bool> get ocr => TfRef.attribute<bool>(this, 'ocr');
}
