// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_intent`.
const Set<String> _googleDialogflowCxIntentSensitive = <String>{};

/// Typed helper for the `parameters` block of
/// `google_dialogflow_cx_intent` (derived from provider schema).
@immutable
final class DialogflowCxIntentParameters {
  const DialogflowCxIntentParameters({
    required this.entityType,
    required this.id,
    this.isList,
    this.redact,
  });

  final TfArg<String> entityType;

  final TfArg<String> id;

  final TfArg<bool>? isList;

  final TfArg<bool>? redact;

  Map<String, Object?> encode() => {
    'entity_type': entityType.toTfJson(),
    'id': id.toTfJson(),
    if (isList != null) 'is_list': isList!.toTfJson(),
    if (redact != null) 'redact': redact!.toTfJson(),
  };
}

/// Typed helper for the `training_phrases` block of
/// `google_dialogflow_cx_intent` (derived from provider schema).
@immutable
final class DialogflowCxIntentTrainingPhrases {
  const DialogflowCxIntentTrainingPhrases({
    this.repeatCount,
    required this.parts,
  });

  final TfArg<num>? repeatCount;

  final List<DialogflowCxIntentTrainingPhrasesParts> parts;

  Map<String, Object?> encode() => {
    if (repeatCount != null) 'repeat_count': repeatCount!.toTfJson(),
    'parts': [for (final e in parts) e.encode()],
  };
}

/// Typed helper for the `training_phrases.parts` block of
/// `google_dialogflow_cx_intent` (derived from provider schema).
@immutable
final class DialogflowCxIntentTrainingPhrasesParts {
  const DialogflowCxIntentTrainingPhrasesParts({
    this.parameterId,
    required this.text,
  });

  final TfArg<String>? parameterId;

  final TfArg<String> text;

  Map<String, Object?> encode() => {
    if (parameterId != null) 'parameter_id': parameterId!.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_intent`.
///
/// An intent represents a user's intent to interact with a conversational
/// agent.
///
/// Dialogflow CX **intent** — training phrases / parameters for a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: intents sit on the never_apply
/// [GoogleDialogflowCxAgent] session path. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxIntent extends Resource {
  static const String tfType = 'google_dialogflow_cx_intent';

  GoogleDialogflowCxIntent({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<num>? priority,
    TfArg<bool>? isFallback,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? languageCode,
    TfArg<bool>? isDefaultWelcomeIntent,
    TfArg<bool>? isDefaultNegativeIntent,
    List<DialogflowCxIntentTrainingPhrases>? trainingPhrases,
    List<DialogflowCxIntentParameters>? parameters,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (parent != null) 'parent': parent,
           if (description != null) 'description': description,
           if (priority != null) 'priority': priority,
           if (isFallback != null) 'is_fallback': isFallback,
           if (labels != null) 'labels': labels,
           if (languageCode != null) 'language_code': languageCode,
           if (isDefaultWelcomeIntent != null)
             'is_default_welcome_intent': isDefaultWelcomeIntent,
           if (isDefaultNegativeIntent != null)
             'is_default_negative_intent': isDefaultNegativeIntent,
           if (trainingPhrases != null)
             'training_phrases': TfArg.literal([
               for (final e in trainingPhrases) e.encode(),
             ]),
           if (parameters != null)
             'parameters': TfArg.literal([
               for (final e in parameters) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxIntentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
