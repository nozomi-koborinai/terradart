// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../secrets/cloudflare_secrets_store_secret.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_store_secret`.
const Set<String> _cloudflareSecretsStoreSecretSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_secrets_store_secret` (derived from provider schema).
@immutable
final class DataSecretsStoreSecretFilter {
  const DataSecretsStoreSecretFilter({
    this.direction,
    this.order,
    this.scopes,
    this.search,
  });

  final DataSecretsStoreSecretDirection? direction;

  final DataSecretsStoreSecretOrder? order;

  final TfArg<List<String>>? scopes;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataSecretsStoreSecretDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreSecretDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoreSecretDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreSecretDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSecretsStoreSecretDirection._(TfArgLiteral('asc'));
  static const desc = DataSecretsStoreSecretDirection._(TfArgLiteral('desc'));

  static const List<DataSecretsStoreSecretDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataSecretsStoreSecretOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreSecretOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoreSecretOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreSecretOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataSecretsStoreSecretOrder._(TfArgLiteral('name'));
  static const comment = DataSecretsStoreSecretOrder._(TfArgLiteral('comment'));
  static const created = DataSecretsStoreSecretOrder._(TfArgLiteral('created'));
  static const modified = DataSecretsStoreSecretOrder._(
    TfArgLiteral('modified'),
  );
  static const status = DataSecretsStoreSecretOrder._(TfArgLiteral('status'));

  static const List<DataSecretsStoreSecretOrder> values = [
    name,
    comment,
    created,
    modified,
    status,
  ];
}

/// Factory wrapper for `cloudflare_secrets_store_secret`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStoreSecret extends Data {
  static const String tfType = 'cloudflare_secrets_store_secret';

  DataCloudflareSecretsStoreSecret(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? secretId,
    required TfArg<String> storeId,
    DataSecretsStoreSecretFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'secret_id': ?secretId,
           'store_id': storeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretSensitive;

  /// A reference to the `cloudflare_secrets_store_secret` this data source reads, for
  /// arguments typed `RefTo<CloudflareSecretsStoreSecret>`.
  RefTo<CloudflareSecretsStoreSecret> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');
}
