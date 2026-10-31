// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_lists`.
const Set<String> _cloudflareZeroTrustListsSensitive = <String>{};

/// Data Zero Trust Lists enum for `direction`.
extension type const DataZeroTrustListsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustListsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustListsDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustListsDirection._(TfArgLiteral('desc'));

  static const List<DataZeroTrustListsDirection> values = [asc, desc];
}

/// Data Zero Trust Lists Order enum for `order_by`.
extension type const DataZeroTrustListsOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListsOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustListsOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListsOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustListsOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustListsOrderBy._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustListsOrderBy._(
    TfArgLiteral('updated_at'),
  );
  static const itemCount = DataZeroTrustListsOrderBy._(
    TfArgLiteral('item_count'),
  );

  static const List<DataZeroTrustListsOrderBy> values = [
    name,
    createdAt,
    updatedAt,
    itemCount,
  ];
}

/// Data Zero Trust Lists enum for `type`.
extension type const DataZeroTrustListsType._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListsType.variable(String name) : this._(TfArg.variable(name));
  DataZeroTrustListsType.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListsType.arg(TfArg<String> arg) : this._(arg);

  static const serial = DataZeroTrustListsType._(TfArgLiteral('SERIAL'));
  static const url = DataZeroTrustListsType._(TfArgLiteral('URL'));
  static const domain = DataZeroTrustListsType._(TfArgLiteral('DOMAIN'));
  static const email = DataZeroTrustListsType._(TfArgLiteral('EMAIL'));
  static const ip = DataZeroTrustListsType._(TfArgLiteral('IP'));
  static const category = DataZeroTrustListsType._(TfArgLiteral('CATEGORY'));
  static const location = DataZeroTrustListsType._(TfArgLiteral('LOCATION'));
  static const device = DataZeroTrustListsType._(TfArgLiteral('DEVICE'));
  static const aaguid = DataZeroTrustListsType._(TfArgLiteral('AAGUID'));

  static const List<DataZeroTrustListsType> values = [
    serial,
    url,
    domain,
    email,
    ip,
    category,
    location,
    device,
    aaguid,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_lists`.
final class DataCloudflareZeroTrustLists extends Data {
  static const String tfType = 'cloudflare_zero_trust_lists';

  DataCloudflareZeroTrustLists(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataZeroTrustListsDirection? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    DataZeroTrustListsOrderBy? orderBy,
    TfArg<String>? search,
    DataZeroTrustListsType? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'search': ?search,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustListsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `filter` attribute.
  TfRef<List<String>> get filter =>
      TfRef.attribute<List<String>>(this, 'filter');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
