// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_companion_agent`.
const Set<String> _googleDialogflowCompanionAgentSensitive = <String>{};

/// Typed helper for the `ces_tool_specs` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentCesToolSpecs {
  const DialogflowCompanionAgentCesToolSpecs({
    this.cesTool,
    this.confirmationRequirement,
    this.proactiveEnabled,
    this.reactiveEnabled,
    this.parameterOverrides,
  });

  final TfArg<String>? cesTool;

  final DialogflowCompanionAgentConfirmationRequirement?
  confirmationRequirement;

  final TfArg<bool>? proactiveEnabled;

  final TfArg<bool>? reactiveEnabled;

  final List<DialogflowCompanionAgentParameterOverrides>? parameterOverrides;

  @internal
  Map<String, Object?> encode() => {
    'ces_tool': ?cesTool?.toTfJson(),
    'confirmation_requirement': ?confirmationRequirement?.toTfJson(),
    'proactive_enabled': ?proactiveEnabled?.toTfJson(),
    'reactive_enabled': ?reactiveEnabled?.toTfJson(),
    if (parameterOverrides != null)
      'parameter_overrides': [for (final e in parameterOverrides!) e.encode()],
  };
}

/// `confirmation_requirement` — derived from the provider schema description.
extension type const DialogflowCompanionAgentConfirmationRequirement._(
  TfArg<String> _
)
    implements TfArg<String> {
  DialogflowCompanionAgentConfirmationRequirement.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCompanionAgentConfirmationRequirement.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCompanionAgentConfirmationRequirement.arg(TfArg<String> arg)
    : this._(arg);

  static const required = DialogflowCompanionAgentConfirmationRequirement._(
    TfArgLiteral('REQUIRED'),
  );
  static const notRequired = DialogflowCompanionAgentConfirmationRequirement._(
    TfArgLiteral('NOT_REQUIRED'),
  );

  static const List<DialogflowCompanionAgentConfirmationRequirement> values = [
    required,
    notRequired,
  ];
}

/// Typed helper for the `ces_tool_specs.parameter_overrides` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCompanionAgentParameterOverrides {
  const DialogflowCompanionAgentParameterOverrides({
    required this.contextReferenceKey,
    this.fieldPath,
    required this.parameterName,
  });

  final TfArg<String> contextReferenceKey;

  final TfArg<String>? fieldPath;

  final TfArg<String> parameterName;

  @internal
  Map<String, Object?> encode() => {
    'context_reference_key': contextReferenceKey.toTfJson(),
    'field_path': ?fieldPath?.toTfJson(),
    'parameter_name': parameterName.toTfJson(),
  };
}

/// Typed helper for the `skill_configs` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentSkillConfigs {
  const DialogflowCompanionAgentSkillConfigs({
    this.skillTriggeringEvent,
    this.guidanceSkillConfig,
  });

  final DialogflowCompanionAgentSkillTriggeringEvent? skillTriggeringEvent;

  final DialogflowCompanionAgentGuidanceSkillConfig? guidanceSkillConfig;

  @internal
  Map<String, Object?> encode() => {
    'skill_triggering_event': ?skillTriggeringEvent?.toTfJson(),
    'guidance_skill_config': ?guidanceSkillConfig?.encode(),
  };
}

/// `skill_triggering_event` — derived from the provider schema description.
extension type const DialogflowCompanionAgentSkillTriggeringEvent._(
  TfArg<String> _
)
    implements TfArg<String> {
  DialogflowCompanionAgentSkillTriggeringEvent.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCompanionAgentSkillTriggeringEvent.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCompanionAgentSkillTriggeringEvent.arg(TfArg<String> arg)
    : this._(arg);

  static const endOfUtterance = DialogflowCompanionAgentSkillTriggeringEvent._(
    TfArgLiteral('END_OF_UTTERANCE'),
  );
  static const customerMessage = DialogflowCompanionAgentSkillTriggeringEvent._(
    TfArgLiteral('CUSTOMER_MESSAGE'),
  );
  static const agentMessage = DialogflowCompanionAgentSkillTriggeringEvent._(
    TfArgLiteral('AGENT_MESSAGE'),
  );

  static const List<DialogflowCompanionAgentSkillTriggeringEvent> values = [
    endOfUtterance,
    customerMessage,
    agentMessage,
  ];
}

/// Typed helper for the `skill_configs.guidance_skill_config` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentGuidanceSkillConfig {
  const DialogflowCompanionAgentGuidanceSkillConfig({
    this.overarchingGuidance,
    this.guidanceInstructions,
  });

  final TfArg<String>? overarchingGuidance;

  final List<DialogflowCompanionAgentGuidanceInstructions>?
  guidanceInstructions;

  @internal
  Map<String, Object?> encode() => {
    'overarching_guidance': ?overarchingGuidance?.toTfJson(),
    if (guidanceInstructions != null)
      'guidance_instructions': [
        for (final e in guidanceInstructions!) e.encode(),
      ],
  };
}

/// Typed helper for the `skill_configs.guidance_skill_config.guidance_instructions` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentGuidanceInstructions {
  const DialogflowCompanionAgentGuidanceInstructions({
    this.condition,
    this.disableSuggestedReply,
    this.displayDetails,
    this.displayName,
    this.triggerEvent,
    this.actions,
  });

  final TfArg<String>? condition;

  final TfArg<bool>? disableSuggestedReply;

  final TfArg<String>? displayDetails;

  final TfArg<String>? displayName;

  final DialogflowCompanionAgentTriggerEvent? triggerEvent;

  final List<DialogflowCompanionAgentActions>? actions;

  @internal
  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'disable_suggested_reply': ?disableSuggestedReply?.toTfJson(),
    'display_details': ?displayDetails?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'trigger_event': ?triggerEvent?.toTfJson(),
    if (actions != null) 'actions': [for (final e in actions!) e.encode()],
  };
}

/// `trigger_event` — derived from the provider schema description.
extension type const DialogflowCompanionAgentTriggerEvent._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCompanionAgentTriggerEvent.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCompanionAgentTriggerEvent.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCompanionAgentTriggerEvent.arg(TfArg<String> arg)
    : this._(arg);

  static const endOfUtterance = DialogflowCompanionAgentTriggerEvent._(
    TfArgLiteral('END_OF_UTTERANCE'),
  );
  static const customerMessage = DialogflowCompanionAgentTriggerEvent._(
    TfArgLiteral('CUSTOMER_MESSAGE'),
  );
  static const agentMessage = DialogflowCompanionAgentTriggerEvent._(
    TfArgLiteral('AGENT_MESSAGE'),
  );

  static const List<DialogflowCompanionAgentTriggerEvent> values = [
    endOfUtterance,
    customerMessage,
    agentMessage,
  ];
}

/// Typed helper for the `skill_configs.guidance_skill_config.guidance_instructions.actions` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentActions {
  const DialogflowCompanionAgentActions({required this.description});

  final TfArg<String> description;

  @internal
  Map<String, Object?> encode() => {'description': description.toTfJson()};
}

/// Typed helper for the `toolset_tools` block of
/// `google_dialogflow_companion_agent` (derived from provider schema).
@immutable
final class DialogflowCompanionAgentToolsetTools {
  const DialogflowCompanionAgentToolsetTools({
    this.confirmationRequirement,
    this.operationId,
    this.proactiveEnabled,
    this.reactiveEnabled,
    required this.toolset,
    this.parameterOverrides,
  });

  final DialogflowCompanionAgentConfirmationRequirement?
  confirmationRequirement;

  final TfArg<String>? operationId;

  final TfArg<bool>? proactiveEnabled;

  final TfArg<bool>? reactiveEnabled;

  final TfArg<String> toolset;

  final List<DialogflowCompanionAgentParameterOverrides>? parameterOverrides;

  @internal
  Map<String, Object?> encode() => {
    'confirmation_requirement': ?confirmationRequirement?.toTfJson(),
    'operation_id': ?operationId?.toTfJson(),
    'proactive_enabled': ?proactiveEnabled?.toTfJson(),
    'reactive_enabled': ?reactiveEnabled?.toTfJson(),
    'toolset': toolset.toTfJson(),
    if (parameterOverrides != null)
      'parameter_overrides': [for (final e in parameterOverrides!) e.encode()],
  };
}

/// Factory wrapper for `google_dialogflow_companion_agent`.
///
/// A Companion Agent in Dialogflow.
final class GoogleDialogflowCompanionAgent extends Resource {
  static const String tfType = 'google_dialogflow_companion_agent';

  GoogleDialogflowCompanionAgent(
    super.localName, {
    required TfArg<String> companionAgentId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    List<DialogflowCompanionAgentCesToolSpecs>? cesToolSpecs,
    List<DialogflowCompanionAgentSkillConfigs>? skillConfigs,
    List<DialogflowCompanionAgentToolsetTools>? toolsetTools,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'companion_agent_id': companionAgentId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           if (cesToolSpecs != null)
             'ces_tool_specs': TfArg.literal([
               for (final e in cesToolSpecs) e.encode(),
             ]),
           if (skillConfigs != null)
             'skill_configs': TfArg.literal([
               for (final e in skillConfigs) e.encode(),
             ]),
           if (toolsetTools != null)
             'toolset_tools': TfArg.literal([
               for (final e in toolsetTools) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCompanionAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCompanionAgent>`.
  RefTo<GoogleDialogflowCompanionAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `companion_agent_id` attribute.
  TfRef<String> get companionAgentId =>
      TfRef.attribute<String>(this, 'companion_agent_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
