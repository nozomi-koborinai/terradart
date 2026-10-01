// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_generator`.
const Set<String> _googleDialogflowGeneratorSensitive = <String>{};

/// Dialogflow Generator Trigger enum for `trigger_event`.
enum DialogflowGeneratorTriggerEvent implements TerraformEnum {
  endOfUtterance('END_OF_UTTERANCE'),
  manualCall('MANUAL_CALL'),
  customerMessage('CUSTOMER_MESSAGE'),
  agentMessage('AGENT_MESSAGE');

  const DialogflowGeneratorTriggerEvent(this.terraformValue);
  @override
  final String terraformValue;
}

/// Thin `summarization_context` — version + output language only
/// (Hashicorp basic sample). Few-shot examples and section lists
/// stay off the Dart constructor.
final class DialogflowGeneratorSummarizationContext {
  const DialogflowGeneratorSummarizationContext({
    this.version,
    this.outputLanguageCode,
  });

  final TfArg<String>? version;
  final TfArg<String>? outputLanguageCode;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
    if (outputLanguageCode != null)
      'output_language_code': outputLanguageCode!.toTfJson(),
  };
}

/// Typed helper for the `inference_parameter` block of
/// `google_dialogflow_generator` (derived from provider schema).
@immutable
final class DialogflowGeneratorInferenceParameter {
  const DialogflowGeneratorInferenceParameter({
    this.maxOutputTokens,
    this.temperature,
    this.topK,
    this.topP,
  });

  final TfArg<num>? maxOutputTokens;

  final TfArg<num>? temperature;

  final TfArg<num>? topK;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'max_output_tokens': ?maxOutputTokens?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_k': ?topK?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_generator`.
///
/// LLM generator.
///
/// Dialogflow **Agent Assist summarization generator** — LLM
/// generator config metadata. Creating the generator does **not**
/// start a conversation, call DetectIntent, or run summarization.
///
/// Prefer a thin smoke stack: [location] `global`, [triggerEvent]
/// `MANUAL_CALL`, and a [summarizationContext] with version `4.0`
/// plus `en`. Omit [publishedModel], inference parameters, few-shot
/// examples, and summarization sections. Set [deletionPolicy] to
/// `DELETE`.
///
/// `dialogflow_quickstart` is apply-smoke skipped (SIP trunk needs
/// a live carrier TLS peer), so this factory is synth +
/// `terraform validate` only.
///
/// Example:
/// ```dart
/// GoogleDialogflowGenerator(
///   localName: 'demo_summarizer',
///   location: TfArg.literal('global'),
///   description: TfArg.literal('terradart summarization generator'),
///   triggerEvent: TfArg.literal(
///     DialogflowGeneratorTriggerEvent.manualCall,
///   ),
///   summarizationContext: DialogflowGeneratorSummarizationContext(
///     version: TfArg.literal('4.0'),
///     outputLanguageCode: TfArg.literal('en'),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDialogflowGenerator extends Resource {
  static const String tfType = 'google_dialogflow_generator';

  GoogleDialogflowGenerator({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? generatorId,
    TfArg<String>? description,
    TfArg<DialogflowGeneratorTriggerEvent>? triggerEvent,
    required DialogflowGeneratorSummarizationContext summarizationContext,
    TfArg<String>? publishedModel,
    DialogflowGeneratorInferenceParameter? inferenceParameter,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'generator_id': ?generatorId,
           'description': ?description,
           'trigger_event': ?triggerEvent,
           'summarization_context': TfArg.literal([
             summarizationContext.encode(),
           ]),
           'published_model': ?publishedModel,
           if (inferenceParameter != null)
             'inference_parameter': TfArg.literal(inferenceParameter.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowGeneratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowGenerator>`.
  RefTo<GoogleDialogflowGenerator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `generator_id` attribute.
  TfRef<String> get generatorId =>
      TfRef.attribute<String>(this, 'generator_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `published_model` attribute.
  TfRef<String> get publishedModel =>
      TfRef.attribute<String>(this, 'published_model');

  /// Reference to `trigger_event` attribute.
  TfRef<String> get triggerEvent =>
      TfRef.attribute<String>(this, 'trigger_event');
}
