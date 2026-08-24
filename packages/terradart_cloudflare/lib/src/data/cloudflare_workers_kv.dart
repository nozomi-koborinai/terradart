// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    required TfArg<String> keyName,
    required TfArg<String> namespaceId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'key_name': keyName,
           'namespace_id': namespaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
