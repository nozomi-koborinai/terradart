// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippets`.
const Set<String> _cloudflareSnippetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippets`.
final class DataCloudflareSnippets extends Data {
  static const String tfType = 'cloudflare_snippets';

  DataCloudflareSnippets({
    required super.localName,
    required TfArg<String> snippetName,
    required TfArg<String> zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'snippet_name': snippetName, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetsSensitive;

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
