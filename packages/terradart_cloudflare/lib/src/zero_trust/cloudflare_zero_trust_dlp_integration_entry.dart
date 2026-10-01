// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_integration_entry`.
const Set<String> _cloudflareZeroTrustDlpIntegrationEntrySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_integration_entry`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDlpIntegrationEntry extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dlp_integration_entry';

  CloudflareZeroTrustDlpIntegrationEntry(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<bool> enabled,
    required TfArg<String> entryId,
    TfArg<String>? profileId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'enabled': enabled,
           'entry_id': entryId,
           'profile_id': ?profileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpIntegrationEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDlpIntegrationEntry>`.
  RefTo<CloudflareZeroTrustDlpIntegrationEntry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `entry_id` attribute.
  TfRef<String> get entryId => TfRef.attribute<String>(this, 'entry_id');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');
}
