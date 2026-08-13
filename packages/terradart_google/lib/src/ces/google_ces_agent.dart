// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_agent`.
const Set<String> _googleCesAgentSensitive = <String>{};

/// Typed helper for the `after_agent_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentAfterAgentCallbacks {
  const CesAgentAfterAgentCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `after_model_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentAfterModelCallbacks {
  const CesAgentAfterModelCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `after_tool_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentAfterToolCallbacks {
  const CesAgentAfterToolCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `before_agent_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentBeforeAgentCallbacks {
  const CesAgentBeforeAgentCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `before_model_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentBeforeModelCallbacks {
  const CesAgentBeforeModelCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `before_tool_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentBeforeToolCallbacks {
  const CesAgentBeforeToolCallbacks({
    this.description,
    this.disabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `llm_agent` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentLlmAgent {
  const CesAgentLlmAgent();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `model_settings` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentModelSettings {
  const CesAgentModelSettings({this.model, this.temperature});

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
  };
}

/// Typed helper for the `remote_dialogflow_agent` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentRemoteDialogflowAgent {
  const CesAgentRemoteDialogflowAgent({
    required this.agent,
    this.environmentId,
    required this.flowId,
    this.inputVariableMapping,
    this.outputVariableMapping,
    this.respectResponseInterruptionSettings,
  });

  final TfArg<String> agent;

  final TfArg<String>? environmentId;

  final TfArg<String> flowId;

  final TfArg<Map<String, String>>? inputVariableMapping;

  final TfArg<Map<String, String>>? outputVariableMapping;

  final TfArg<bool>? respectResponseInterruptionSettings;

  Map<String, Object?> encode() => {
    'agent': agent.toTfJson(),
    if (environmentId != null) 'environment_id': environmentId!.toTfJson(),
    'flow_id': flowId.toTfJson(),
    if (inputVariableMapping != null)
      'input_variable_mapping': inputVariableMapping!.toTfJson(),
    if (outputVariableMapping != null)
      'output_variable_mapping': outputVariableMapping!.toTfJson(),
    if (respectResponseInterruptionSettings != null)
      'respect_response_interruption_settings':
          respectResponseInterruptionSettings!.toTfJson(),
  };
}

/// Typed helper for the `toolsets` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentToolsets {
  const CesAgentToolsets({this.toolIds, required this.toolset});

  final TfArg<List<Object?>>? toolIds;

  final TfArg<String> toolset;

  Map<String, Object?> encode() => {
    if (toolIds != null) 'tool_ids': toolIds!.toTfJson(),
    'toolset': toolset.toTfJson(),
  };
}

/// Factory wrapper for `google_ces_agent`.
///
/// Description
///
/// Customer Engagement Suite **agent** — LLM or remote-Dialogflow child
/// of a [GoogleCesApp]. Pass the parent app's `app_id` (not the full
/// name) as [app].
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: the agent is design-time config
/// — session SKUs fire only on CX Agent Studio chat/voice sessions. This
/// factory never creates `google_ces_deployment` and never sends
/// sessions. Enable `ces.googleapis.com` via [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesAgent(
///   localName: 'agent',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   agentId: TfArg.literal('terradart-ces-agent'),
///   displayName: TfArg.literal('terradart-ces-agent'),
///   instruction: TfArg.literal('You are a helpful assistant.'),
///   llmAgent: const CesAgentLlmAgent(),
/// );
/// ```
final class GoogleCesAgent extends Resource {
  static const String tfType = 'google_ces_agent';

  GoogleCesAgent({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> displayName,
    TfArg<String>? agentId,
    TfArg<String>? description,
    TfArg<String>? instruction,
    CesAgentLlmAgent? llmAgent,
    CesAgentModelSettings? modelSettings,
    CesAgentRemoteDialogflowAgent? remoteDialogflowAgent,
    TfArg<List<String>>? tools,
    List<CesAgentToolsets>? toolsets,
    TfArg<List<String>>? guardrails,
    TfArg<List<String>>? childAgents,
    List<CesAgentBeforeAgentCallbacks>? beforeAgentCallbacks,
    List<CesAgentAfterAgentCallbacks>? afterAgentCallbacks,
    List<CesAgentBeforeModelCallbacks>? beforeModelCallbacks,
    List<CesAgentAfterModelCallbacks>? afterModelCallbacks,
    List<CesAgentBeforeToolCallbacks>? beforeToolCallbacks,
    List<CesAgentAfterToolCallbacks>? afterToolCallbacks,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'display_name': displayName,
           if (agentId != null) 'agent_id': agentId,
           if (description != null) 'description': description,
           if (instruction != null) 'instruction': instruction,
           if (llmAgent != null) 'llm_agent': TfArg.literal(llmAgent.encode()),
           if (modelSettings != null)
             'model_settings': TfArg.literal(modelSettings.encode()),
           if (remoteDialogflowAgent != null)
             'remote_dialogflow_agent': TfArg.literal(
               remoteDialogflowAgent.encode(),
             ),
           if (tools != null) 'tools': tools,
           if (toolsets != null)
             'toolsets': TfArg.literal([for (final e in toolsets) e.encode()]),
           if (guardrails != null) 'guardrails': guardrails,
           if (childAgents != null) 'child_agents': childAgents,
           if (beforeAgentCallbacks != null)
             'before_agent_callbacks': TfArg.literal([
               for (final e in beforeAgentCallbacks) e.encode(),
             ]),
           if (afterAgentCallbacks != null)
             'after_agent_callbacks': TfArg.literal([
               for (final e in afterAgentCallbacks) e.encode(),
             ]),
           if (beforeModelCallbacks != null)
             'before_model_callbacks': TfArg.literal([
               for (final e in beforeModelCallbacks) e.encode(),
             ]),
           if (afterModelCallbacks != null)
             'after_model_callbacks': TfArg.literal([
               for (final e in afterModelCallbacks) e.encode(),
             ]),
           if (beforeToolCallbacks != null)
             'before_tool_callbacks': TfArg.literal([
               for (final e in beforeToolCallbacks) e.encode(),
             ]),
           if (afterToolCallbacks != null)
             'after_tool_callbacks': TfArg.literal([
               for (final e in afterToolCallbacks) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAgentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `generated_summary` attribute.
  TfRef<String> get generatedSummary =>
      TfRef.attribute<String>(this, 'generated_summary');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `agent_id` (set this on create so association can bind it).
  TfRef<String> get agentIdRef => TfRef.attribute<String>(this, 'agent_id');
}
