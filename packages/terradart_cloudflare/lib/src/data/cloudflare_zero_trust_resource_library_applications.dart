// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_applications`.
const Set<String> _cloudflareZeroTrustResourceLibraryApplicationsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_applications`.
final class DataCloudflareZeroTrustResourceLibraryApplications extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_applications';

  DataCloudflareZeroTrustResourceLibraryApplications({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? filter,
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
    TfArg<String>? orderBy,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (filter != null) 'filter': filter,
           if (limit != null) 'limit': limit,
           if (maxItems != null) 'max_items': maxItems,
           if (offset != null) 'offset': offset,
           if (orderBy != null) 'order_by': orderBy,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryApplicationsSensitive;
}
