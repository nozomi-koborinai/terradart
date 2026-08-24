// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_address_maps`.
const Set<String> _cloudflareAddressMapsSensitive = <String>{};

/// Factory wrapper for `cloudflare_address_maps`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class DataCloudflareAddressMaps extends Data {
  static const String tfType = 'cloudflare_address_maps';

  DataCloudflareAddressMaps({
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
  Set<String> get sensitiveFields => _cloudflareAddressMapsSensitive;
}
