// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloudforce_one_request`.
const Set<String> _cloudflareCloudforceOneRequestSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_cloudforce_one_request` (derived from provider schema).
@immutable
final class DataCloudforceOneRequestFilter {
  const DataCloudforceOneRequestFilter({
    this.completedAfter,
    this.completedBefore,
    this.createdAfter,
    this.createdBefore,
    required this.page,
    required this.perPage,
    this.requestType,
    this.sortBy,
    this.sortOrder,
    this.status,
  });

  final TfArg<String>? completedAfter;

  final TfArg<String>? completedBefore;

  final TfArg<String>? createdAfter;

  final TfArg<String>? createdBefore;

  final TfArg<num> page;

  final TfArg<num> perPage;

  final TfArg<String>? requestType;

  final TfArg<String>? sortBy;

  final TfArg<String>? sortOrder;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (completedAfter != null) 'completed_after': completedAfter!.toTfJson(),
    if (completedBefore != null)
      'completed_before': completedBefore!.toTfJson(),
    if (createdAfter != null) 'created_after': createdAfter!.toTfJson(),
    if (createdBefore != null) 'created_before': createdBefore!.toTfJson(),
    'page': page.toTfJson(),
    'per_page': perPage.toTfJson(),
    if (requestType != null) 'request_type': requestType!.toTfJson(),
    if (sortBy != null) 'sort_by': sortBy!.toTfJson(),
    if (sortOrder != null) 'sort_order': sortOrder!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_cloudforce_one_request`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class DataCloudflareCloudforceOneRequest extends Data {
  static const String tfType = 'cloudflare_cloudforce_one_request';

  DataCloudflareCloudforceOneRequest({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? requestId,
    DataCloudforceOneRequestFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (requestId != null) 'request_id': requestId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestSensitive;

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

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `readable_id` attribute.
  TfRef<String> get readableId => TfRef.attribute<String>(this, 'readable_id');

  /// Reference to `request` attribute.
  TfRef<String> get request => TfRef.attribute<String>(this, 'request');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `summary` attribute.
  TfRef<String> get summary => TfRef.attribute<String>(this, 'summary');

  /// Reference to `tlp` attribute.
  TfRef<String> get tlp => TfRef.attribute<String>(this, 'tlp');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}
