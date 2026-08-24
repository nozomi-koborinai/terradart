// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_secrets_store`.
const Set<String> _cloudflareSecretsStoreSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_secrets_store` (derived from provider schema).
@immutable
final class DataSecretsStoreFilter {
  const DataSecretsStoreFilter({this.direction, this.order});

  final TfArg<String>? direction;

  final TfArg<String>? order;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
  };
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
