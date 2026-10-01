// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../secrets/cloudflare_secrets_store.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_store`.
const Set<String> _cloudflareSecretsStoreSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_secrets_store` (derived from provider schema).
@immutable
final class DataSecretsStoreFilter {
  const DataSecretsStoreFilter({this.direction, this.order});

  final DataSecretsStoreDirection? direction;

  final DataSecretsStoreOrder? order;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataSecretsStoreDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoreDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSecretsStoreDirection._(TfArgLiteral('asc'));
  static const desc = DataSecretsStoreDirection._(TfArgLiteral('desc'));

  static const List<DataSecretsStoreDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataSecretsStoreOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreOrder.variable(String name) : this._(TfArg.variable(name));
  DataSecretsStoreOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataSecretsStoreOrder._(TfArgLiteral('name'));
  static const created = DataSecretsStoreOrder._(TfArgLiteral('created'));
  static const modified = DataSecretsStoreOrder._(TfArgLiteral('modified'));

  static const List<DataSecretsStoreOrder> values = [name, created, modified];
}

/// Factory wrapper for `cloudflare_secrets_store`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStore extends Data {
  static const String tfType = 'cloudflare_secrets_store';

  DataCloudflareSecretsStore(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? storeId,
    DataSecretsStoreFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'store_id': ?storeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSensitive;

  /// A reference to the `cloudflare_secrets_store` this data source reads, for
  /// arguments typed `RefTo<CloudflareSecretsStore>`.
  RefTo<CloudflareSecretsStore> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');
}
