// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloudforce_one_request_message`.
const Set<String> _cloudflareCloudforceOneRequestMessageSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request_message`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Write`
final class CloudflareCloudforceOneRequestMessage extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request_message';

  CloudflareCloudforceOneRequestMessage({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? content,
    required TfArg<String> requestId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (content != null) 'content': content,
           'request_id': requestId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestMessageSensitive;

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
}
