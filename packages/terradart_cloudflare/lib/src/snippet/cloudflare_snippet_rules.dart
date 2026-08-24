// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippet_rules`.
const Set<String> _cloudflareSnippetRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_snippet_rules` (derived from provider schema).
@immutable
final class SnippetRulesRules {
  const SnippetRulesRules({
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
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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
    required TfArg<String> zoneId,
    required List<SnippetRulesRules> rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
