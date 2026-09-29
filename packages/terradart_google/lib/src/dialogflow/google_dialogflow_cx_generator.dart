// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_generator`.
const Set<String> _googleDialogflowCxGeneratorSensitive = <String>{};

/// Typed helper for the `llm_model_settings` block of
/// `google_dialogflow_cx_generator` (derived from provider schema).
@immutable
final class DialogflowCxGeneratorLlmModelSettings {
  const DialogflowCxGeneratorLlmModelSettings({this.model, this.promptText});

  final TfArg<String>? model;

  final TfArg<String>? promptText;

  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'prompt_text': ?promptText?.toTfJson(),
  };
}

/// Typed helper for the `model_parameter` block of
/// `google_dialogflow_cx_generator` (derived from provider schema).
@immutable
final class DialogflowCxGeneratorModelParameter {
  const DialogflowCxGeneratorModelParameter({
    this.maxDecodeSteps,
    this.temperature,
    this.topK,
    this.topP,
  });

  final TfArg<num>? maxDecodeSteps;

  final TfArg<num>? temperature;

  final TfArg<num>? topK;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'max_decode_steps': ?maxDecodeSteps?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_k': ?topK?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Typed helper for the `placeholders` block of
/// `google_dialogflow_cx_generator` (derived from provider schema).
@immutable
final class DialogflowCxGeneratorPlaceholders {
  const DialogflowCxGeneratorPlaceholders({this.id, this.name});

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `prompt_text` block of
/// `google_dialogflow_cx_generator` (derived from provider schema).
@immutable
final class DialogflowCxGeneratorPromptText {
  const DialogflowCxGeneratorPromptText({this.text});

  final TfArg<String>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Factory wrapper for `google_dialogflow_cx_generator`.
///
/// Generators contain prompt to be sent to the LLM model to generate text. The
/// prompt can contain parameters which will be resolved before calling the
/// model. It can optionally contain banned phrases to ensure the model
/// responses are safe.
///
/// Dialogflow CX **generator** — LLM prompt generator used by CX agents /
/// playbooks.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (plus generative model
/// usage on the agent path). billing-behavior: generators sit on the
/// Dialogflow CX / Agentspace surface deferred with never_apply
/// [GoogleDialogflowCxAgent]. **Never** wire into apply-smoke.
final class GoogleDialogflowCxGenerator extends Resource {
  static const String tfType = 'google_dialogflow_cx_generator';

  GoogleDialogflowCxGenerator({
    required super.localName,
    required TfArg<String> displayName,
    required DialogflowCxGeneratorPromptText promptText,
    TfArg<String>? parent,
    TfArg<String>? languageCode,
    DialogflowCxGeneratorLlmModelSettings? llmModelSettings,
    DialogflowCxGeneratorModelParameter? modelParameter,
    List<DialogflowCxGeneratorPlaceholders>? placeholders,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'prompt_text': TfArg.literal(promptText.encode()),
           'parent': ?parent,
           'language_code': ?languageCode,
           if (llmModelSettings != null)
             'llm_model_settings': TfArg.literal(llmModelSettings.encode()),
           if (modelParameter != null)
             'model_parameter': TfArg.literal(modelParameter.encode()),
           if (placeholders != null)
             'placeholders': TfArg.literal([
               for (final e in placeholders) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxGeneratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxGenerator>`.
  RefTo<GoogleDialogflowCxGenerator> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
