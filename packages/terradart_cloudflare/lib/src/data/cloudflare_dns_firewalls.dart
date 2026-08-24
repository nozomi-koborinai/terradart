// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_firewalls`.
const Set<String> _cloudflareDnsFirewallsSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_firewalls`.
///
/// Accepted Permissions
///
/// - `DNS Firewall Read` - `DNS Firewall Write`
final class DataCloudflareDnsFirewalls extends Data {
  static const String tfType = 'cloudflare_dns_firewalls';

  DataCloudflareDnsFirewalls({
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
  Set<String> get sensitiveFields => _cloudflareDnsFirewallsSensitive;
}
