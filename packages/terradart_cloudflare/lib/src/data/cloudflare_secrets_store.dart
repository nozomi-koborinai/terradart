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

  final TfArg<DataSecretsStoreFilterDirection>? direction;

  final TfArg<DataSecretsStoreFilterOrder>? order;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataSecretsStoreFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataSecretsStoreFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataSecretsStoreFilterOrder implements TerraformEnum {
  name('name'),
  created('created'),
  modified('modified');

  const DataSecretsStoreFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_secrets_store`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStore extends Data {
  static const String tfType = 'cloudflare_secrets_store';

  DataCloudflareSecretsStore({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeIdRef => TfRef.attribute<String>(this, 'store_id');
}
