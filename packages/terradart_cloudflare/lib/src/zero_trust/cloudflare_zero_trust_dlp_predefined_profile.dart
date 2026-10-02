// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  @internal
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

  CloudflareZeroTrustDlpPredefinedProfile(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? aiContextEnabled,
    TfArg<num>? allowedMatchCount,
    TfArg<String>? confidenceThreshold,
    TfArg<List<String>>? enabledEntries,
    TfArg<bool>? ocrEnabled,
    required TfArg<String> profileId,
    List<ZeroTrustDlpPredefinedProfileEntries>? entries,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ai_context_enabled': ?aiContextEnabled,
           'allowed_match_count': ?allowedMatchCount,
           'confidence_threshold': ?confidenceThreshold,
           'enabled_entries': ?enabledEntries,
           'ocr_enabled': ?ocrEnabled,
           'profile_id': profileId,
           if (entries != null)
             'entries': TfArg.literal([for (final e in entries) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpPredefinedProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpPredefinedProfile>`.
  RefTo<CloudflareZeroTrustDlpPredefinedProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `open_access` attribute.
  TfRef<bool> get openAccess => TfRef.attribute<bool>(this, 'open_access');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

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

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');
}
