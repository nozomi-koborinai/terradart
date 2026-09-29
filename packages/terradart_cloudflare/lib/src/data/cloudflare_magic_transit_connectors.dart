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
    required TfArg<String> accountId,
    TfArg<String>? deviceType,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'device_type': ?deviceType,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorsSensitive;
}
