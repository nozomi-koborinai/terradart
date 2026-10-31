// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_search_instances`.
const Set<String> _cloudflareAiSearchInstancesSensitive = <String>{};

/// Data Ai Search Instances Order enum for `order_by`.
extension type const DataAiSearchInstancesOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataAiSearchInstancesOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataAiSearchInstancesOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataAiSearchInstancesOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const createdAt = DataAiSearchInstancesOrderBy._(
    TfArgLiteral('created_at'),
  );

  static const List<DataAiSearchInstancesOrderBy> values = [createdAt];
}

/// Data Ai Search Instances Order By enum for `order_by_direction`.
extension type const DataAiSearchInstancesOrderByDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAiSearchInstancesOrderByDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataAiSearchInstancesOrderByDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAiSearchInstancesOrderByDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataAiSearchInstancesOrderByDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataAiSearchInstancesOrderByDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataAiSearchInstancesOrderByDirection> values = [asc, desc];
}

/// Factory wrapper for `cloudflare_ai_search_instances`.
final class DataCloudflareAiSearchInstances extends Data {
  static const String tfType = 'cloudflare_ai_search_instances';

  DataCloudflareAiSearchInstances(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? hostname,
    TfArg<num>? maxItems,
    TfArg<String>? namespace,
    DataAiSearchInstancesOrderBy? orderBy,
    DataAiSearchInstancesOrderByDirection? orderByDirection,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'hostname': ?hostname,
           'max_items': ?maxItems,
           'namespace': ?namespace,
           'order_by': ?orderBy,
           'order_by_direction': ?orderByDirection,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchInstancesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `order_by_direction` attribute.
  TfRef<String> get orderByDirection =>
      TfRef.attribute<String>(this, 'order_by_direction');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
