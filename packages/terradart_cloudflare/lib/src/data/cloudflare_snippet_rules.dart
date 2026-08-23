// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_snippet_rules`.
const Set<String> _cloudflareSnippetRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_snippet_rules`.
///
/// Accepted Permissions
///
/// - `Snippets Read` - `Snippets Write`
final class DataCloudflareSnippetRules extends Data {
  static const String tfType = 'cloudflare_snippet_rules';

  DataCloudflareSnippetRules({
    required super.localName,
    required TfArg<String> zoneId,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
