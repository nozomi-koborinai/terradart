// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_field_extractor`.
const Set<String> _cloudflareFieldExtractorSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_field_extractor` (derived from provider schema).
@immutable
final class FieldExtractorRules {
  const FieldExtractorRules({
    this.description,
    required this.ref,
    required this.fields,
  });

  final TfArg<String>? description;

  final TfArg<String> ref;

  final List<FieldExtractorRulesFields> fields;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'ref': ref.toTfJson(),
    'fields': [for (final e in fields) e.encode()],
  };
}

/// Typed helper for the `rules.fields` block of
/// `cloudflare_field_extractor` (derived from provider schema).
@immutable
final class FieldExtractorRulesFields {
  const FieldExtractorRulesFields({
    required this.expression,
    required this.name,
  });

  final TfArg<String> expression;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'expression': expression.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_field_extractor`.
final class CloudflareFieldExtractor extends Resource {
  static const String tfType = 'cloudflare_field_extractor';

  CloudflareFieldExtractor({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> extractor,
    required List<FieldExtractorRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'extractor': extractor,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFieldExtractorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
