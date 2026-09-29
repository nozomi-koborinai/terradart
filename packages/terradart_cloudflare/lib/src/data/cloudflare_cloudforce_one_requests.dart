// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
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
           'account_id': ?accountId,
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
}
