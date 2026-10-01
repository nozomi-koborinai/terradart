// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? deviceType,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'device_type': ?deviceType,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `device_type` attribute.
  TfRef<String> get deviceType => TfRef.attribute<String>(this, 'device_type');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
