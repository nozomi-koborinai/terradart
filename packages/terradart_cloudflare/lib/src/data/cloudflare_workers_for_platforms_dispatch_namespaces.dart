// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_for_platforms_dispatch_namespaces`.
const Set<String> _cloudflareWorkersForPlatformsDispatchNamespacesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_workers_for_platforms_dispatch_namespaces`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersForPlatformsDispatchNamespaces extends Data {
  static const String tfType =
      'cloudflare_workers_for_platforms_dispatch_namespaces';

  DataCloudflareWorkersForPlatformsDispatchNamespaces({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareWorkersForPlatformsDispatchNamespacesSensitive;
}
