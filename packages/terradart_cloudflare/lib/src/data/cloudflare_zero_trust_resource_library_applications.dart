// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_resource_library_applications`.
const Set<String> _cloudflareZeroTrustResourceLibraryApplicationsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_resource_library_applications`.
final class DataCloudflareZeroTrustResourceLibraryApplications extends Data {
  static const String tfType =
      'cloudflare_zero_trust_resource_library_applications';

  DataCloudflareZeroTrustResourceLibraryApplications({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? fields,
    TfArg<String>? filter,
    TfArg<num>? limit,
    TfArg<num>? maxItems,
    TfArg<num>? offset,
    TfArg<String>? orderBy,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'fields': ?fields,
           'filter': ?filter,
           'limit': ?limit,
           'max_items': ?maxItems,
           'offset': ?offset,
           'order_by': ?orderBy,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustResourceLibraryApplicationsSensitive;
}
