// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pages_domains`.
const Set<String> _cloudflarePagesDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_pages_domains`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class DataCloudflarePagesDomains extends Data {
  static const String tfType = 'cloudflare_pages_domains';

  DataCloudflarePagesDomains({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> projectName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           'project_name': projectName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesDomainsSensitive;
}
