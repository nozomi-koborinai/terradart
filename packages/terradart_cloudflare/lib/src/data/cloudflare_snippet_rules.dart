// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../snippet/cloudflare_snippet_rules.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareSnippetRulesSensitive;

  /// A reference to the `cloudflare_snippet_rules` this data source reads, for
  /// arguments typed `RefTo<CloudflareSnippetRules>`.
  RefTo<CloudflareSnippetRules> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
