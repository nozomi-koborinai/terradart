// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_requests`.
const Set<String> _cloudflareCloudforceOneRequestsSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloudforce_one_requests`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Write`
final class DataCloudflareCloudforceOneRequests extends Data {
  static const String tfType = 'cloudflare_cloudforce_one_requests';

  DataCloudflareCloudforceOneRequests({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? completedAfter,
    TfArg<String>? completedBefore,
    TfArg<String>? createdAfter,
    TfArg<String>? createdBefore,
    TfArg<num>? maxItems,
    required TfArg<num> page,
    required TfArg<num> perPage,
    TfArg<String>? requestType,
    TfArg<String>? sortBy,
    TfArg<String>? sortOrder,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'completed_after': ?completedAfter,
           'completed_before': ?completedBefore,
           'created_after': ?createdAfter,
           'created_before': ?createdBefore,
           'max_items': ?maxItems,
           'page': page,
           'per_page': perPage,
           'request_type': ?requestType,
           'sort_by': ?sortBy,
           'sort_order': ?sortOrder,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `completed_after` attribute.
  TfRef<String> get completedAfterRef =>
      TfRef.attribute<String>(this, 'completed_after');

  /// Reference to `completed_before` attribute.
  TfRef<String> get completedBeforeRef =>
      TfRef.attribute<String>(this, 'completed_before');

  /// Reference to `created_after` attribute.
  TfRef<String> get createdAfterRef =>
      TfRef.attribute<String>(this, 'created_after');

  /// Reference to `created_before` attribute.
  TfRef<String> get createdBeforeRef =>
      TfRef.attribute<String>(this, 'created_before');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `page` attribute.
  TfRef<num> get pageRef => TfRef.attribute<num>(this, 'page');

  /// Reference to `per_page` attribute.
  TfRef<num> get perPageRef => TfRef.attribute<num>(this, 'per_page');

  /// Reference to `request_type` attribute.
  TfRef<String> get requestTypeRef =>
      TfRef.attribute<String>(this, 'request_type');

  /// Reference to `sort_by` attribute.
  TfRef<String> get sortByRef => TfRef.attribute<String>(this, 'sort_by');

  /// Reference to `sort_order` attribute.
  TfRef<String> get sortOrderRef => TfRef.attribute<String>(this, 'sort_order');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');
}
