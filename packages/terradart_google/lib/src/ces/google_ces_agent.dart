// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ces/google_ces_app.dart' show GoogleCesApp;
import '../ces/google_ces_toolset.dart' show GoogleCesToolset;
import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_ces_agent`.
const Set<String> _googleCesAgentSensitive = <String>{};

/// Typed helper for the `after_agent_callbacks` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentAfterAgentCallbacks {
  const CesAgentAfterAgentCallbacks({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
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
    this.proactiveExecutionEnabled,
    required this.pythonCode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<bool>? proactiveExecutionEnabled;

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disabled': ?disabled?.toTfJson(),
    'proactive_execution_enabled': ?proactiveExecutionEnabled?.toTfJson(),
    'python_code': pythonCode.toTfJson(),
  };
}

/// Typed helper for the `llm_agent` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentLlmAgent {
  const CesAgentLlmAgent();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `model_settings` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentModelSettings {
  const CesAgentModelSettings({
    this.model,
    this.temperature,
    this.thinkingLevel,
  });

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  final CesAgentThinkingLevel? thinkingLevel;

  @internal
  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'thinking_level': ?thinkingLevel?.toTfJson(),
  };
}

/// `thinking_level` — derived from the provider schema description.
extension type const CesAgentThinkingLevel._(TfArg<String> _)
    implements TfArg<String> {
  CesAgentThinkingLevel.variable(String name) : this._(TfArg.variable(name));
  CesAgentThinkingLevel.expression(String template)
    : this._(TfArg.expression(template));
  const CesAgentThinkingLevel.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = CesAgentThinkingLevel._(TfArgLiteral('DEFAULT'));
  static const low = CesAgentThinkingLevel._(TfArgLiteral('LOW'));
  static const medium = CesAgentThinkingLevel._(TfArgLiteral('MEDIUM'));
  static const high = CesAgentThinkingLevel._(TfArgLiteral('HIGH'));

  static const List<CesAgentThinkingLevel> values = [
    defaultCase,
    low,
    medium,
    high,
  ];
}

/// Typed helper for the `remote_a2a_agent` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentRemoteA2aAgent {
  const CesAgentRemoteA2aAgent({required this.a2aConfig});

  final CesAgentA2aConfig a2aConfig;

  @internal
  Map<String, Object?> encode() => {'a2a_config': a2aConfig.encode()};
}

/// Typed helper for the `remote_a2a_agent.a2a_config` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentA2aConfig {
  const CesAgentA2aConfig({
    this.agentRegistry,
    this.contextId,
    this.inputVariableMapping,
    this.outputVariableMapping,
    this.streamingEnabled,
    this.agentCard,
    this.apiAuthentication,
  });

  final TfArg<String>? agentRegistry;

  final TfArg<String>? contextId;

  final TfArg<Map<String, String>>? inputVariableMapping;

  final TfArg<Map<String, String>>? outputVariableMapping;

  final TfArg<bool>? streamingEnabled;

  final CesAgentCard? agentCard;

  final CesAgentApiAuthentication? apiAuthentication;

  @internal
  Map<String, Object?> encode() => {
    'agent_registry': ?agentRegistry?.toTfJson(),
    'context_id': ?contextId?.toTfJson(),
    'input_variable_mapping': ?inputVariableMapping?.toTfJson(),
    'output_variable_mapping': ?outputVariableMapping?.toTfJson(),
    'streaming_enabled': ?streamingEnabled?.toTfJson(),
    'agent_card': ?agentCard?.encode(),
    'api_authentication': ?apiAuthentication?.encode(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.agent_card` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentCard {
  const CesAgentCard({
    required this.description,
    required this.name,
    required this.version,
    required this.skills,
    required this.supportedInterfaces,
  });

  final TfArg<String> description;

  final TfArg<String> name;

  final TfArg<String> version;

  final List<CesAgentSkills> skills;

  final List<CesAgentSupportedInterfaces> supportedInterfaces;

  @internal
  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'name': name.toTfJson(),
    'version': version.toTfJson(),
    'skills': [for (final e in skills) e.encode()],
    'supported_interfaces': [for (final e in supportedInterfaces) e.encode()],
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.agent_card.skills` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentSkills {
  const CesAgentSkills({
    required this.description,
    this.examples,
    required this.id,
    this.inputModes,
    required this.name,
    this.outputModes,
    required this.tags,
  });

  final TfArg<String> description;

  final TfArg<List<String>>? examples;

  final TfArg<String> id;

  final TfArg<List<String>>? inputModes;

  final TfArg<String> name;

  final TfArg<List<String>>? outputModes;

  final TfArg<List<String>> tags;

  @internal
  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'examples': ?examples?.toTfJson(),
    'id': id.toTfJson(),
    'input_modes': ?inputModes?.toTfJson(),
    'name': name.toTfJson(),
    'output_modes': ?outputModes?.toTfJson(),
    'tags': tags.toTfJson(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.agent_card.supported_interfaces` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentSupportedInterfaces {
  const CesAgentSupportedInterfaces({
    required this.protocolBinding,
    required this.protocolVersion,
    this.tenant,
    required this.url,
  });

  final TfArg<String> protocolBinding;

  final TfArg<String> protocolVersion;

  final TfArg<String>? tenant;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'protocol_binding': protocolBinding.toTfJson(),
    'protocol_version': protocolVersion.toTfJson(),
    'tenant': ?tenant?.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.api_authentication` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentApiAuthentication {
  const CesAgentApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
  });

  final CesAgentApiKeyConfig? apiKeyConfig;

  final CesAgentBearerTokenConfig? bearerTokenConfig;

  final CesAgentOauthConfig? oauthConfig;

  final CesAgentServiceAccountAuthConfig? serviceAccountAuthConfig;

  @internal
  Map<String, Object?> encode() => {
    'api_key_config': ?apiKeyConfig?.encode(),
    'bearer_token_config': ?bearerTokenConfig?.encode(),
    'oauth_config': ?oauthConfig?.encode(),
    'service_account_auth_config': ?serviceAccountAuthConfig?.encode(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.api_authentication.api_key_config` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentApiKeyConfig {
  const CesAgentApiKeyConfig({
    required this.apiKeySecretVersion,
    required this.keyName,
    required this.requestLocation,
  });

  final TfArg<String> apiKeySecretVersion;

  final TfArg<String> keyName;

  final TfArg<String> requestLocation;

  @internal
  Map<String, Object?> encode() => {
    'api_key_secret_version': apiKeySecretVersion.toTfJson(),
    'key_name': keyName.toTfJson(),
    'request_location': requestLocation.toTfJson(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.api_authentication.bearer_token_config` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentBearerTokenConfig {
  const CesAgentBearerTokenConfig({required this.token});

  final TfArg<String> token;

  @internal
  Map<String, Object?> encode() => {'token': token.toTfJson()};
}

/// Typed helper for the `remote_a2a_agent.a2a_config.api_authentication.oauth_config` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentOauthConfig {
  const CesAgentOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecretVersion;

  final TfArg<String> oauthGrantType;

  final TfArg<List<String>>? scopes;

  final TfArg<String> tokenEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret_version': clientSecretVersion.toTfJson(),
    'oauth_grant_type': oauthGrantType.toTfJson(),
    'scopes': ?scopes?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
  };
}

/// Typed helper for the `remote_a2a_agent.a2a_config.api_authentication.service_account_auth_config` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentServiceAccountAuthConfig {
  const CesAgentServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  final TfArg<List<String>>? scopes;

  final RefTo<GoogleServiceAccount> serviceAccount;

  @internal
  Map<String, Object?> encode() => {
    'scopes': ?scopes?.toTfJson(),
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
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
    this.languageCodeVariable,
    this.outputVariableMapping,
    this.respectResponseInterruptionSettings,
  });

  final TfArg<String> agent;

  final TfArg<String>? environmentId;

  final TfArg<String> flowId;

  final TfArg<Map<String, String>>? inputVariableMapping;

  final TfArg<String>? languageCodeVariable;

  final TfArg<Map<String, String>>? outputVariableMapping;

  final TfArg<bool>? respectResponseInterruptionSettings;

  @internal
  Map<String, Object?> encode() => {
    'agent': agent.toTfJson(),
    'environment_id': ?environmentId?.toTfJson(),
    'flow_id': flowId.toTfJson(),
    'input_variable_mapping': ?inputVariableMapping?.toTfJson(),
    'language_code_variable': ?languageCodeVariable?.toTfJson(),
    'output_variable_mapping': ?outputVariableMapping?.toTfJson(),
    'respect_response_interruption_settings':
        ?respectResponseInterruptionSettings?.toTfJson(),
  };
}

/// Typed helper for the `toolsets` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentToolsets {
  const CesAgentToolsets({this.toolIds, required this.toolset});

  final TfArg<List<String>>? toolIds;

  final RefTo<GoogleCesToolset> toolset;

  @internal
  Map<String, Object?> encode() => {
    'tool_ids': ?toolIds?.toTfJson(),
    'toolset': toolset.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `transfer_rules` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentTransferRules {
  const CesAgentTransferRules({
    required this.childAgent,
    required this.direction,
    this.deterministicTransfer,
    this.disablePlannerTransfer,
  });

  final TfArg<String> childAgent;

  final CesAgentDirection direction;

  final CesAgentDeterministicTransfer? deterministicTransfer;

  final CesAgentDisablePlannerTransfer? disablePlannerTransfer;

  @internal
  Map<String, Object?> encode() => {
    'child_agent': childAgent.toTfJson(),
    'direction': direction.toTfJson(),
    'deterministic_transfer': ?deterministicTransfer?.encode(),
    'disable_planner_transfer': ?disablePlannerTransfer?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const CesAgentDirection._(TfArg<String> _)
    implements TfArg<String> {
  CesAgentDirection.variable(String name) : this._(TfArg.variable(name));
  CesAgentDirection.expression(String template)
    : this._(TfArg.expression(template));
  const CesAgentDirection.arg(TfArg<String> arg) : this._(arg);

  static const parentToChild = CesAgentDirection._(
    TfArgLiteral('PARENT_TO_CHILD'),
  );
  static const childToParent = CesAgentDirection._(
    TfArgLiteral('CHILD_TO_PARENT'),
  );

  static const List<CesAgentDirection> values = [parentToChild, childToParent];
}

/// Typed helper for the `transfer_rules.deterministic_transfer` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentDeterministicTransfer {
  const CesAgentDeterministicTransfer({
    this.expressionCondition,
    this.pythonCodeCondition,
  });

  final CesAgentExpressionCondition? expressionCondition;

  final CesAgentPythonCodeCondition? pythonCodeCondition;

  @internal
  Map<String, Object?> encode() => {
    'expression_condition': ?expressionCondition?.encode(),
    'python_code_condition': ?pythonCodeCondition?.encode(),
  };
}

/// Typed helper for the `transfer_rules.deterministic_transfer.expression_condition` block of
/// `google_ces_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesAgentExpressionCondition {
  const CesAgentExpressionCondition({required this.expression});

  final TfArg<String> expression;

  @internal
  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `transfer_rules.deterministic_transfer.python_code_condition` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentPythonCodeCondition {
  const CesAgentPythonCodeCondition({required this.pythonCode});

  final TfArg<String> pythonCode;

  @internal
  Map<String, Object?> encode() => {'python_code': pythonCode.toTfJson()};
}

/// Typed helper for the `transfer_rules.disable_planner_transfer` block of
/// `google_ces_agent` (derived from provider schema).
@immutable
final class CesAgentDisablePlannerTransfer {
  const CesAgentDisablePlannerTransfer({required this.expressionCondition});

  final CesAgentExpressionCondition expressionCondition;

  @internal
  Map<String, Object?> encode() => {
    'expression_condition': expressionCondition.encode(),
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
/// sessions. Enable `ces.googleapis.com` via [StackApis.enableApis] before apply.
///
/// Example:
/// ```dart
/// GoogleCesAgent(
///   'agent',
///   app: app.ref,
///   agentId: TfArg.literal('terradart-ces-agent'),
///   displayName: TfArg.literal('terradart-ces-agent'),
///   instruction: TfArg.literal('You are a helpful assistant.'),
///   llmAgent: const CesAgentLlmAgent(),
/// );
/// ```
final class GoogleCesAgent extends Resource {
  static const String tfType = 'google_ces_agent';

  GoogleCesAgent(
    super.localName, {
    TfArg<String>? location,
    required RefTo<GoogleCesApp> app,
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
    List<CesAgentTransferRules>? transferRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? app.alsoAs('location')),
           'app': app.encodeAs('app_id'),
           'display_name': displayName,
           'agent_id': ?agentId,
           'description': ?description,
           'instruction': ?instruction,
           if (llmAgent != null) 'llm_agent': TfArg.literal(llmAgent.encode()),
           if (modelSettings != null)
             'model_settings': TfArg.literal(modelSettings.encode()),
           if (remoteDialogflowAgent != null)
             'remote_dialogflow_agent': TfArg.literal(
               remoteDialogflowAgent.encode(),
             ),
           'tools': ?tools,
           if (toolsets != null)
             'toolsets': TfArg.literal([for (final e in toolsets) e.encode()]),
           'guardrails': ?guardrails,
           'child_agents': ?childAgents,
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
           'deletion_policy': ?deletionPolicy,
           'project': ?(project ?? app.alsoAs('project')),
           if (transferRules != null)
             'transfer_rules': TfArg.literal([
               for (final e in transferRules) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesAgent>`.
  RefTo<GoogleCesAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `app` attribute.
  TfRef<String> get app => TfRef.attribute<String>(this, 'app');

  /// Reference to `child_agents` attribute.
  TfRef<List<String>> get childAgents =>
      TfRef.attribute<List<String>>(this, 'child_agents');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `guardrails` attribute.
  TfRef<List<String>> get guardrails =>
      TfRef.attribute<List<String>>(this, 'guardrails');

  /// Reference to `instruction` attribute.
  TfRef<String> get instruction => TfRef.attribute<String>(this, 'instruction');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tools` attribute.
  TfRef<List<String>> get tools => TfRef.attribute<List<String>>(this, 'tools');
}
