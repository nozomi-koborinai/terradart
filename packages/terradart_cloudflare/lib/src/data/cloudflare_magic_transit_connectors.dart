// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_connectors`.
const Set<String> _cloudflareMagicTransitConnectorsSensitive = <String>{};

/// Data Magic Transit Connectors Device enum for `device_type`.
extension type const DataMagicTransitConnectorsDeviceType._(TfArg<String> _)
    implements TfArg<String> {
  DataMagicTransitConnectorsDeviceType.variable(String name)
    : this._(TfArg.variable(name));
  DataMagicTransitConnectorsDeviceType.expression(String template)
    : this._(TfArg.expression(template));
  const DataMagicTransitConnectorsDeviceType.arg(TfArg<String> arg)
    : this._(arg);

  static const managed = DataMagicTransitConnectorsDeviceType._(
    TfArgLiteral('MANAGED'),
  );
  static const licensed = DataMagicTransitConnectorsDeviceType._(
    TfArgLiteral('LICENSED'),
  );

  static const List<DataMagicTransitConnectorsDeviceType> values = [
    managed,
    licensed,
  ];
}

/// Factory wrapper for `cloudflare_magic_transit_connectors`.
///
/// Accepted Permissions
///
/// - `Magic WAN Read` - `Magic WAN Write`
final class DataCloudflareMagicTransitConnectors extends Data {
  static const String tfType = 'cloudflare_magic_transit_connectors';

  DataCloudflareMagicTransitConnectors(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataMagicTransitConnectorsDeviceType? deviceType,
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
