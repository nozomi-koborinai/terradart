// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippet`.
const Set<String> _cloudflareSnippetSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippet`.
///
/// Accepted Permissions
///
/// - `Snippets Read` - `Snippets Write`
final class DataCloudflareSnippet extends Data {
  static const String tfType = 'cloudflare_snippet';

  DataCloudflareSnippet({
    required super.localName,
    required TfArg<String> snippetName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'snippet_name': snippetName,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
