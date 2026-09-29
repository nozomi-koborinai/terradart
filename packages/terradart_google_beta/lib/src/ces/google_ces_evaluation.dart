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

  final TfArg<List<Object?>>? evaluationExpectations;

  final List<CesEvaluationGoldenTurns> turns;

  Map<String, Object?> encode() => {
    'evaluation_expectations': ?evaluationExpectations?.toTfJson(),
    'turns': [for (final e in turns) e.encode()],
  };
}

/// Typed helper for the `golden.turns` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurns {
  const CesEvaluationGoldenTurns({required this.steps});

  final List<CesEvaluationGoldenTurnsSteps> steps;

  Map<String, Object?> encode() => {
    'steps': [for (final e in steps) e.encode()],
  };
}

/// Typed helper for the `golden.turns.steps` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsSteps {
  const CesEvaluationGoldenTurnsSteps({
    this.agentTransfer,
    this.expectation,
    this.userInput,
  });

  final CesEvaluationGoldenTurnsStepsAgentTransfer? agentTransfer;

  final CesEvaluationGoldenTurnsStepsExpectation? expectation;

  final CesEvaluationGoldenTurnsStepsUserInput? userInput;

  Map<String, Object?> encode() => {
    'agent_transfer': ?agentTransfer?.encode(),
    'expectation': ?expectation?.encode(),
    'user_input': ?userInput?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsAgentTransfer {
  const CesEvaluationGoldenTurnsStepsAgentTransfer({required this.targetAgent});

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.expectation` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectation {
  const CesEvaluationGoldenTurnsStepsExpectation({
    this.note,
    this.agentResponse,
    this.agentTransfer,
    this.mockToolResponse,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  final TfArg<String>? note;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponse? agentResponse;

  final CesEvaluationGoldenTurnsStepsExpectationAgentTransfer? agentTransfer;

  final CesEvaluationGoldenTurnsStepsExpectationMockToolResponse?
  mockToolResponse;

  final CesEvaluationGoldenTurnsStepsExpectationToolCall? toolCall;

  final CesEvaluationGoldenTurnsStepsExpectationToolResponse? toolResponse;

  final CesEvaluationGoldenTurnsStepsExpectationUpdatedVariables?
  updatedVariables;

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

/// Typed helper for the `golden.turns.steps.expectation.agent_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponse {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponse({
    this.role,
    this.chunks,
  });

  final TfArg<String>? role;

  final List<CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunks>?
  chunks;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (chunks != null) 'chunks': [for (final e in chunks!) e.encode()],
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunks {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunks({
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

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksAgentTransfer?
  agentTransfer;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksBlob? blob;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksImage? image;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCall?
  toolCall;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponse?
  toolResponse;

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

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksAgentTransfer {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksAgentTransfer({
    required this.targetAgent,
  });

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.blob` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksBlob {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksBlob({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.image` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksImage {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksImage({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCall {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCallToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.tool_call.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCallToolsetTool {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolCallToolsetTool({
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

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.tool_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponse {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponseToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.agent_response.chunks.tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponseToolsetTool {
  const CesEvaluationGoldenTurnsStepsExpectationAgentResponseChunksToolResponseToolsetTool({
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

/// Typed helper for the `golden.turns.steps.expectation.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationAgentTransfer {
  const CesEvaluationGoldenTurnsStepsExpectationAgentTransfer({
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
final class CesEvaluationGoldenTurnsStepsExpectationMockToolResponse {
  const CesEvaluationGoldenTurnsStepsExpectationMockToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsExpectationMockToolResponseToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.mock_tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationMockToolResponseToolsetTool {
  const CesEvaluationGoldenTurnsStepsExpectationMockToolResponseToolsetTool({
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

/// Typed helper for the `golden.turns.steps.expectation.tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationToolCall {
  const CesEvaluationGoldenTurnsStepsExpectationToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsExpectationToolCallToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.tool_call.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationToolCallToolsetTool {
  const CesEvaluationGoldenTurnsStepsExpectationToolCallToolsetTool({
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
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationToolResponse {
  const CesEvaluationGoldenTurnsStepsExpectationToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsExpectationToolResponseToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.expectation.tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationToolResponseToolsetTool {
  const CesEvaluationGoldenTurnsStepsExpectationToolResponseToolsetTool({
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

/// Typed helper for the `golden.turns.steps.expectation.updated_variables` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsExpectationUpdatedVariables {
  const CesEvaluationGoldenTurnsStepsExpectationUpdatedVariables({this.notes});

  final TfArg<String>? notes;

  Map<String, Object?> encode() => {'notes': ?notes?.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.user_input` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInput {
  const CesEvaluationGoldenTurnsStepsUserInput({
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

  final CesEvaluationGoldenTurnsStepsUserInputBlob? blob;

  final CesEvaluationGoldenTurnsStepsUserInputEvent? event;

  final CesEvaluationGoldenTurnsStepsUserInputImage? image;

  final CesEvaluationGoldenTurnsStepsUserInputToolResponses? toolResponses;

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

/// Typed helper for the `golden.turns.steps.user_input.blob` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputBlob {
  const CesEvaluationGoldenTurnsStepsUserInputBlob({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.event` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputEvent {
  const CesEvaluationGoldenTurnsStepsUserInputEvent({required this.event});

  final TfArg<String> event;

  Map<String, Object?> encode() => {'event': event.toTfJson()};
}

/// Typed helper for the `golden.turns.steps.user_input.image` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputImage {
  const CesEvaluationGoldenTurnsStepsUserInputImage({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.tool_responses` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputToolResponses {
  const CesEvaluationGoldenTurnsStepsUserInputToolResponses({
    this.toolResponses,
  });

  final List<CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponses>?
  toolResponses;

  Map<String, Object?> encode() => {
    if (toolResponses != null)
      'tool_responses': [for (final e in toolResponses!) e.encode()],
  };
}

/// Typed helper for the `golden.turns.steps.user_input.tool_responses.tool_responses` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponses {
  const CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponses({
    this.id,
    required this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>> response;

  final TfArg<String>? tool;

  final CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponsesToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': response.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `golden.turns.steps.user_input.tool_responses.tool_responses.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponsesToolsetTool {
  const CesEvaluationGoldenTurnsStepsUserInputToolResponsesToolResponsesToolsetTool({
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

  final TfArg<List<Object?>>? evaluationExpectations;

  final TfArg<num>? maxTurns;

  final TfArg<List<Object?>> rubrics;

  final TfArg<String> task;

  final TfArg<String>? taskCompletionBehavior;

  final TfArg<String>? userGoalBehavior;

  final TfArg<Map<String, String>>? variableOverrides;

  final List<CesEvaluationScenarioScenarioExpectations> scenarioExpectations;

  final List<CesEvaluationScenarioUserFacts>? userFacts;

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
final class CesEvaluationScenarioScenarioExpectations {
  const CesEvaluationScenarioScenarioExpectations({
    this.agentResponse,
    this.toolExpectation,
  });

  final CesEvaluationScenarioScenarioExpectationsAgentResponse? agentResponse;

  final CesEvaluationScenarioScenarioExpectationsToolExpectation?
  toolExpectation;

  Map<String, Object?> encode() => {
    'agent_response': ?agentResponse?.encode(),
    'tool_expectation': ?toolExpectation?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponse {
  const CesEvaluationScenarioScenarioExpectationsAgentResponse({
    this.role,
    this.chunks,
  });

  final TfArg<String>? role;

  final List<CesEvaluationScenarioScenarioExpectationsAgentResponseChunks>?
  chunks;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    if (chunks != null) 'chunks': [for (final e in chunks!) e.encode()],
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunks {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunks({
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

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksAgentTransfer?
  agentTransfer;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksBlob? blob;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksImage?
  image;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCall?
  toolCall;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponse?
  toolResponse;

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

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.agent_transfer` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksAgentTransfer {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksAgentTransfer({
    required this.targetAgent,
  });

  final TfArg<String> targetAgent;

  Map<String, Object?> encode() => {'target_agent': targetAgent.toTfJson()};
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.blob` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksBlob {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksBlob({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.image` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksImage {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksImage({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCall {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCallToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.tool_call.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCallToolsetTool {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolCallToolsetTool({
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

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.tool_response` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponse {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponseToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.agent_response.chunks.tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponseToolsetTool {
  const CesEvaluationScenarioScenarioExpectationsAgentResponseChunksToolResponseToolsetTool({
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

/// Typed helper for the `scenario.scenario_expectations.tool_expectation` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsToolExpectation {
  const CesEvaluationScenarioScenarioExpectationsToolExpectation({
    this.expectedToolCall,
    this.mockToolResponse,
  });

  final CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCall?
  expectedToolCall;

  final CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponse?
  mockToolResponse;

  Map<String, Object?> encode() => {
    'expected_tool_call': ?expectedToolCall?.encode(),
    'mock_tool_response': ?mockToolResponse?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.expected_tool_call` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCall {
  const CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCall({
    this.args,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<Map<String, String>>? args;

  final TfArg<String>? id;

  final TfArg<String>? tool;

  final CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCallToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.expected_tool_call.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCallToolsetTool {
  const CesEvaluationScenarioScenarioExpectationsToolExpectationExpectedToolCallToolsetTool({
    this.toolId,
    this.toolset,
  });

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
final class CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponse {
  const CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponse({
    this.id,
    this.response,
    this.tool,
    this.toolsetTool,
  });

  final TfArg<String>? id;

  final TfArg<Map<String, String>>? response;

  final TfArg<String>? tool;

  final CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponseToolsetTool?
  toolsetTool;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'response': ?response?.toTfJson(),
    'tool': ?tool?.toTfJson(),
    'toolset_tool': ?toolsetTool?.encode(),
  };
}

/// Typed helper for the `scenario.scenario_expectations.tool_expectation.mock_tool_response.toolset_tool` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponseToolsetTool {
  const CesEvaluationScenarioScenarioExpectationsToolExpectationMockToolResponseToolsetTool({
    this.toolId,
    this.toolset,
  });

  final TfArg<String>? toolId;

  final TfArg<String>? toolset;

  Map<String, Object?> encode() => {
    'tool_id': ?toolId?.toTfJson(),
    'toolset': ?toolset?.toTfJson(),
  };
}

/// Typed helper for the `scenario.user_facts` block of
/// `google_ces_evaluation` (derived from provider schema).
@immutable
final class CesEvaluationScenarioUserFacts {
  const CesEvaluationScenarioUserFacts({
    required this.name,
    required this.value,
  });

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
}
