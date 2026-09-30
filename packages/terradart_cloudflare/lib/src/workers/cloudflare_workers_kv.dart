// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_kv`.
const Set<String> _cloudflareWorkersKvSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_kv`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class CloudflareWorkersKv extends Resource {
  static const String tfType = 'cloudflare_workers_kv';

  CloudflareWorkersKv({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? expiration,
    TfArg<num>? expirationTtl,
    required TfArg<String> keyName,
    TfArg<String>? metadata,
    required TfArg<String> namespaceId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'expiration': ?expiration,
           'expiration_ttl': ?expirationTtl,
           'key_name': keyName,
           'metadata': ?metadata,
           'namespace_id': namespaceId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersKv>`.
  RefTo<CloudflareWorkersKv> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `expiration` attribute.
  TfRef<num> get expirationRef => TfRef.attribute<num>(this, 'expiration');

  /// Reference to `expiration_ttl` attribute.
  TfRef<num> get expirationTtlRef =>
      TfRef.attribute<num>(this, 'expiration_ttl');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyNameRef => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadataRef => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `value` attribute.
  TfRef<String> get valueRef => TfRef.attribute<String>(this, 'value');
}
