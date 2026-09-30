// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_snippets_list`.
const Set<String> _cloudflareSnippetsListSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippets_list`.
final class DataCloudflareSnippetsList extends Data {
  static const String tfType = 'cloudflare_snippets_list';

  DataCloudflareSnippetsList({
    required super.localName,
    TfArg<num>? maxItems,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetsListSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
