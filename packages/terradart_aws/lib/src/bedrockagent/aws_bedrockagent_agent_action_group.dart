// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_action_group`.
const Set<String> _awsBedrockagentAgentActionGroupSensitive = <String>{};

/// Bedrockagent Agent Action Group Action Group enum for `action_group_state`.
enum BedrockagentAgentActionGroupActionGroupState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentAgentActionGroupActionGroupState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bedrockagent Agent Action Group Parent Action Group enum for `parent_action_group_signature`.
enum BedrockagentAgentActionGroupParentActionGroupSignature
    implements TerraformEnum {
  amazonUserinput('AMAZON.UserInput'),
  amazonCodeinterpreter('AMAZON.CodeInterpreter'),
  anthropicComputer('ANTHROPIC.Computer'),
  anthropicBash('ANTHROPIC.Bash'),
  anthropicTexteditor('ANTHROPIC.TextEditor');

  const BedrockagentAgentActionGroupParentActionGroupSignature(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// At most one of `description`, `parent_action_group_signature` on `aws_bedrockagent_agent_action_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.description(...)`.
sealed class BedrockagentAgentActionGroupDefinition {
  const BedrockagentAgentActionGroupDefinition();

  /// Sets `description`.
  const factory BedrockagentAgentActionGroupDefinition.description(
    TfArg<String> description,
  ) = BedrockagentAgentActionGroupDefinitionDescription;

  /// Sets `parent_action_group_signature`.
  const factory BedrockagentAgentActionGroupDefinition.parentActionGroupSignature(
    TfArg<BedrockagentAgentActionGroupParentActionGroupSignature>
    parentActionGroupSignature,
  ) = BedrockagentAgentActionGroupDefinitionParentActionGroupSignature;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BedrockagentAgentActionGroupDefinition.description] choice: sets `description`.
final class BedrockagentAgentActionGroupDefinitionDescription
    extends BedrockagentAgentActionGroupDefinition {
  const BedrockagentAgentActionGroupDefinitionDescription(this.description);

  final TfArg<String> description;

  @override
  String get blockKey => 'description';

  @override
  Map<String, Object?> encode() => {'description': description.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'description': description};
}

/// The [BedrockagentAgentActionGroupDefinition.parentActionGroupSignature] choice: sets `parent_action_group_signature`.
final class BedrockagentAgentActionGroupDefinitionParentActionGroupSignature
    extends BedrockagentAgentActionGroupDefinition {
  const BedrockagentAgentActionGroupDefinitionParentActionGroupSignature(
    this.parentActionGroupSignature,
  );

  final TfArg<BedrockagentAgentActionGroupParentActionGroupSignature>
  parentActionGroupSignature;

  @override
  String get blockKey => 'parent_action_group_signature';

  @override
  Map<String, Object?> encode() => {
    'parent_action_group_signature': parentActionGroupSignature.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'parent_action_group_signature': parentActionGroupSignature,
  };
}

/// Typed helper for the `action_group_executor` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupActionGroupExecutor {
  const BedrockagentAgentActionGroupActionGroupExecutor({
    this.customControl,
    this.lambda,
  });

  final TfArg<BedrockagentAgentActionGroupActionGroupExecutorCustomControl>?
  customControl;

  final TfArg<String>? lambda;

  Map<String, Object?> encode() => {
    if (customControl != null) 'custom_control': customControl!.toTfJson(),
    if (lambda != null) 'lambda': lambda!.toTfJson(),
  };
}

/// `custom_control` — derived from the provider schema description.
enum BedrockagentAgentActionGroupActionGroupExecutorCustomControl
    implements TerraformEnum {
  returnControl('RETURN_CONTROL');

  const BedrockagentAgentActionGroupActionGroupExecutorCustomControl(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `api_schema` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupApiSchema {
  const BedrockagentAgentActionGroupApiSchema({this.apiSchema});

  final BedrockagentAgentActionGroupApiSchemaApiSchema? apiSchema;

  Map<String, Object?> encode() => {...?apiSchema?.encode()};
}

/// At most one of `payload`, `s3` on the `api_schema` block of `aws_bedrockagent_agent_action_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.payload(...)`.
sealed class BedrockagentAgentActionGroupApiSchemaApiSchema {
  const BedrockagentAgentActionGroupApiSchemaApiSchema();

  /// Sets `payload`.
  const factory BedrockagentAgentActionGroupApiSchemaApiSchema.payload(
    TfArg<String> payload,
  ) = BedrockagentAgentActionGroupApiSchemaApiSchemaPayload;

  /// Sets `s3`.
  const factory BedrockagentAgentActionGroupApiSchemaApiSchema.s3(
    List<BedrockagentAgentActionGroupApiSchemaS3> s3,
  ) = BedrockagentAgentActionGroupApiSchemaApiSchemaS3;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentAgentActionGroupApiSchemaApiSchema.payload] choice: sets `payload`.
final class BedrockagentAgentActionGroupApiSchemaApiSchemaPayload
    extends BedrockagentAgentActionGroupApiSchemaApiSchema {
  const BedrockagentAgentActionGroupApiSchemaApiSchemaPayload(this.payload);

  final TfArg<String> payload;

  @override
  String get blockKey => 'payload';

  @override
  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// The [BedrockagentAgentActionGroupApiSchemaApiSchema.s3] choice: sets `s3`.
final class BedrockagentAgentActionGroupApiSchemaApiSchemaS3
    extends BedrockagentAgentActionGroupApiSchemaApiSchema {
  const BedrockagentAgentActionGroupApiSchemaApiSchemaS3(this.s3);

  final List<BedrockagentAgentActionGroupApiSchemaS3> s3;

  @override
  String get blockKey => 's3';

  @override
  Map<String, Object?> encode() => {
    's3': [for (final e in s3) e.encode()],
  };
}

/// Typed helper for the `api_schema.s3` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupApiSchemaS3 {
  const BedrockagentAgentActionGroupApiSchemaS3({
    this.s3BucketName,
    this.s3ObjectKey,
  });

  final TfArg<String>? s3BucketName;

  final TfArg<String>? s3ObjectKey;

  Map<String, Object?> encode() => {
    if (s3BucketName != null) 's3_bucket_name': s3BucketName!.toTfJson(),
    if (s3ObjectKey != null) 's3_object_key': s3ObjectKey!.toTfJson(),
  };
}

/// Typed helper for the `function_schema` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctionSchema {
  const BedrockagentAgentActionGroupFunctionSchema({this.memberFunctions});

  final List<BedrockagentAgentActionGroupFunctionSchemaMemberFunctions>?
  memberFunctions;

  Map<String, Object?> encode() => {
    if (memberFunctions != null)
      'member_functions': [for (final e in memberFunctions!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctionSchemaMemberFunctions {
  const BedrockagentAgentActionGroupFunctionSchemaMemberFunctions({
    this.functions,
  });

  final List<
    BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctions
  >?
  functions;

  Map<String, Object?> encode() => {
    if (functions != null)
      'functions': [for (final e in functions!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions.functions` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctions {
  const BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctions({
    this.description,
    required this.name,
    this.parameters,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<
    BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions.functions.parameters` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParameters {
  const BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParameters({
    this.description,
    required this.mapBlockKey,
    this.required,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> mapBlockKey;

  final TfArg<bool>? required;

  final TfArg<
    BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParametersType
  >
  type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParametersType
    implements TerraformEnum {
  string('string'),
  number('number'),
  integer('integer'),
  boolean('boolean'),
  array('array');

  const BedrockagentAgentActionGroupFunctionSchemaMemberFunctionsFunctionsParametersType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagent_agent_action_group`.
final class AwsBedrockagentAgentActionGroup extends Resource {
  static const String tfType = 'aws_bedrockagent_agent_action_group';

  AwsBedrockagentAgentActionGroup({
    required super.localName,
    required TfArg<String> actionGroupName,
    TfArg<BedrockagentAgentActionGroupActionGroupState>? actionGroupState,
    required TfArg<String> agentId,
    required TfArg<String> agentVersion,
    BedrockagentAgentActionGroupDefinition? definition,
    TfArg<bool>? prepareAgent,
    TfArg<String>? region,
    TfArg<bool>? skipResourceInUseCheck,
    List<BedrockagentAgentActionGroupActionGroupExecutor>? actionGroupExecutor,
    List<BedrockagentAgentActionGroupApiSchema>? apiSchema,
    List<BedrockagentAgentActionGroupFunctionSchema>? functionSchema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action_group_name': actionGroupName,
           if (actionGroupState != null) 'action_group_state': actionGroupState,
           'agent_id': agentId,
           'agent_version': agentVersion,
           ...?definition?.argMap,
           if (prepareAgent != null) 'prepare_agent': prepareAgent,
           if (region != null) 'region': region,
           if (skipResourceInUseCheck != null)
             'skip_resource_in_use_check': skipResourceInUseCheck,
           if (actionGroupExecutor != null)
             'action_group_executor': TfArg.literal([
               for (final e in actionGroupExecutor) e.encode(),
             ]),
           if (apiSchema != null)
             'api_schema': TfArg.literal([
               for (final e in apiSchema) e.encode(),
             ]),
           if (functionSchema != null)
             'function_schema': TfArg.literal([
               for (final e in functionSchema) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentAgentActionGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_group_id` attribute.
  TfRef<String> get actionGroupId =>
      TfRef.attribute<String>(this, 'action_group_id');
}
