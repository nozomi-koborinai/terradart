// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_search_namespaces`.
const Set<String> _cloudflareAiSearchNamespacesSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_namespaces`.
final class DataCloudflareAiSearchNamespaces extends Data {
  static const String tfType = 'cloudflare_ai_search_namespaces';

  DataCloudflareAiSearchNamespaces({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? maxItems,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'max_items': ?maxItems,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchNamespacesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
