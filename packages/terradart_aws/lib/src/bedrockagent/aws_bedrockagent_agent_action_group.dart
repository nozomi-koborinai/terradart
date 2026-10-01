// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_bedrockagent_agent_action_group`.
const Set<String> _awsBedrockagentAgentActionGroupSensitive = <String>{};

/// Bedrockagent Agent Action Group enum for `action_group_state`.
enum BedrockagentAgentActionGroupState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BedrockagentAgentActionGroupState(this.terraformValue);
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
final class BedrockagentAgentActionGroupExecutor {
  const BedrockagentAgentActionGroupExecutor({this.customControl, this.lambda});

  final TfArg<BedrockagentAgentActionGroupCustomControl>? customControl;

  final TfArg<String>? lambda;

  Map<String, Object?> encode() => {
    'custom_control': ?customControl?.toTfJson(),
    'lambda': ?lambda?.toTfJson(),
  };
}

/// `custom_control` — derived from the provider schema description.
enum BedrockagentAgentActionGroupCustomControl implements TerraformEnum {
  returnControl('RETURN_CONTROL');

  const BedrockagentAgentActionGroupCustomControl(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `payload`, `s3` on the `api_schema` block of `aws_bedrockagent_agent_action_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.payload(...)`.
sealed class BedrockagentAgentActionGroupApiSchema {
  const BedrockagentAgentActionGroupApiSchema();

  /// Sets `payload`.
  const factory BedrockagentAgentActionGroupApiSchema.payload(
    TfArg<String> payload,
  ) = BedrockagentAgentActionGroupApiSchemaPayload;

  /// Sets `s3`.
  const factory BedrockagentAgentActionGroupApiSchema.s3(
    List<BedrockagentAgentActionGroupS3> s3,
  ) = BedrockagentAgentActionGroupApiSchemaS3;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentAgentActionGroupApiSchema.payload] choice: sets `payload`.
final class BedrockagentAgentActionGroupApiSchemaPayload
    extends BedrockagentAgentActionGroupApiSchema {
  const BedrockagentAgentActionGroupApiSchemaPayload(this.payload);

  final TfArg<String> payload;

  @override
  String get blockKey => 'payload';

  @override
  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// The [BedrockagentAgentActionGroupApiSchema.s3] choice: sets `s3`.
final class BedrockagentAgentActionGroupApiSchemaS3
    extends BedrockagentAgentActionGroupApiSchema {
  const BedrockagentAgentActionGroupApiSchemaS3(this.s3);

  final List<BedrockagentAgentActionGroupS3> s3;

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
final class BedrockagentAgentActionGroupS3 {
  const BedrockagentAgentActionGroupS3({this.s3BucketName, this.s3ObjectKey});

  final RefTo<AwsS3Bucket>? s3BucketName;

  final TfArg<String>? s3ObjectKey;

  Map<String, Object?> encode() => {
    's3_bucket_name': ?s3BucketName?.encodeAs('id').toTfJson(),
    's3_object_key': ?s3ObjectKey?.toTfJson(),
  };
}

/// Typed helper for the `function_schema` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctionSchema {
  const BedrockagentAgentActionGroupFunctionSchema({this.memberFunctions});

  final List<BedrockagentAgentActionGroupMemberFunctions>? memberFunctions;

  Map<String, Object?> encode() => {
    if (memberFunctions != null)
      'member_functions': [for (final e in memberFunctions!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupMemberFunctions {
  const BedrockagentAgentActionGroupMemberFunctions({this.functions});

  final List<BedrockagentAgentActionGroupFunctions>? functions;

  Map<String, Object?> encode() => {
    if (functions != null)
      'functions': [for (final e in functions!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions.functions` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupFunctions {
  const BedrockagentAgentActionGroupFunctions({
    this.description,
    required this.name,
    this.parameters,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<BedrockagentAgentActionGroupParameters>? parameters;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `function_schema.member_functions.functions.parameters` block of
/// `aws_bedrockagent_agent_action_group` (derived from provider schema).
@immutable
final class BedrockagentAgentActionGroupParameters {
  const BedrockagentAgentActionGroupParameters({
    this.description,
    required this.mapBlockKey,
    this.required,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String> mapBlockKey;

  final TfArg<bool>? required;

  final TfArg<BedrockagentAgentActionGroupType> type;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    'required': ?required?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentAgentActionGroupType implements TerraformEnum {
  string('string'),
  number('number'),
  integer('integer'),
  boolean('boolean'),
  array('array');

  const BedrockagentAgentActionGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrockagent_agent_action_group`.
final class AwsBedrockagentAgentActionGroup extends Resource {
  static const String tfType = 'aws_bedrockagent_agent_action_group';

  AwsBedrockagentAgentActionGroup(
    super.localName, {
    required TfArg<String> actionGroupName,
    TfArg<BedrockagentAgentActionGroupState>? actionGroupState,
    required TfArg<String> agentId,
    required TfArg<String> agentVersion,
    BedrockagentAgentActionGroupDefinition? definition,
    TfArg<bool>? prepareAgent,
    TfArg<String>? region,
    TfArg<bool>? skipResourceInUseCheck,
    List<BedrockagentAgentActionGroupExecutor>? actionGroupExecutor,
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
           'action_group_state': ?actionGroupState,
           'agent_id': agentId,
           'agent_version': agentVersion,
           ...?definition?.argMap,
           'prepare_agent': ?prepareAgent,
           'region': ?region,
           'skip_resource_in_use_check': ?skipResourceInUseCheck,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentAgentActionGroup>`.
  RefTo<AwsBedrockagentAgentActionGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_group_id` attribute.
  TfRef<String> get actionGroupId =>
      TfRef.attribute<String>(this, 'action_group_id');

  /// Reference to `action_group_name` attribute.
  TfRef<String> get actionGroupName =>
      TfRef.attribute<String>(this, 'action_group_name');

  /// Reference to `action_group_state` attribute.
  TfRef<String> get actionGroupState =>
      TfRef.attribute<String>(this, 'action_group_state');

  /// Reference to `agent_id` attribute.
  TfRef<String> get agentId => TfRef.attribute<String>(this, 'agent_id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent_action_group_signature` attribute.
  TfRef<String> get parentActionGroupSignature =>
      TfRef.attribute<String>(this, 'parent_action_group_signature');

  /// Reference to `prepare_agent` attribute.
  TfRef<bool> get prepareAgent => TfRef.attribute<bool>(this, 'prepare_agent');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_resource_in_use_check` attribute.
  TfRef<bool> get skipResourceInUseCheck =>
      TfRef.attribute<bool>(this, 'skip_resource_in_use_check');
}
