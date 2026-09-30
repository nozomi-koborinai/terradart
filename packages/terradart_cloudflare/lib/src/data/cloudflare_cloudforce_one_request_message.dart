// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloudforce_one/cloudflare_cloudforce_one_request_message.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? after,
    TfArg<String>? before,
    required TfArg<num> page,
    required TfArg<num> perPage,
    required TfArg<String> requestId,
    TfArg<String>? sortBy,
    TfArg<String>? sortOrder,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'after': ?after,
           'before': ?before,
           'page': page,
           'per_page': perPage,
           'request_id': requestId,
           'sort_by': ?sortBy,
           'sort_order': ?sortOrder,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestMessageSensitive;

  /// A reference to the `cloudflare_cloudforce_one_request_message` this data source reads, for
  /// arguments typed `RefTo<CloudflareCloudforceOneRequestMessage>`.
  RefTo<CloudflareCloudforceOneRequestMessage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `after` attribute.
  TfRef<String> get afterRef => TfRef.attribute<String>(this, 'after');

  /// Reference to `before` attribute.
  TfRef<String> get beforeRef => TfRef.attribute<String>(this, 'before');

  /// Reference to `page` attribute.
  TfRef<num> get pageRef => TfRef.attribute<num>(this, 'page');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPageRef => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `request_id` attribute.
  TfRef<String> get requestIdRef => TfRef.attribute<String>(this, 'request_id');

  /// Reference to `sort_by` attribute.
  TfRef<String> get sortByRef => TfRef.attribute<String>(this, 'sort_by');

  /// Reference to `sort_order` attribute.
  TfRef<String> get sortOrderRef => TfRef.attribute<String>(this, 'sort_order');
}
