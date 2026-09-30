// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_codepipeline`.
const Set<String> _awsCodepipelineSensitive = <String>{};

/// Codepipeline Execution enum for `execution_mode`.
enum CodepipelineExecutionMode implements TerraformEnum {
  queued('QUEUED'),
  superseded('SUPERSEDED'),
  parallel('PARALLEL');

  const CodepipelineExecutionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Codepipeline Pipeline enum for `pipeline_type`.
enum CodepipelinePipelineType implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const CodepipelinePipelineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `artifact_store` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineArtifactStore {
  const CodepipelineArtifactStore({
    required this.location,
    this.region,
    required this.type,
    this.encryptionKey,
  });

  final TfArg<String> location;

  final TfArg<String>? region;

  final TfArg<CodepipelineType> type;

  final CodepipelineEncryptionKey? encryptionKey;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'region': ?region?.toTfJson(),
    'type': type.toTfJson(),
    'encryption_key': ?encryptionKey?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum CodepipelineType implements TerraformEnum {
  s3('S3');

  const CodepipelineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `artifact_store.encryption_key` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineEncryptionKey {
  const CodepipelineEncryptionKey({required this.id, required this.type});

  final TfArg<String> id;

  final TfArg<CodepipelineEncryptionKeyType> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodepipelineEncryptionKeyType implements TerraformEnum {
  kms('KMS');

  const CodepipelineEncryptionKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `stage` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStage {
  const CodepipelineStage({
    required this.name,
    required this.action,
    this.beforeEntry,
    this.onFailure,
    this.onSuccess,
  });

  final TfArg<String> name;

  final List<CodepipelineAction> action;

  final CodepipelineBeforeEntry? beforeEntry;

  final CodepipelineOnFailure? onFailure;

  final CodepipelineOnSuccess? onSuccess;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'action': [for (final e in action) e.encode()],
    'before_entry': ?beforeEntry?.encode(),
    'on_failure': ?onFailure?.encode(),
    'on_success': ?onSuccess?.encode(),
  };
}

/// Typed helper for the `stage.action` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineAction {
  const CodepipelineAction({
    required this.category,
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.namespace,
    this.outputArtifacts,
    this.outputVariables,
    required this.owner,
    required this.provider,
    this.region,
    this.roleArn,
    this.runOrder,
    this.timeoutInMinutes,
    required this.version,
    this.outputArtifactsForComputeAction,
  });

  final TfArg<CodepipelineCategory> category;

  final TfArg<List<String>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<String>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? namespace;

  final TfArg<List<String>>? outputArtifacts;

  final TfArg<List<String>>? outputVariables;

  final TfArg<CodepipelineOwner> owner;

  final TfArg<String> provider;

  final TfArg<String>? region;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<num>? runOrder;

  final TfArg<num>? timeoutInMinutes;

  final TfArg<String> version;

  final List<CodepipelineOutputArtifactsForComputeAction>?
  outputArtifactsForComputeAction;

  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    'commands': ?commands?.toTfJson(),
    'configuration': ?configuration?.toTfJson(),
    'input_artifacts': ?inputArtifacts?.toTfJson(),
    'name': name.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'output_artifacts': ?outputArtifacts?.toTfJson(),
    'output_variables': ?outputVariables?.toTfJson(),
    'owner': owner.toTfJson(),
    'provider': provider.toTfJson(),
    'region': ?region?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'run_order': ?runOrder?.toTfJson(),
    'timeout_in_minutes': ?timeoutInMinutes?.toTfJson(),
    'version': version.toTfJson(),
    if (outputArtifactsForComputeAction != null)
      'output_artifacts_for_compute_action': [
        for (final e in outputArtifactsForComputeAction!) e.encode(),
      ],
  };
}

/// `category` — derived from the provider schema description.
enum CodepipelineCategory implements TerraformEnum {
  source('Source'),
  build('Build'),
  deploy('Deploy'),
  test('Test'),
  invoke('Invoke'),
  approval('Approval'),
  compute('Compute');

  const CodepipelineCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `owner` — derived from the provider schema description.
enum CodepipelineOwner implements TerraformEnum {
  aws('AWS'),
  thirdparty('ThirdParty'),
  custom('Custom');

  const CodepipelineOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `stage.action.output_artifacts_for_compute_action` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineOutputArtifactsForComputeAction {
  const CodepipelineOutputArtifactsForComputeAction({
    this.files,
    required this.name,
  });

  final TfArg<List<String>>? files;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'files': ?files?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `stage.before_entry` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineBeforeEntry {
  const CodepipelineBeforeEntry({required this.condition});

  final CodepipelineCondition condition;

  Map<String, Object?> encode() => {'condition': condition.encode()};
}

/// Typed helper for the `stage.before_entry.condition` block of
/// `aws_codepipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodepipelineCondition {
  const CodepipelineCondition({this.result, required this.rule});

  final TfArg<String>? result;

  final List<CodepipelineRule> rule;

  Map<String, Object?> encode() => {
    'result': ?result?.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `stage.before_entry.condition.rule` block of
/// `aws_codepipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodepipelineRule {
  const CodepipelineRule({
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.region,
    this.roleArn,
    this.timeoutInMinutes,
    required this.ruleTypeId,
  });

  final TfArg<List<String>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<String>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? region;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<num>? timeoutInMinutes;

  final CodepipelineRuleTypeId ruleTypeId;

  Map<String, Object?> encode() => {
    'commands': ?commands?.toTfJson(),
    'configuration': ?configuration?.toTfJson(),
    'input_artifacts': ?inputArtifacts?.toTfJson(),
    'name': name.toTfJson(),
    'region': ?region?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'timeout_in_minutes': ?timeoutInMinutes?.toTfJson(),
    'rule_type_id': ruleTypeId.encode(),
  };
}

/// Typed helper for the `stage.before_entry.condition.rule.rule_type_id` block of
/// `aws_codepipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodepipelineRuleTypeId {
  const CodepipelineRuleTypeId({
    required this.category,
    this.owner,
    required this.provider,
    this.version,
  });

  final TfArg<String> category;

  final TfArg<String>? owner;

  final TfArg<String> provider;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    'owner': ?owner?.toTfJson(),
    'provider': provider.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `stage.on_failure` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineOnFailure {
  const CodepipelineOnFailure({
    this.result,
    this.condition,
    this.retryConfiguration,
  });

  final TfArg<CodepipelineResult>? result;

  final CodepipelineCondition? condition;

  final CodepipelineRetryConfiguration? retryConfiguration;

  Map<String, Object?> encode() => {
    'result': ?result?.toTfJson(),
    'condition': ?condition?.encode(),
    'retry_configuration': ?retryConfiguration?.encode(),
  };
}

/// `result` — derived from the provider schema description.
enum CodepipelineResult implements TerraformEnum {
  rollback('ROLLBACK'),
  fail('FAIL'),
  retry('RETRY'),
  skip('SKIP');

  const CodepipelineResult(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `stage.on_failure.retry_configuration` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineRetryConfiguration {
  const CodepipelineRetryConfiguration({this.retryMode});

  final TfArg<CodepipelineRetryMode>? retryMode;

  Map<String, Object?> encode() => {'retry_mode': ?retryMode?.toTfJson()};
}

/// `retry_mode` — derived from the provider schema description.
enum CodepipelineRetryMode implements TerraformEnum {
  failedActions('FAILED_ACTIONS'),
  allActions('ALL_ACTIONS');

  const CodepipelineRetryMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `stage.on_success` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineOnSuccess {
  const CodepipelineOnSuccess({required this.condition});

  final CodepipelineCondition condition;

  Map<String, Object?> encode() => {'condition': condition.encode()};
}

/// Typed helper for the `trigger` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTrigger {
  const CodepipelineTrigger({
    required this.providerType,
    required this.gitConfiguration,
  });

  final TfArg<String> providerType;

  final CodepipelineGitConfiguration gitConfiguration;

  Map<String, Object?> encode() => {
    'provider_type': providerType.toTfJson(),
    'git_configuration': gitConfiguration.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineGitConfiguration {
  const CodepipelineGitConfiguration({
    required this.sourceActionName,
    this.pullRequest,
    this.push,
  });

  final TfArg<String> sourceActionName;

  final List<CodepipelinePullRequest>? pullRequest;

  final List<CodepipelinePush>? push;

  Map<String, Object?> encode() => {
    'source_action_name': sourceActionName.toTfJson(),
    if (pullRequest != null)
      'pull_request': [for (final e in pullRequest!) e.encode()],
    if (push != null) 'push': [for (final e in push!) e.encode()],
  };
}

/// Typed helper for the `trigger.git_configuration.pull_request` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelinePullRequest {
  const CodepipelinePullRequest({this.events, this.branches, this.filePaths});

  final TfArg<List<String>>? events;

  final CodepipelineBranches? branches;

  final CodepipelineFilePaths? filePaths;

  Map<String, Object?> encode() => {
    'events': ?events?.toTfJson(),
    'branches': ?branches?.encode(),
    'file_paths': ?filePaths?.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration.pull_request.branches` block of
/// `aws_codepipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodepipelineBranches {
  const CodepipelineBranches({this.excludes, this.includes});

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.toTfJson(),
    'includes': ?includes?.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.pull_request.file_paths` block of
/// `aws_codepipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodepipelineFilePaths {
  const CodepipelineFilePaths({this.excludes, this.includes});

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.toTfJson(),
    'includes': ?includes?.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.push` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelinePush {
  const CodepipelinePush({this.branches, this.filePaths, this.tags});

  final CodepipelineBranches? branches;

  final CodepipelineFilePaths? filePaths;

  final CodepipelinePushTags? tags;

  Map<String, Object?> encode() => {
    'branches': ?branches?.encode(),
    'file_paths': ?filePaths?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration.push.tags` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelinePushTags {
  const CodepipelinePushTags({this.excludes, this.includes});

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.toTfJson(),
    'includes': ?includes?.toTfJson(),
  };
}

/// Typed helper for the `variable` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineVariable {
  const CodepipelineVariable({
    this.defaultValue,
    this.description,
    required this.name,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_codepipeline`.
final class AwsCodepipeline extends Resource {
  static const String tfType = 'aws_codepipeline';

  AwsCodepipeline({
    required super.localName,
    TfArg<CodepipelineExecutionMode>? executionMode,
    required TfArg<String> name,
    TfArg<CodepipelinePipelineType>? pipelineType,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required List<CodepipelineArtifactStore> artifactStore,
    required List<CodepipelineStage> stage,
    List<CodepipelineTrigger>? trigger,
    List<CodepipelineVariable>? variable,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'execution_mode': ?executionMode,
           'name': name,
           'pipeline_type': ?pipelineType,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'artifact_store': TfArg.literal([
             for (final e in artifactStore) e.encode(),
           ]),
           'stage': TfArg.literal([for (final e in stage) e.encode()]),
           if (trigger != null)
             'trigger': TfArg.literal([for (final e in trigger) e.encode()]),
           if (variable != null)
             'variable': TfArg.literal([for (final e in variable) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodepipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodepipeline>`.
  RefTo<AwsCodepipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `trigger_all` attribute.
  TfRef<List<Map<String, Object?>>> get triggerAll =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trigger_all');

  /// Reference to `execution_mode` attribute.
  TfRef<String> get executionModeRef =>
      TfRef.attribute<String>(this, 'execution_mode');

  /// Reference to `pipeline_type` attribute.
  TfRef<String> get pipelineTypeRef =>
      TfRef.attribute<String>(this, 'pipeline_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
