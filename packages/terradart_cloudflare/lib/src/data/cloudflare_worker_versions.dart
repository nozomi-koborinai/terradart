// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  DataCloudflareWorkerVersions(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> workerId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'worker_id': workerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerVersionsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `worker_id` attribute.
  TfRef<String> get workerId => TfRef.attribute<String>(this, 'worker_id');
}
