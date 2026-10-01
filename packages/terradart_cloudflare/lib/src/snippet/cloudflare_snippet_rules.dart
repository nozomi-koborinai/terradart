// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_snippet_rules`.
const Set<String> _cloudflareSnippetRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_snippet_rules` (derived from provider schema).
@immutable
final class SnippetRules {
  const SnippetRules({
    this.description,
    this.enabled,
    required this.expression,
    required this.snippetName,
  });

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<String> snippetName;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'snippet_name': snippetName.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_snippet_rules`.
///
/// Accepted Permissions
///
/// - `Snippets Read` - `Snippets Write`
final class CloudflareSnippetRules extends Resource {
  static const String tfType = 'cloudflare_snippet_rules';

  CloudflareSnippetRules({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    required List<SnippetRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSnippetRules>`.
  RefTo<CloudflareSnippetRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
