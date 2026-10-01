// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_evaluation`.
const Set<String> _googleCesEvaluationSensitive = <String>{};

/// Typed helper for the `golden` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGolden {
  const CesEvaluationGolden({this.evaluationExpectations, required this.turns});

  final TfArg<List<String>>? evaluationExpectations;

  final List<CesEvaluationTurns> turns;

  Map<String, Object?> encode() => {
    'evaluation_expectations': ?evaluationExpectations?.toTfJson(),
    'turns': [for (final e in turns) e.encode()],
  };
}

/// Typed helper for the `golden.turns` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationTurns {
  const CesEvaluationTurns({required this.steps});

  final List<CesEvaluationSteps> steps;

  Map<String, Object?> encode() => {
    'steps': [for (final e in steps) e.encode()],
  };
}

/// Typed helper for the `golden.turns.steps` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationSteps {
  const CesEvaluationSteps({
    this.agentTransfer,
    this.expectation,
    this.userInput,
  });

  final CesEvaluationAgentTransfer? agentTransfer;

  final CesEvaluationExpectation? expectation;

  final CesEvaluationUserInput? userInput;

  Map<String, Object?> encode() => {
    'agent_transfer': ?agentTransfer?.encode(),
    'expectation': ?expectation?.encode(),
    'user_input': ?userInput?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationAgentTransfer {
  const CesEvaluationAgentTransfer({required this.targetAgent});

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.expectation` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationExpectation {
  const CesEvaluationExpectation({
    this.note,
    this.agentResponse,
    this.agentTransfer,
    this.mockToolResponse,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  final TfArg<String>? note;

  final CesEvaluationAgentResponse? agentResponse;

  final CesEvaluationExpectationAgentTransfer? agentTransfer;

  final CesEvaluationExpectationMockToolResponse? mockToolResponse;

  final CesEvaluationToolCall? toolCall;

  final CesEvaluationToolResponse? toolResponse;

  final CesEvaluationUpdatedVariables? updatedVariables;

  Map<String, Object?> encode() => {
    'note': ?note?.toTfJson(),
    'agent_response': ?agentResponse?.encode(),
    'agent_transfer': ?agentTransfer?.encode(),
    'mock_tool_response': ?mockToolResponse?.encode(),
    'tool_call': ?toolCall?.encode(),
    'tool_response': ?toolResponse?.encode(),
    'updated_variables': ?updatedVariables?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationAgentResponse {
  const CesEvaluationAgentResponse({this.role, this.chunks});

  final TfArg<String>? role;

  final List<CesEvaluationChunks>? chunks;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (chunks != null) 'chunks': [for (final e in chunks!) e.encode()],
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationChunks {
  const CesEvaluationChunks({
    this.text,
    this.updatedVariables,
    this.agentTransfer,
    this.blob,
    this.image,
    this.toolCall,
    this.toolResponse,
  });

  final TfArg<String>? text;

  final TfArg<Map<String, String>>? updatedVariables;

  final CesEvaluationAgentTransfer? agentTransfer;

  final CesEvaluationBlob? blob;

  final CesEvaluationImage? image;

  final CesEvaluationToolCall? toolCall;

  final CesEvaluationToolResponse? toolResponse;

  Map<String, Object?> encode() => {
    'text': ?text?.toTfJson(),
    'updated_variables': ?updatedVariables?.toTfJson(),
    'agent_transfer': ?agentTransfer?.encode(),
    'blob': ?blob?.encode(),
    'image': ?image?.encode(),
    'tool_call': ?toolCall?.encode(),
    'tool_response': ?toolResponse?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.blob` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationBlob {
  const CesEvaluationBlob({required this.data, required this.mimeType});

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.image` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationImage {
  const CesEvaluationImage({required this.data, required this.mimeType});

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationToolCall {
  const CesEvaluationToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationMockToolResponseToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.mock_tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationMockToolResponseToolsetTool {
  const CesEvaluationMockToolResponseToolsetTool({
    this.toolId,
    required this.toolset,
  });

  final TfArg<String>? toolId;

  final TfArg<String> toolset;

  Map<String, Object?> encode() => {
    'tool_id': ?toolId?.toTfJson(),
    'toolset': toolset.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.tool_response` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationToolResponse {
  const CesEvaluationToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationMockToolResponseToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationExpectationAgentTransfer {
  const CesEvaluationExpectationAgentTransfer({
    this.displayName,
    this.targetAgent,
  });

  final TfArg<String>? displayName;

  final TfArg<String>? targetAgent;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'target_agent': ?targetAgent?.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.mock_tool_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationExpectationMockToolResponse {
  const CesEvaluationExpectationMockToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationMockToolResponseToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.updated_variables` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationUpdatedVariables {
  const CesEvaluationUpdatedVariables({this.notes});

  final TfArg<String>? notes;

  Map<String, Object?> encode() => {'notes': ?notes?.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.user_input` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationUserInput {
  const CesEvaluationUserInput({
    this.audio,
    this.dtmf,
    this.text,
    this.variables,
    this.willContinue,
    this.blob,
    this.event,
    this.image,
    this.toolResponses,
  });

  final TfArg<String>? audio;

  final TfArg<String>? dtmf;

  final TfArg<String>? text;

  final TfArg<Map<String, String>>? variables;

  final TfArg<bool>? willContinue;

  final CesEvaluationBlob? blob;

  final CesEvaluationEvent? event;

  final CesEvaluationImage? image;

  final CesEvaluationToolResponses? toolResponses;

  Map<String, Object?> encode() => {
    'audio': ?audio?.toTfJson(),
    'dtmf': ?dtmf?.toTfJson(),
    'text': ?text?.toTfJson(),
    'variables': ?variables?.toTfJson(),
    'will_continue': ?willContinue?.toTfJson(),
    'blob': ?blob?.encode(),
    'event': ?event?.encode(),
    'image': ?image?.encode(),
    'tool_responses': ?toolResponses?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.event` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationEvent {
  const CesEvaluationEvent({required this.event});

  final TfArg<String> event;

  Map<String, Object?> encode() => {'event': event.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.user_input.tool_responses` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationToolResponses {
  const CesEvaluationToolResponses({this.toolResponses});

  final List<CesEvaluationToolResponsesToolResponses>? toolResponses;

  Map<String, Object?> encode() => {
    if (toolResponses != null)
      'tool_responses': [for (final e in toolResponses!) e.encode()],
  };
}

/// Typed helper for the `golden.turns.steps.user_input.tool_responses.tool_responses` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationToolResponsesToolResponses {
  const CesEvaluationToolResponsesToolResponses({
    this.id,
    required this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>> response;

  final TfArg<String>? tool;

  final CesEvaluationMockToolResponseToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': response.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenario {
  const CesEvaluationScenario({
    this.evaluationExpectations,
    this.maxTurns,
    required this.rubrics,
    required this.task,
    this.taskCompletionBehavior,
    this.userGoalBehavior,
    this.variableOverrides,
    required this.scenarioExpectations,
    this.userFacts,
  });

  final TfArg<List<String>>? evaluationExpectations;

  final TfArg<num>? maxTurns;

  final TfArg<List<String>> rubrics;

  final TfArg<String> task;

  final TfArg<String>? taskCompletionBehavior;

  final TfArg<String>? userGoalBehavior;

  final TfArg<Map<String, String>>? variableOverrides;

  final List<CesEvaluationScenarioExpectations> scenarioExpectations;

  final List<CesEvaluationUserFacts>? userFacts;

  Map<String, Object?> encode() => {
    'evaluation_expectations': ?evaluationExpectations?.toTfJson(),
    'max_turns': ?maxTurns?.toTfJson(),
    'rubrics': rubrics.toTfJson(),
    'task': task.toTfJson(),
    'task_completion_behavior': ?taskCompletionBehavior?.toTfJson(),
    'user_goal_behavior': ?userGoalBehavior?.toTfJson(),
    'variable_overrides': ?variableOverrides?.toTfJson(),
    'scenario_expectations': [for (final e in scenarioExpectations) e.encode()],
    if (userFacts != null)
      'user_facts': [for (final e in userFacts!) e.encode()],
  };
}

/// Typed helper for the `scenario.scenario_expectations` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioExpectations {
  const CesEvaluationScenarioExpectations({
    this.agentResponse,
    this.toolExpectation,
  });

  final CesEvaluationAgentResponse? agentResponse;

  final CesEvaluationToolExpectation? toolExpectation;

  Map<String, Object?> encode() => {
    'agent_response': ?agentResponse?.encode(),
    'tool_expectation': ?toolExpectation?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationToolExpectation {
  const CesEvaluationToolExpectation({
    this.expectedToolCall,
    this.mockToolResponse,
  });

  final CesEvaluationExpectedToolCall? expectedToolCall;

  final CesEvaluationMockToolResponse? mockToolResponse;

  Map<String, Object?> encode() => {
    'expected_tool_call': ?expectedToolCall?.encode(),
    'mock_tool_response': ?mockToolResponse?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.expected_tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationExpectedToolCall {
  const CesEvaluationExpectedToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.expected_tool_call.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesEvaluationToolsetTool {
  const CesEvaluationToolsetTool({this.toolId, this.toolset});

  final TfArg<String>? toolId;

  final TfArg<String>? toolset;

  Map<String, Object?> encode() => {
    'tool_id': ?toolId?.toTfJson(),
    'toolset': ?toolset?.toTfJson(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.mock_tool_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationMockToolResponse {
  const CesEvaluationMockToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationToolsetTool? toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.user_facts` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationUserFacts {
  const CesEvaluationUserFacts({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_ces_evaluation`.
///
/// Customer Engagement Suite Evaluation
final class GoogleCesEvaluation extends Resource {
  static const String tfType = 'google_ces_evaluation';

  GoogleCesEvaluation({
    required super.localName,
    required TfArg<String> app,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> evaluationId,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<List<String>>? tags,
    CesEvaluationGolden? golden,
    CesEvaluationScenario? scenario,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'app': app,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': displayName,
           'evaluation_id': evaluationId,
           'location': location,
           'project': ?project,
           'tags': ?tags,
           if (golden != null) 'golden': TfArg.literal(golden.encode()),
           if (scenario != null) 'scenario': TfArg.literal(scenario.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesEvaluationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesEvaluation>`.
  RefTo<GoogleCesEvaluation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `evaluation_datasets` attribute.
  TfRef<List<String>> get evaluationDatasets =>
      TfRef.attribute<List<String>>(this, 'evaluation_datasets');

  /// Reference to `evaluation_runs` attribute.
  TfRef<List<String>> get evaluationRuns =>
      TfRef.attribute<List<String>>(this, 'evaluation_runs');

  /// Reference to `invalid` attribute.
  TfRef<bool> get invalid => TfRef.attribute<bool>(this, 'invalid');

  /// Reference to `last_updated_by` attribute.
  TfRef<String> get lastUpdatedBy =>
      TfRef.attribute<String>(this, 'last_updated_by');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `evaluation_id` attribute.
  TfRef<String> get evaluationIdRef =>
      TfRef.attribute<String>(this, 'evaluation_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tagsRef =>
      TfRef.attribute<List<String>>(this, 'tags');
}
