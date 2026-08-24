// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_addresses`.
const Set<String> _cloudflareEmailRoutingAddressesSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_addresses`.
///
/// Accepted Permissions
///
/// - `Email Routing Addresses Read` - `Email Routing Addresses Write`
final class DataCloudflareEmailRoutingAddresses extends Data {
  static const String tfType = 'cloudflare_email_routing_addresses';

  DataCloudflareEmailRoutingAddresses({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<bool>? verified,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (verified != null) 'verified': verified,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingAddressesSensitive;
}
