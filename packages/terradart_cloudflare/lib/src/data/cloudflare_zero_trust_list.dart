// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_list.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_list`.
const Set<String> _cloudflareZeroTrustListSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_list` (derived from provider schema).
@immutable
final class DataZeroTrustListFilter {
  const DataZeroTrustListFilter({
    this.direction,
    this.filter,
    this.orderBy,
    this.search,
    this.type,
  });

  final DataZeroTrustListDirection? direction;

  final TfArg<List<String>>? filter;

  final DataZeroTrustListOrderBy? orderBy;

  final TfArg<String>? search;

  final DataZeroTrustListFilterType? type;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
    'search': ?search?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZeroTrustListDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustListDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustListDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustListDirection._(TfArgLiteral('desc'));

  static const List<DataZeroTrustListDirection> values = [asc, desc];
}

/// `order_by` — derived from the provider schema description.
extension type const DataZeroTrustListOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListOrderBy.variable(String name) : this._(TfArg.variable(name));
  DataZeroTrustListOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustListOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustListOrderBy._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustListOrderBy._(
    TfArgLiteral('updated_at'),
  );
  static const itemCount = DataZeroTrustListOrderBy._(
    TfArgLiteral('item_count'),
  );

  static const List<DataZeroTrustListOrderBy> values = [
    name,
    createdAt,
    updatedAt,
    itemCount,
  ];
}

/// `type` — derived from the provider schema description.
extension type const DataZeroTrustListFilterType._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustListFilterType.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustListFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustListFilterType.arg(TfArg<String> arg) : this._(arg);

  static const serial = DataZeroTrustListFilterType._(TfArgLiteral('SERIAL'));
  static const url = DataZeroTrustListFilterType._(TfArgLiteral('URL'));
  static const domain = DataZeroTrustListFilterType._(TfArgLiteral('DOMAIN'));
  static const email = DataZeroTrustListFilterType._(TfArgLiteral('EMAIL'));
  static const ip = DataZeroTrustListFilterType._(TfArgLiteral('IP'));
  static const category = DataZeroTrustListFilterType._(
    TfArgLiteral('CATEGORY'),
  );
  static const location = DataZeroTrustListFilterType._(
    TfArgLiteral('LOCATION'),
  );
  static const device = DataZeroTrustListFilterType._(TfArgLiteral('DEVICE'));
  static const aaguid = DataZeroTrustListFilterType._(TfArgLiteral('AAGUID'));

  static const List<DataZeroTrustListFilterType> values = [
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

/// Factory wrapper for `cloudflare_zero_trust_list`.
final class DataCloudflareZeroTrustList extends Data {
  static const String tfType = 'cloudflare_zero_trust_list';

  DataCloudflareZeroTrustList(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? listId,
    DataZeroTrustListFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'list_id': ?listId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustListSensitive;

  /// A reference to the `cloudflare_zero_trust_list` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustList>`.
  RefTo<CloudflareZeroTrustList> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `list_count` attribute.
  TfRef<num> get listCount => TfRef.attribute<num>(this, 'list_count');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `list_id` attribute.
  TfRef<String> get listId => TfRef.attribute<String>(this, 'list_id');
}
