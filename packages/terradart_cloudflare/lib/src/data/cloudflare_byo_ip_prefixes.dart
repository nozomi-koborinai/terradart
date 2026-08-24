// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_byo_ip_prefixes`.
const Set<String> _cloudflareByoIpPrefixesSensitive = <String>{};

/// Factory wrapper for `cloudflare_byo_ip_prefixes`.
///
/// Accepted Permissions
///
/// - `IP Prefixes: BGP On Demand Read` - `IP Prefixes: BGP On Demand Write` -
/// `IP Prefixes: Read` - `IP Prefixes: Write` - `Magic Transit Read` - `Magic
/// Transit Write`
final class DataCloudflareByoIpPrefixes extends Data {
  static const String tfType = 'cloudflare_byo_ip_prefixes';

  DataCloudflareByoIpPrefixes({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareByoIpPrefixesSensitive;
}
