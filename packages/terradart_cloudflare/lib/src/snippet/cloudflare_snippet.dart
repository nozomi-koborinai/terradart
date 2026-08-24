// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippet`.
const Set<String> _cloudflareSnippetSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `cloudflare_snippet` (derived from provider schema).
@immutable
final class SnippetMetadata {
  const SnippetMetadata({required this.mainModule});

  final TfArg<String> mainModule;

  Map<String, Object?> encode() => {'main_module': mainModule.toTfJson()};
}

/// Factory wrapper for `cloudflare_snippet`.
///
/// Accepted Permissions
///
/// - `Snippets Read` - `Snippets Write`
final class CloudflareSnippet extends Resource {
  static const String tfType = 'cloudflare_snippet';

  CloudflareSnippet({
    required super.localName,
    required TfArg<List<Map<String, Object?>>> files,
    required TfArg<String> snippetName,
    required TfArg<String> zoneId,
    required SnippetMetadata metadata,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'files': files,
           'snippet_name': snippetName,
           'zone_id': zoneId,
           'metadata': TfArg.literal(metadata.encode()),
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
