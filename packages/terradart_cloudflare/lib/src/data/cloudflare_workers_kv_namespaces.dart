// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_kv_namespaces`.
const Set<String> _cloudflareWorkersKvNamespacesSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_kv_namespaces`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class DataCloudflareWorkersKvNamespaces extends Data {
  static const String tfType = 'cloudflare_workers_kv_namespaces';

  DataCloudflareWorkersKvNamespaces({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespacesSensitive;
}
