// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_kv.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_kv`.
const Set<String> _cloudflareWorkersKvSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_kv`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class DataCloudflareWorkersKv extends Data {
  static const String tfType = 'cloudflare_workers_kv';

  DataCloudflareWorkersKv({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> keyName,
    required TfArg<String> namespaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'key_name': keyName,
           'namespace_id': namespaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvSensitive;

  /// A reference to the `cloudflare_workers_kv` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersKv>`.
  RefTo<CloudflareWorkersKv> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyNameRef => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');
}
