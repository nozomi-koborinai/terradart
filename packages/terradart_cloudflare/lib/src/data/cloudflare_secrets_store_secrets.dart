// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_store_secrets`.
const Set<String> _cloudflareSecretsStoreSecretsSensitive = <String>{};

/// Data Secrets Store Secrets enum for `direction`.
extension type const DataSecretsStoreSecretsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreSecretsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoreSecretsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreSecretsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSecretsStoreSecretsDirection._(TfArgLiteral('asc'));
  static const desc = DataSecretsStoreSecretsDirection._(TfArgLiteral('desc'));

  static const List<DataSecretsStoreSecretsDirection> values = [asc, desc];
}

/// Data Secrets Store Secrets enum for `order`.
extension type const DataSecretsStoreSecretsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSecretsStoreSecretsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataSecretsStoreSecretsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSecretsStoreSecretsOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataSecretsStoreSecretsOrder._(TfArgLiteral('name'));
  static const comment = DataSecretsStoreSecretsOrder._(
    TfArgLiteral('comment'),
  );
  static const created = DataSecretsStoreSecretsOrder._(
    TfArgLiteral('created'),
  );
  static const modified = DataSecretsStoreSecretsOrder._(
    TfArgLiteral('modified'),
  );
  static const status = DataSecretsStoreSecretsOrder._(TfArgLiteral('status'));

  static const List<DataSecretsStoreSecretsOrder> values = [
    name,
    comment,
    created,
    modified,
    status,
  ];
}

/// Factory wrapper for `cloudflare_secrets_store_secrets`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStoreSecrets extends Data {
  static const String tfType = 'cloudflare_secrets_store_secrets';

  DataCloudflareSecretsStoreSecrets(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataSecretsStoreSecretsDirection? direction,
    TfArg<num>? maxItems,
    DataSecretsStoreSecretsOrder? order,
    TfArg<List<String>>? scopes,
    TfArg<String>? search,
    required TfArg<String> storeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'scopes': ?scopes,
           'search': ?search,
           'store_id': storeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');
}
