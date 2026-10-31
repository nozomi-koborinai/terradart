// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_stores`.
const Set<String> _cloudflareSecretsStoresSensitive = <String>{};

/// Data Secrets Stores enum for `direction`.
extension type const DataSecretsStoresDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoresDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoresDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoresDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSecretsStoresDirection._(TfArgLiteral('asc'));
  static const desc = DataSecretsStoresDirection._(TfArgLiteral('desc'));

  static const List<DataSecretsStoresDirection> values = [asc, desc];
}

/// Data Secrets Stores enum for `order`.
extension type const DataSecretsStoresOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoresOrder.variable(String name) : this._(TfArg.variable(name));
  DataSecretsStoresOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoresOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataSecretsStoresOrder._(TfArgLiteral('name'));
  static const created = DataSecretsStoresOrder._(TfArgLiteral('created'));
  static const modified = DataSecretsStoresOrder._(TfArgLiteral('modified'));

  static const List<DataSecretsStoresOrder> values = [name, created, modified];
}

/// Factory wrapper for `cloudflare_secrets_stores`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStores extends Data {
  static const String tfType = 'cloudflare_secrets_stores';

  DataCloudflareSecretsStores(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataSecretsStoresDirection? direction,
    TfArg<num>? maxItems,
    DataSecretsStoresOrder? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoresSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
