// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_playbook`.
const Set<String> _googleDialogflowCxPlaybookSensitive = <String>{};

/// Dialogflow Cx Playbook Playbook enum for `playbook_type`.
enum DialogflowCxPlaybookPlaybookType implements TerraformEnum {
  playbookTypeUnspecified('PLAYBOOK_TYPE_UNSPECIFIED'),
  task('TASK'),
  routine('ROUTINE');

  const DialogflowCxPlaybookPlaybookType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instruction` block of
/// `google_dialogflow_cx_playbook` (derived from provider schema).
@immutable
final class DialogflowCxPlaybookInstruction {
  const DialogflowCxPlaybookInstruction({this.guidelines, this.steps});

  final TfArg<String>? guidelines;

  final List<DialogflowCxPlaybookInstructionSteps>? steps;

  Map<String, Object?> encode() => {
    if (guidelines != null) 'guidelines': guidelines!.toTfJson(),
    if (steps != null) 'steps': [for (final e in steps!) e.encode()],
  };
}

/// Typed helper for the `instruction.steps` block of
/// `google_dialogflow_cx_playbook` (derived from provider schema).
@immutable
final class DialogflowCxPlaybookInstructionSteps {
  const DialogflowCxPlaybookInstructionSteps({this.steps, this.text});

  final TfArg<String>? steps;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    if (steps != null) 'steps': steps!.toTfJson(),
    if (text != null) 'text': text!.toTfJson(),
  };
}

/// Typed helper for the `llm_model_settings` block of
/// `google_dialogflow_cx_playbook` (derived from provider schema).
@immutable
final class DialogflowCxPlaybookLlmModelSettings {
  const DialogflowCxPlaybookLlmModelSettings({this.model, this.promptText});

  final TfArg<String>? model;

  final TfArg<String>? promptText;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (promptText != null) 'prompt_text': promptText!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_playbook`.
///
/// Playbook is the basic building block to instruct the LLM how to execute a
/// certain task.
///
/// Dialogflow CX **playbook** — goal-driven generative playbook on a CX
/// agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session; plus generative model usage). billing-behavior:
/// playbooks sit on the never_apply [GoogleDialogflowCxAgent] generative
/// session path. **Never** wire into apply-smoke.
final class GoogleDialogflowCxPlaybook extends Resource {
  static const String tfType = 'google_dialogflow_cx_playbook';

  GoogleDialogflowCxPlaybook({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> goal,
    TfArg<String>? parent,
    TfArg<DialogflowCxPlaybookPlaybookType>? playbookType,
    TfArg<List<String>>? referencedTools,
    DialogflowCxPlaybookInstruction? instruction,
    DialogflowCxPlaybookLlmModelSettings? llmModelSettings,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'goal': goal,
           if (parent != null) 'parent': parent,
           if (playbookType != null) 'playbook_type': playbookType,
           if (referencedTools != null) 'referenced_tools': referencedTools,
           if (instruction != null)
             'instruction': TfArg.literal(instruction.encode()),
           if (llmModelSettings != null)
             'llm_model_settings': TfArg.literal(llmModelSettings.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxPlaybookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `referenced_flows` attribute.
  TfRef<List<String>> get referencedFlows =>
      TfRef.attribute<List<String>>(this, 'referenced_flows');

  /// Reference to `referenced_playbooks` attribute.
  TfRef<List<String>> get referencedPlaybooks =>
      TfRef.attribute<List<String>>(this, 'referenced_playbooks');

  /// Reference to `token_count` attribute.
  TfRef<String> get tokenCount => TfRef.attribute<String>(this, 'token_count');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
