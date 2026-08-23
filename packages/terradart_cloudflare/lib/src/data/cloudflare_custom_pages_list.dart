// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_pages_list`.
const Set<String> _cloudflareCustomPagesListSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_pages_list`.
///
/// Accepted Permissions
///
/// - `Account Custom Pages Read` - `Account Custom Pages Write` - `Account
/// Settings Read` - `Account Settings Write` - `Zero Trust: PII Read`
final class DataCloudflareCustomPagesList extends Data {
  static const String tfType = 'cloudflare_custom_pages_list';

  DataCloudflareCustomPagesList({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPagesListSensitive;
}
