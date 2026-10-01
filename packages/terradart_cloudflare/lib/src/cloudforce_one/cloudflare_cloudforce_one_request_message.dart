// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request_message`.
const Set<String> _cloudflareCloudforceOneRequestMessageSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request_message`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Write`
final class CloudflareCloudforceOneRequestMessage extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request_message';

  CloudflareCloudforceOneRequestMessage(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? content,
    required TfArg<String> requestId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'content': ?content,
           'request_id': requestId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestMessageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCloudforceOneRequestMessage>`.
  RefTo<CloudflareCloudforceOneRequestMessage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `is_follow_on_request` attribute.
  TfRef<bool> get isFollowOnRequest =>
      TfRef.attribute<bool>(this, 'is_follow_on_request');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestId => TfRef.attribute<String>(this, 'request_id');
}
