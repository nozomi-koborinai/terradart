// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_connectors`.
const Set<String> _cloudflareMagicTransitConnectorsSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_connectors`.
///
/// Accepted Permissions
///
/// - `Magic WAN Read` - `Magic WAN Write`
final class DataCloudflareMagicTransitConnectors extends Data {
  static const String tfType = 'cloudflare_magic_transit_connectors';

  DataCloudflareMagicTransitConnectors({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? deviceType,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (deviceType != null) 'device_type': deviceType,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorsSensitive;
}
