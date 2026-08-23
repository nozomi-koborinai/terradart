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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (completedAfter != null) 'completed_after': completedAfter,
           if (completedBefore != null) 'completed_before': completedBefore,
           if (createdAfter != null) 'created_after': createdAfter,
           if (createdBefore != null) 'created_before': createdBefore,
           if (maxItems != null) 'max_items': maxItems,
           'page': page,
           'per_page': perPage,
           if (requestType != null) 'request_type': requestType,
           if (sortBy != null) 'sort_by': sortBy,
           if (sortOrder != null) 'sort_order': sortOrder,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestsSensitive;
}
