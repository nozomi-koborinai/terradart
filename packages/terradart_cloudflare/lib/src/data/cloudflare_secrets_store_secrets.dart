// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_store_secrets`.
const Set<String> _cloudflareSecretsStoreSecretsSensitive = <String>{};

/// Factory wrapper for `cloudflare_secrets_store_secrets`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStoreSecrets extends Data {
  static const String tfType = 'cloudflare_secrets_store_secrets';

  DataCloudflareSecretsStoreSecrets({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
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
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get directionRef => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get orderRef => TfRef.attribute<String>(this, 'order');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopesRef =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `search` attribute.
  TfRef<String> get searchRef => TfRef.attribute<String>(this, 'search');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeIdRef => TfRef.attribute<String>(this, 'store_id');
}
