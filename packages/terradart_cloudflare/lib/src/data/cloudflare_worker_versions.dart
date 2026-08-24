// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_worker_versions`.
const Set<String> _cloudflareWorkerVersionsSensitive = <String>{
  'result.assets.jwt',
  'result.bindings.key_base64',
  'result.bindings.key_jwk',
  'result.bindings.text',
};

/// Factory wrapper for `cloudflare_worker_versions`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkerVersions extends Data {
  static const String tfType = 'cloudflare_worker_versions';

  DataCloudflareWorkerVersions({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> workerId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           'worker_id': workerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerVersionsSensitive;
}
