// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_kv_namespace`.
const Set<String> _cloudflareWorkersKvNamespaceSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_kv_namespace`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class CloudflareWorkersKvNamespace extends Resource {
  static const String tfType = 'cloudflare_workers_kv_namespace';

  CloudflareWorkersKvNamespace({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> title,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'title': title},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supports_url_encoding` attribute.
  TfRef<bool> get supportsUrlEncoding =>
      TfRef.attribute<bool>(this, 'supports_url_encoding');
}
