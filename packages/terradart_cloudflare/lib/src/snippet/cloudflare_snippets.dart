// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_snippets`.
const Set<String> _cloudflareSnippetsSensitive = <String>{};

/// Typed helper for the `metadata` block of
/// `cloudflare_snippets` (derived from provider schema).
@immutable
final class SnippetsMetadata {
  const SnippetsMetadata({required this.mainModule});

  final TfArg<String> mainModule;

  Map<String, Object?> encode() => {'main_module': mainModule.toTfJson()};
}

/// Factory wrapper for `cloudflare_snippets`.
final class CloudflareSnippets extends Resource {
  static const String tfType = 'cloudflare_snippets';

  CloudflareSnippets(
    super.localName, {
    required TfArg<List<String>> files,
    required TfArg<String> snippetName,
    required RefTo<CloudflareZone> zoneId,
    required SnippetsMetadata metadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'files': files,
           'snippet_name': snippetName,
           'zone_id': zoneId.encodeAs('id'),
           'metadata': TfArg.literal(metadata.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSnippets>`.
  RefTo<CloudflareSnippets> get ref => RefTo.of(this);

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `files` attribute.
  TfRef<List<String>> get files => TfRef.attribute<List<String>>(this, 'files');

  /// Reference to `snippet_name` attribute.
  TfRef<String> get snippetName =>
      TfRef.attribute<String>(this, 'snippet_name');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
