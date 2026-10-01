// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_scripts`.
const Set<String> _cloudflareWorkersScriptsSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_scripts`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersScripts extends Data {
  static const String tfType = 'cloudflare_workers_scripts';

  DataCloudflareWorkersScripts(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `tags` attribute.
  TfRef<String> get tags => TfRef.attribute<String>(this, 'tags');
}
