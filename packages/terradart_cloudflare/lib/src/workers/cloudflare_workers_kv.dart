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
final class CloudflareWorkersKv extends Resource {
  static const String tfType = 'cloudflare_workers_kv';

  CloudflareWorkersKv({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> keyName,
    TfArg<String>? metadata,
    required TfArg<String> namespaceId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'key_name': keyName,
           if (metadata != null) 'metadata': metadata,
           'namespace_id': namespaceId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
