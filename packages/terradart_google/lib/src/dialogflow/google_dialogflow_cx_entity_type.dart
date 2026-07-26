// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_entity_type`.
const Set<String> _googleDialogflowCxEntityTypeSensitive = <String>{};

/// Dialogflow Cx Entity Type Auto Expansion enum for `auto_expansion_mode`.
enum DialogflowCxEntityTypeAutoExpansionMode implements TerraformEnum {
  autoExpansionModeDefault('AUTO_EXPANSION_MODE_DEFAULT'),
  autoExpansionModeUnspecified('AUTO_EXPANSION_MODE_UNSPECIFIED');

  const DialogflowCxEntityTypeAutoExpansionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dialogflow Cx Entity Type enum for `kind`.
enum DialogflowCxEntityTypeKind implements TerraformEnum {
  kindMap('KIND_MAP'),
  kindList('KIND_LIST'),
  kindRegexp('KIND_REGEXP');

  const DialogflowCxEntityTypeKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `entities` block of
/// `google_dialogflow_cx_entity_type` (derived from provider schema).
@immutable
final class DialogflowCxEntityTypeEntities {
  const DialogflowCxEntityTypeEntities({this.synonyms, this.value});

  final TfArg<List<Object?>>? synonyms;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (synonyms != null) 'synonyms': synonyms!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `excluded_phrases` block of
/// `google_dialogflow_cx_entity_type` (derived from provider schema).
@immutable
final class DialogflowCxEntityTypeExcludedPhrases {
  const DialogflowCxEntityTypeExcludedPhrases({this.value});

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_entity_type`.
///
/// Entities are extracted from user input and represent parameters that are
/// meaningful to your application. For example, a date range, a proper name
/// such as a geographic location or landmark, and so on. Entities represent
/// actionable data for your application.
///
/// Dialogflow CX **entity type** — custom entities / synonyms for a CX
/// agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: entity types sit on the
/// never_apply [GoogleDialogflowCxAgent] session path. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxEntityType extends Resource {
  static const String tfType = 'google_dialogflow_cx_entity_type';

  GoogleDialogflowCxEntityType({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<DialogflowCxEntityTypeKind> kind,
    TfArg<String>? parent,
    TfArg<String>? languageCode,
    TfArg<DialogflowCxEntityTypeAutoExpansionMode>? autoExpansionMode,
    TfArg<bool>? enableFuzzyExtraction,
    TfArg<bool>? redact,
    required List<DialogflowCxEntityTypeEntities> entities,
    List<DialogflowCxEntityTypeExcludedPhrases>? excludedPhrases,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'kind': kind,
           if (parent != null) 'parent': parent,
           if (languageCode != null) 'language_code': languageCode,
           if (autoExpansionMode != null)
             'auto_expansion_mode': autoExpansionMode,
           if (enableFuzzyExtraction != null)
             'enable_fuzzy_extraction': enableFuzzyExtraction,
           if (redact != null) 'redact': redact,
           'entities': TfArg.literal([for (final e in entities) e.encode()]),
           if (excludedPhrases != null)
             'excluded_phrases': TfArg.literal([
               for (final e in excludedPhrases) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxEntityTypeSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
