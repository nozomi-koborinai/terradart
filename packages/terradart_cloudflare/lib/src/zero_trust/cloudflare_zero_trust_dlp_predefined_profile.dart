// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_predefined_profile`.
const Set<String> _cloudflareZeroTrustDlpPredefinedProfileSensitive =
    <String>{};

/// Typed helper for the `entries` block of
/// `cloudflare_zero_trust_dlp_predefined_profile` (derived from provider schema).
@immutable
final class ZeroTrustDlpPredefinedProfileEntries {
  const ZeroTrustDlpPredefinedProfileEntries({
    required this.enabled,
    required this.id,
  });

  final TfArg<bool> enabled;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_dlp_predefined_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpPredefinedProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_predefined_profile';

  CloudflareZeroTrustDlpPredefinedProfile({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? aiContextEnabled,
    TfArg<num>? allowedMatchCount,
    TfArg<String>? confidenceThreshold,
    TfArg<List<String>>? enabledEntries,
    TfArg<bool>? ocrEnabled,
    required TfArg<String> profileId,
    List<ZeroTrustDlpPredefinedProfileEntries>? entries,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (aiContextEnabled != null) 'ai_context_enabled': aiContextEnabled,
           if (allowedMatchCount != null)
             'allowed_match_count': allowedMatchCount,
           if (confidenceThreshold != null)
             'confidence_threshold': confidenceThreshold,
           if (enabledEntries != null) 'enabled_entries': enabledEntries,
           if (ocrEnabled != null) 'ocr_enabled': ocrEnabled,
           'profile_id': profileId,
           if (entries != null)
             'entries': TfArg.literal([for (final e in entries) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpPredefinedProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `open_access` attribute.
  TfRef<bool> get openAccess => TfRef.attribute<bool>(this, 'open_access');
}
