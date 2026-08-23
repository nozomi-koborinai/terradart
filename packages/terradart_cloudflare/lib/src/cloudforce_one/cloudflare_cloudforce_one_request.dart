// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloudforce_one_request`.
const Set<String> _cloudflareCloudforceOneRequestSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequest extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request';

  CloudflareCloudforceOneRequest({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? content,
    TfArg<String>? priority,
    TfArg<String>? requestType,
    TfArg<String>? summary,
    TfArg<String>? tlp,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (content != null) 'content': content,
           if (priority != null) 'priority': priority,
           if (requestType != null) 'request_type': requestType,
           if (summary != null) 'summary': summary,
           if (tlp != null) 'tlp': tlp,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed` attribute.
  TfRef<String> get completed => TfRef.attribute<String>(this, 'completed');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `message_tokens` attribute.
  TfRef<num> get messageTokens => TfRef.attribute<num>(this, 'message_tokens');

  /// Reference to `readable_id` attribute.
  TfRef<String> get readableId => TfRef.attribute<String>(this, 'readable_id');

  /// Reference to `request` attribute.
  TfRef<String> get request => TfRef.attribute<String>(this, 'request');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}
