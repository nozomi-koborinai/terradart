// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_web_analytics_sites`.
const Set<String> _cloudflareWebAnalyticsSitesSensitive = <String>{};

/// Factory wrapper for `cloudflare_web_analytics_sites`.
///
/// Accepted Permissions
///
/// - `Account Settings Read`
final class DataCloudflareWebAnalyticsSites extends Data {
  static const String tfType = 'cloudflare_web_analytics_sites';

  DataCloudflareWebAnalyticsSites({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? orderBy,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (orderBy != null) 'order_by': orderBy,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsSitesSensitive;
}
