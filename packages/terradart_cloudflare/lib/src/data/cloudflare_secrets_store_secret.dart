// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? direction;

  final TfArg<String>? order;

  final TfArg<List<Object?>>? scopes;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (scopes != null) 'scopes': scopes!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_secrets_store_secret`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStoreSecret extends Data {
  static const String tfType = 'cloudflare_secrets_store_secret';

  DataCloudflareSecretsStoreSecret({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? secretId,
    required TfArg<String> storeId,
    DataSecretsStoreSecretFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (secretId != null) 'secret_id': secretId,
           'store_id': storeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
