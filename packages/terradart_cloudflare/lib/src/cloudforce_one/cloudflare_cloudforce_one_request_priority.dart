// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloudforce_one_request_priority`.
const Set<String> _cloudflareCloudforceOneRequestPrioritySensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_request_priority`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequestPriority extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request_priority';

  CloudflareCloudforceOneRequestPriority({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<List<String>> labels,
    required TfArg<num> priority,
    required TfArg<String> requirement,
    required TfArg<String> tlp,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'labels': labels,
           'priority': priority,
           'requirement': requirement,
           'tlp': tlp,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestPrioritySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed` attribute.
  TfRef<String> get completed => TfRef.attribute<String>(this, 'completed');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

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

  /// Reference to `summary` attribute.
  TfRef<String> get summary => TfRef.attribute<String>(this, 'summary');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}
