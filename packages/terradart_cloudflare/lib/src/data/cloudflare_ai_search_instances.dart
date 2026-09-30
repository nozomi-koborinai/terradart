// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_search_instances`.
const Set<String> _cloudflareAiSearchInstancesSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_search_instances`.
final class DataCloudflareAiSearchInstances extends Data {
  static const String tfType = 'cloudflare_ai_search_instances';

  DataCloudflareAiSearchInstances({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? namespace,
    TfArg<String>? orderBy,
    TfArg<String>? orderByDirection,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'namespace': ?namespace,
           'order_by': ?orderBy,
           'order_by_direction': ?orderByDirection,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSearchInstancesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderByRef => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `order_by_direction` attribute.
  TfRef<String> get orderByDirectionRef =>
      TfRef.attribute<String>(this, 'order_by_direction');

  /// Reference to `search` attribute.
  TfRef<String> get searchRef => TfRef.attribute<String>(this, 'search');
}
