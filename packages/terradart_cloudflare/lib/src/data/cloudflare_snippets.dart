// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../snippet/cloudflare_snippets.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_snippets`.
const Set<String> _cloudflareSnippetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippets`.
final class DataCloudflareSnippets extends Data {
  static const String tfType = 'cloudflare_snippets';

  DataCloudflareSnippets({
    required super.localName,
    required TfArg<String> snippetName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'snippet_name': snippetName,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetsSensitive;

  /// A reference to the `cloudflare_snippets` this data source reads, for
  /// arguments typed `RefTo<CloudflareSnippets>`.
  RefTo<CloudflareSnippets> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
