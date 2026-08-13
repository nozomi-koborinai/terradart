// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_entity_type`.
const Set<String> _googleDialogflowEntityTypeSensitive = <String>{};

/// Dialogflow Entity Type enum for `kind`.
enum DialogflowEntityTypeKind implements TerraformEnum {
  kindMap('KIND_MAP'),
  kindList('KIND_LIST'),
  kindRegexp('KIND_REGEXP');

  const DialogflowEntityTypeKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `entities` block of
/// `google_dialogflow_entity_type` (derived from provider schema).
@immutable
final class DialogflowEntityTypeEntities {
  const DialogflowEntityTypeEntities({
    required this.synonyms,
    required this.value,
  });

  final TfArg<List<Object?>> synonyms;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'synonyms': synonyms.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_entity_type`.
///
/// Represents an entity type. Entity types serve as a tool for extracting
/// parameter values from natural language queries.
///
/// Dialogflow ES **entity type** — extracts parameter values from
/// natural-language queries on the per-project ES agent.
///
/// **Cost:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Intent Detection
/// Text Query Operations for Enterprise Essentials Agents `114B-F183-612D`
/// **$0.002/count**. billing-behavior: entity types are design-time
/// config; query SKUs fire only on DetectIntent (this factory never
/// invokes it). Standard-tier agents have no catalog query SKU. Enable
/// `dialogflow.googleapis.com` before apply. The ES agent is a
/// per-project singleton — create [GoogleDialogflowAgent] first.
final class GoogleDialogflowEntityType extends Resource {
  static const String tfType = 'google_dialogflow_entity_type';

  GoogleDialogflowEntityType({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<DialogflowEntityTypeKind> kind,
    TfArg<bool>? enableFuzzyExtraction,
    List<DialogflowEntityTypeEntities>? entities,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'kind': kind,
           if (enableFuzzyExtraction != null)
             'enable_fuzzy_extraction': enableFuzzyExtraction,
           if (entities != null)
             'entities': TfArg.literal([for (final e in entities) e.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowEntityTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
