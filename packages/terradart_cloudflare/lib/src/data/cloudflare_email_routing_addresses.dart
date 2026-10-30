// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_routing_addresses`.
const Set<String> _cloudflareEmailRoutingAddressesSensitive = <String>{};

/// Data Email Routing Addresses enum for `direction`.
extension type const DataEmailRoutingAddressesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataEmailRoutingAddressesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataEmailRoutingAddressesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataEmailRoutingAddressesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataEmailRoutingAddressesDirection._(TfArgLiteral('asc'));
  static const desc = DataEmailRoutingAddressesDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataEmailRoutingAddressesDirection> values = [asc, desc];
}

/// Factory wrapper for `cloudflare_email_routing_addresses`.
///
/// Accepted Permissions
///
/// - `Email Routing Addresses Read` - `Email Routing Addresses Write`
final class DataCloudflareEmailRoutingAddresses extends Data {
  static const String tfType = 'cloudflare_email_routing_addresses';

  DataCloudflareEmailRoutingAddresses(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataEmailRoutingAddressesDirection? direction,
    TfArg<num>? maxItems,
    TfArg<bool>? verified,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'verified': ?verified,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingAddressesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `verified` attribute.
  TfRef<bool> get verified => TfRef.attribute<bool>(this, 'verified');
}
