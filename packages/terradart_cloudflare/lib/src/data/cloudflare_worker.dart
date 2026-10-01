// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_worker.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_worker`.
const Set<String> _cloudflareWorkerSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class DataWorkerFilter {
  const DataWorkerFilter({this.order, this.orderBy});

  final DataWorkerOrder? order;

  final DataWorkerOrderBy? orderBy;

  Map<String, Object?> encode() => {
    'order': ?order?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
  };
}

/// `order` — derived from the provider schema description.
extension type const DataWorkerOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkerOrder.variable(String name) : this._(TfArg.variable(name));
  DataWorkerOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkerOrder.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataWorkerOrder._(TfArgLiteral('asc'));
  static const desc = DataWorkerOrder._(TfArgLiteral('desc'));

  static const List<DataWorkerOrder> values = [asc, desc];
}

/// `order_by` — derived from the provider schema description.
extension type const DataWorkerOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataWorkerOrderBy.variable(String name) : this._(TfArg.variable(name));
  DataWorkerOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataWorkerOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const deployedOn = DataWorkerOrderBy._(TfArgLiteral('deployed_on'));
  static const updatedOn = DataWorkerOrderBy._(TfArgLiteral('updated_on'));
  static const createdOn = DataWorkerOrderBy._(TfArgLiteral('created_on'));
  static const name = DataWorkerOrderBy._(TfArgLiteral('name'));

  static const List<DataWorkerOrderBy> values = [
    deployedOn,
    updatedOn,
    createdOn,
    name,
  ];
}

/// Factory wrapper for `cloudflare_worker`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorker extends Data {
  static const String tfType = 'cloudflare_worker';

  DataCloudflareWorker(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? workerId,
    DataWorkerFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'worker_id': ?workerId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerSensitive;

  /// A reference to the `cloudflare_worker` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorker>`.
  RefTo<CloudflareWorker> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_on` attribute.
  TfRef<String> get deployedOn => TfRef.attribute<String>(this, 'deployed_on');

  /// Reference to `logpush` attribute.
  TfRef<bool> get logpush => TfRef.attribute<bool>(this, 'logpush');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `worker_id` attribute.
  TfRef<String> get workerId => TfRef.attribute<String>(this, 'worker_id');
}
