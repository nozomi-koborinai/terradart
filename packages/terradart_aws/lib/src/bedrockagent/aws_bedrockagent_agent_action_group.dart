// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_agent_action_group`.
const Set<String> _awsBedrockagentAgentActionGroupSensitive = <String>{};

/// Typed helper for the `action_group_executor` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupActionGroupExecutor {
  const BedrockagentAgentActionGroupActionGroupExecutor({
    this.customControl,
    this.lambda,
  });

  final TfArg<String>? customControl;

  final TfArg<String>? lambda;

  Map<String, Object?> encode() => {
    if (customControl != null) 'custom_control': customControl!.toTfJson(),
    if (lambda != null) 'lambda': lambda!.toTfJson(),
  };
}

/// Typed helper for the `api_schema` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupApiSchema {
  const BedrockagentAgentActionGroupApiSchema({this.payload, this.s3});

  final TfArg<String>? payload;

  final List<BedrockagentAgentActionGroupApiSchemaS3>? s3;

  Map<String, Object?> encode() => {
    if (payload != null) 'payload': payload!.toTfJson(),
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_agent_action_group`.
final class AwsBedrockagentAgentActionGroup extends Resource {
  static const String tfType = 'aws_bedrockagent_agent_action_group';

  AwsBedrockagentAgentActionGroup({
    required super.localName,
    required TfArg<String> actionGroupName,
    TfArg<String>? actionGroupState,
    required TfArg<String> agentId,
    required TfArg<String> agentVersion,
    TfArg<String>? description,
    TfArg<String>? parentActionGroupSignature,
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
           if (description != null) 'description': description,
           if (parentActionGroupSignature != null)
             'parent_action_group_signature': parentActionGroupSignature,
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
