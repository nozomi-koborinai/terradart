// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../secrets/cloudflare_secrets_store.dart';

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
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
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
    required TfArg<String> accountId,
    TfArg<String>? storeId,
    DataSecretsStoreFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (storeId != null) 'store_id': storeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSensitive;

  /// A reference to the `cloudflare_secrets_store` this data source reads, for
  /// arguments typed `RefTo<CloudflareSecretsStore>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareSecretsStore> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
