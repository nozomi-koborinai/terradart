// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_kv_namespaces`.
const Set<String> _cloudflareWorkersKvNamespacesSensitive = <String>{};

/// Data Workers Kv Namespaces enum for `direction`.
extension type const DataWorkersKvNamespacesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkersKvNamespacesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataWorkersKvNamespacesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkersKvNamespacesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataWorkersKvNamespacesDirection._(TfArgLiteral('asc'));
  static const desc = DataWorkersKvNamespacesDirection._(TfArgLiteral('desc'));

  static const List<DataWorkersKvNamespacesDirection> values = [asc, desc];
}

/// Data Workers Kv Namespaces enum for `order`.
extension type const DataWorkersKvNamespacesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkersKvNamespacesOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataWorkersKvNamespacesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkersKvNamespacesOrder.arg(TfArg<String> arg) : this._(arg);

  static const id = DataWorkersKvNamespacesOrder._(TfArgLiteral('id'));
  static const title = DataWorkersKvNamespacesOrder._(TfArgLiteral('title'));

  static const List<DataWorkersKvNamespacesOrder> values = [id, title];
}

/// Factory wrapper for `cloudflare_workers_kv_namespaces`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class DataCloudflareWorkersKvNamespaces extends Data {
  static const String tfType = 'cloudflare_workers_kv_namespaces';

  DataCloudflareWorkersKvNamespaces(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataWorkersKvNamespacesDirection? direction,
    TfArg<num>? maxItems,
    DataWorkersKvNamespacesOrder? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespacesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
