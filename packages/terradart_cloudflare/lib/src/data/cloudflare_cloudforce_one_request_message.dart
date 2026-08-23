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
final class DataCloudflareCloudforceOneRequestMessage extends Data {
  static const String tfType = 'cloudflare_cloudforce_one_request_message';

  DataCloudflareCloudforceOneRequestMessage({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? after,
    TfArg<String>? before,
    required TfArg<num> page,
    required TfArg<num> perPage,
    required TfArg<String> requestId,
    TfArg<String>? sortBy,
    TfArg<String>? sortOrder,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (after != null) 'after': after,
           if (before != null) 'before': before,
           'page': page,
           'per_page': perPage,
           'request_id': requestId,
           if (sortBy != null) 'sort_by': sortBy,
           if (sortOrder != null) 'sort_order': sortOrder,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestMessageSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author` attribute.
  TfRef<String> get author => TfRef.attribute<String>(this, 'author');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `is_follow_on_request` attribute.
  TfRef<bool> get isFollowOnRequest =>
      TfRef.attribute<bool>(this, 'is_follow_on_request');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}
