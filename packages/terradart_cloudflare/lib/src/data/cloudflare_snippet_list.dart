// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippet_list`.
const Set<String> _cloudflareSnippetListSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippet_list`.
///
/// Accepted Permissions
///
/// - `Snippets Read` - `Snippets Write`
final class DataCloudflareSnippetList extends Data {
  static const String tfType = 'cloudflare_snippet_list';

  DataCloudflareSnippetList({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetListSensitive;
}
