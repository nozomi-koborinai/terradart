// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dlp_custom_entry.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_entry`.
const Set<String> _cloudflareZeroTrustDlpCustomEntrySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_entry`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpCustomEntry extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_entry';

  DataCloudflareZeroTrustDlpCustomEntry({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> entryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId, 'entry_id': entryId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpCustomEntrySensitive;

  /// A reference to the `cloudflare_zero_trust_dlp_custom_entry` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDlpCustomEntry>`.
  RefTo<CloudflareZeroTrustDlpCustomEntry> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `case_sensitive` attribute.
  TfRef<bool> get caseSensitive =>
      TfRef.attribute<bool>(this, 'case_sensitive');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deprecated` attribute.
  TfRef<bool> get deprecated => TfRef.attribute<bool>(this, 'deprecated');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

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
