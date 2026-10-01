// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_custom_prompt_topic`.
const Set<String> _cloudflareZeroTrustDlpCustomPromptTopicSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_custom_prompt_topic`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpCustomPromptTopic extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_custom_prompt_topic';

  DataCloudflareZeroTrustDlpCustomPromptTopic(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> entryId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'entry_id': entryId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpCustomPromptTopicSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `entry_id` attribute.
  TfRef<String> get entryId => TfRef.attribute<String>(this, 'entry_id');
}
