// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPagesListSensitive;
}
