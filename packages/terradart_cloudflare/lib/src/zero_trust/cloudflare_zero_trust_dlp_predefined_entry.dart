// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_predefined_entry`.
const Set<String> _cloudflareZeroTrustDlpPredefinedEntrySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_predefined_entry`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpPredefinedEntry extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_predefined_entry';

  CloudflareZeroTrustDlpPredefinedEntry({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<bool> enabled,
    required TfArg<String> entryId,
    TfArg<String>? profileId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'enabled': enabled,
           'entry_id': entryId,
           if (profileId != null) 'profile_id': profileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpPredefinedEntrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_sensitive` attribute.
  TfRef<bool> get caseSensitive =>
      TfRef.attribute<bool>(this, 'case_sensitive');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `upload_status` attribute.
  TfRef<String> get uploadStatus =>
      TfRef.attribute<String>(this, 'upload_status');

  /// Reference to `word_list` attribute.
  TfRef<String> get wordList => TfRef.attribute<String>(this, 'word_list');
}
