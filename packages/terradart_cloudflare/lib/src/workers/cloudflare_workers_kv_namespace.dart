// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_kv_namespace`.
const Set<String> _cloudflareWorkersKvNamespaceSensitive = <String>{};

/// Workers Kv Namespace enum for `jurisdiction`.
enum WorkersKvNamespaceJurisdiction implements TerraformEnum {
  eu('eu'),
  fedramp('fedramp'),
  us('us');

  const WorkersKvNamespaceJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_workers_kv_namespace`.
///
/// Accepted Permissions
///
/// - `Workers KV Storage Read` - `Workers KV Storage Write`
final class CloudflareWorkersKvNamespace extends Resource {
  static const String tfType = 'cloudflare_workers_kv_namespace';

  CloudflareWorkersKvNamespace(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<WorkersKvNamespaceJurisdiction>? jurisdiction,
    required TfArg<String> title,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'jurisdiction': ?jurisdiction,
           'title': title,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersKvNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersKvNamespace>`.
  RefTo<CloudflareWorkersKvNamespace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supports_url_encoding` attribute.
  TfRef<bool> get supportsUrlEncoding =>
      TfRef.attribute<bool>(this, 'supports_url_encoding');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
