// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_kv_namespace`.
const Set<String> _cloudflareWorkersKvNamespaceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workers_kv_namespace` (derived from provider schema).
@immutable
final class DataWorkersKvNamespaceFilter {
  const DataWorkersKvNamespaceFilter({this.direction, this.order});

  final TfArg<String>? direction;

  final TfArg<String>? order;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workers_kv_namespace`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class DataCloudflareWorkersKvNamespace extends Data {
  static const String tfType = 'cloudflare_workers_kv_namespace';

  DataCloudflareWorkersKvNamespace({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? namespaceId,
    DataWorkersKvNamespaceFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (namespaceId != null) 'namespace_id': namespaceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supports_url_encoding` attribute.
  TfRef<bool> get supportsUrlEncoding =>
      TfRef.attribute<bool>(this, 'supports_url_encoding');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
