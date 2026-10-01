// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_kv_namespace.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_kv_namespace`.
const Set<String> _cloudflareWorkersKvNamespaceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workers_kv_namespace` (derived from provider schema).
@immutable
final class DataWorkersKvNamespaceFilter {
  const DataWorkersKvNamespaceFilter({this.direction, this.order});

  final TfArg<DataWorkersKvNamespaceDirection>? direction;

  final TfArg<DataWorkersKvNamespaceOrder>? order;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataWorkersKvNamespaceDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataWorkersKvNamespaceDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataWorkersKvNamespaceOrder implements TerraformEnum {
  id('id'),
  title('title');

  const DataWorkersKvNamespaceOrder(this.terraformValue);
  @override
  final String terraformValue;
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? namespaceId,
    DataWorkersKvNamespaceFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'namespace_id': ?namespaceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespaceSensitive;

  /// A reference to the `cloudflare_workers_kv_namespace` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersKvNamespace>`.
  RefTo<CloudflareWorkersKvNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `supports_url_encoding` attribute.
  TfRef<bool> get supportsUrlEncoding =>
      TfRef.attribute<bool>(this, 'supports_url_encoding');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');
}
