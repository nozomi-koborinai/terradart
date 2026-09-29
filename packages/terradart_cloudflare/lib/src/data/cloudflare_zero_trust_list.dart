// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_list.dart';

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

  final TfArg<DataZeroTrustListFilterDirection>? direction;

  final TfArg<List<Object?>>? filter;

  final TfArg<DataZeroTrustListFilterOrderBy>? orderBy;

  final TfArg<String>? search;

  final TfArg<DataZeroTrustListFilterType>? type;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (filter != null) 'filter': filter!.toTfJson(),
    if (orderBy != null) 'order_by': orderBy!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataZeroTrustListFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataZeroTrustListFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order_by` — derived from the provider schema description.
enum DataZeroTrustListFilterOrderBy implements TerraformEnum {
  name('name'),
  createdAt('created_at'),
  updatedAt('updated_at'),
  itemCount('item_count');

  const DataZeroTrustListFilterOrderBy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum DataZeroTrustListFilterType implements TerraformEnum {
  serial('SERIAL'),
  url('URL'),
  domain('DOMAIN'),
  email('EMAIL'),
  ip('IP'),
  category('CATEGORY'),
  location('LOCATION'),
  device('DEVICE'),
  aaguid('AAGUID');

  const DataZeroTrustListFilterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_list`.
final class DataCloudflareZeroTrustList extends Data {
  static const String tfType = 'cloudflare_zero_trust_list';

  DataCloudflareZeroTrustList({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? listId,
    DataZeroTrustListFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (listId != null) 'list_id': listId,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
