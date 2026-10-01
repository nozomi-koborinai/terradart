// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_playbook`.
const Set<String> _googleDialogflowCxPlaybookSensitive = <String>{};

/// Dialogflow Cx Playbook enum for `playbook_type`.
enum DialogflowCxPlaybookType implements TerraformEnum {
  playbookTypeUnspecified('PLAYBOOK_TYPE_UNSPECIFIED'),
  task('TASK'),
  routine('ROUTINE');

  const DialogflowCxPlaybookType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instruction` block of
/// `google_dialogflow_cx_playbook` (derived from provider schema).
@immutable
final class DialogflowCxPlaybookInstruction {
  const DialogflowCxPlaybookInstruction({this.guidelines, this.steps});

  final TfArg<String>? guidelines;

  final List<DialogflowCxPlaybookSteps>? steps;

  Map<String, Object?> encode() => {
    'guidelines': ?guidelines?.toTfJson(),
    if (steps != null) 'steps': [for (final e in steps!) e.encode()],
  };
}

/// Typed helper for the `instruction.steps` block of
/// `google_dialogflow_cx_playbook` (derived from provider schema).
@immutable
final class DialogflowCxPlaybookSteps {
  const DialogflowCxPlaybookSteps({this.steps, this.text});

  final TfArg<String>? steps;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'steps': ?steps?.toTfJson(),
    'text': ?text?.toTfJson(),
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
    'model': ?model?.toTfJson(),
    'prompt_text': ?promptText?.toTfJson(),
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

  GoogleDialogflowCxPlaybook(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> goal,
    TfArg<String>? parent,
    TfArg<DialogflowCxPlaybookType>? playbookType,
    TfArg<List<String>>? referencedTools,
    DialogflowCxPlaybookInstruction? instruction,
    DialogflowCxPlaybookLlmModelSettings? llmModelSettings,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'goal': goal,
           'parent': ?parent,
           'playbook_type': ?playbookType,
           'referenced_tools': ?referencedTools,
           if (instruction != null)
             'instruction': TfArg.literal(instruction.encode()),
           if (llmModelSettings != null)
             'llm_model_settings': TfArg.literal(llmModelSettings.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxPlaybookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxPlaybook>`.
  RefTo<GoogleDialogflowCxPlaybook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `goal` attribute.
  TfRef<String> get goal => TfRef.attribute<String>(this, 'goal');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `playbook_type` attribute.
  TfRef<String> get playbookType =>
      TfRef.attribute<String>(this, 'playbook_type');

  /// Reference to `referenced_tools` attribute.
  TfRef<List<String>> get referencedTools =>
      TfRef.attribute<List<String>>(this, 'referenced_tools');
}
