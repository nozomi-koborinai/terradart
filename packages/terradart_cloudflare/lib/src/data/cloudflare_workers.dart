// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers`.
const Set<String> _cloudflareWorkersSensitive = <String>{};

/// Data Workers enum for `order`.
extension type const DataWorkersOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkersOrder.variable(String name) : this._(TfArg.variable(name));
  DataWorkersOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkersOrder.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataWorkersOrder._(TfArgLiteral('asc'));
  static const desc = DataWorkersOrder._(TfArgLiteral('desc'));

  static const List<DataWorkersOrder> values = [asc, desc];
}

/// Data Workers Order enum for `order_by`.
extension type const DataWorkersOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkersOrderBy.variable(String name) : this._(TfArg.variable(name));
  DataWorkersOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkersOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const deployedOn = DataWorkersOrderBy._(TfArgLiteral('deployed_on'));
  static const updatedOn = DataWorkersOrderBy._(TfArgLiteral('updated_on'));
  static const createdOn = DataWorkersOrderBy._(TfArgLiteral('created_on'));
  static const name = DataWorkersOrderBy._(TfArgLiteral('name'));

  static const List<DataWorkersOrderBy> values = [
    deployedOn,
    updatedOn,
    createdOn,
    name,
  ];
}

/// Factory wrapper for `cloudflare_workers`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkers extends Data {
  static const String tfType = 'cloudflare_workers';

  DataCloudflareWorkers(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    DataWorkersOrder? order,
    DataWorkersOrderBy? orderBy,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'order': ?order,
           'order_by': ?orderBy,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');
}
