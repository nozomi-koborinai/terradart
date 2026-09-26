// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codepipeline`.
const Set<String> _awsCodepipelineSensitive = <String>{};

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

  final TfArg<String> type;

  final CodepipelineArtifactStoreEncryptionKey? encryptionKey;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    'type': type.toTfJson(),
    if (encryptionKey != null) 'encryption_key': encryptionKey!.encode(),
  };
}

/// Typed helper for the `artifact_store.encryption_key` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineArtifactStoreEncryptionKey {
  const CodepipelineArtifactStoreEncryptionKey({
    required this.id,
    required this.type,
  });

  final TfArg<String> id;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
  };
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

  final List<CodepipelineStageAction> action;

  final CodepipelineStageBeforeEntry? beforeEntry;

  final CodepipelineStageOnFailure? onFailure;

  final CodepipelineStageOnSuccess? onSuccess;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'action': [for (final e in action) e.encode()],
    if (beforeEntry != null) 'before_entry': beforeEntry!.encode(),
    if (onFailure != null) 'on_failure': onFailure!.encode(),
    if (onSuccess != null) 'on_success': onSuccess!.encode(),
  };
}

/// Typed helper for the `stage.action` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageAction {
  const CodepipelineStageAction({
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

  final TfArg<String> category;

  final TfArg<List<Object?>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<Object?>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? namespace;

  final TfArg<List<Object?>>? outputArtifacts;

  final TfArg<List<Object?>>? outputVariables;

  final TfArg<String> owner;

  final TfArg<String> provider;

  final TfArg<String>? region;

  final TfArg<String>? roleArn;

  final TfArg<num>? runOrder;

  final TfArg<num>? timeoutInMinutes;

  final TfArg<String> version;

  final List<CodepipelineStageActionOutputArtifactsForComputeAction>?
  outputArtifactsForComputeAction;

  Map<String, Object?> encode() => {
    'category': category.toTfJson(),
    if (commands != null) 'commands': commands!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.toTfJson(),
    if (inputArtifacts != null) 'input_artifacts': inputArtifacts!.toTfJson(),
    'name': name.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (outputArtifacts != null)
      'output_artifacts': outputArtifacts!.toTfJson(),
    if (outputVariables != null)
      'output_variables': outputVariables!.toTfJson(),
    'owner': owner.toTfJson(),
    'provider': provider.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (runOrder != null) 'run_order': runOrder!.toTfJson(),
    if (timeoutInMinutes != null)
      'timeout_in_minutes': timeoutInMinutes!.toTfJson(),
    'version': version.toTfJson(),
    if (outputArtifactsForComputeAction != null)
      'output_artifacts_for_compute_action': [
        for (final e in outputArtifactsForComputeAction!) e.encode(),
      ],
  };
}

/// Typed helper for the `stage.action.output_artifacts_for_compute_action` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageActionOutputArtifactsForComputeAction {
  const CodepipelineStageActionOutputArtifactsForComputeAction({
    this.files,
    required this.name,
  });

  final TfArg<List<Object?>>? files;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (files != null) 'files': files!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `stage.before_entry` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageBeforeEntry {
  const CodepipelineStageBeforeEntry({required this.condition});

  final CodepipelineStageBeforeEntryCondition condition;

  Map<String, Object?> encode() => {'condition': condition.encode()};
}

/// Typed helper for the `stage.before_entry.condition` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageBeforeEntryCondition {
  const CodepipelineStageBeforeEntryCondition({
    this.result,
    required this.rule,
  });

  final TfArg<String>? result;

  final List<CodepipelineStageBeforeEntryConditionRule> rule;

  Map<String, Object?> encode() => {
    if (result != null) 'result': result!.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `stage.before_entry.condition.rule` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageBeforeEntryConditionRule {
  const CodepipelineStageBeforeEntryConditionRule({
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.region,
    this.roleArn,
    this.timeoutInMinutes,
    required this.ruleTypeId,
  });

  final TfArg<List<Object?>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<Object?>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? region;

  final TfArg<String>? roleArn;

  final TfArg<num>? timeoutInMinutes;

  final CodepipelineStageBeforeEntryConditionRuleRuleTypeId ruleTypeId;

  Map<String, Object?> encode() => {
    if (commands != null) 'commands': commands!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.toTfJson(),
    if (inputArtifacts != null) 'input_artifacts': inputArtifacts!.toTfJson(),
    'name': name.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (timeoutInMinutes != null)
      'timeout_in_minutes': timeoutInMinutes!.toTfJson(),
    'rule_type_id': ruleTypeId.encode(),
  };
}

/// Typed helper for the `stage.before_entry.condition.rule.rule_type_id` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageBeforeEntryConditionRuleRuleTypeId {
  const CodepipelineStageBeforeEntryConditionRuleRuleTypeId({
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
    if (owner != null) 'owner': owner!.toTfJson(),
    'provider': provider.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `stage.on_failure` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnFailure {
  const CodepipelineStageOnFailure({
    this.result,
    this.condition,
    this.retryConfiguration,
  });

  final TfArg<String>? result;

  final CodepipelineStageOnFailureCondition? condition;

  final CodepipelineStageOnFailureRetryConfiguration? retryConfiguration;

  Map<String, Object?> encode() => {
    if (result != null) 'result': result!.toTfJson(),
    if (condition != null) 'condition': condition!.encode(),
    if (retryConfiguration != null)
      'retry_configuration': retryConfiguration!.encode(),
  };
}

/// Typed helper for the `stage.on_failure.condition` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnFailureCondition {
  const CodepipelineStageOnFailureCondition({this.result, required this.rule});

  final TfArg<String>? result;

  final List<CodepipelineStageOnFailureConditionRule> rule;

  Map<String, Object?> encode() => {
    if (result != null) 'result': result!.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `stage.on_failure.condition.rule` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnFailureConditionRule {
  const CodepipelineStageOnFailureConditionRule({
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.region,
    this.roleArn,
    this.timeoutInMinutes,
    required this.ruleTypeId,
  });

  final TfArg<List<Object?>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<Object?>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? region;

  final TfArg<String>? roleArn;

  final TfArg<num>? timeoutInMinutes;

  final CodepipelineStageOnFailureConditionRuleRuleTypeId ruleTypeId;

  Map<String, Object?> encode() => {
    if (commands != null) 'commands': commands!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.toTfJson(),
    if (inputArtifacts != null) 'input_artifacts': inputArtifacts!.toTfJson(),
    'name': name.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (timeoutInMinutes != null)
      'timeout_in_minutes': timeoutInMinutes!.toTfJson(),
    'rule_type_id': ruleTypeId.encode(),
  };
}

/// Typed helper for the `stage.on_failure.condition.rule.rule_type_id` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnFailureConditionRuleRuleTypeId {
  const CodepipelineStageOnFailureConditionRuleRuleTypeId({
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
    if (owner != null) 'owner': owner!.toTfJson(),
    'provider': provider.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `stage.on_failure.retry_configuration` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnFailureRetryConfiguration {
  const CodepipelineStageOnFailureRetryConfiguration({this.retryMode});

  final TfArg<String>? retryMode;

  Map<String, Object?> encode() => {
    if (retryMode != null) 'retry_mode': retryMode!.toTfJson(),
  };
}

/// Typed helper for the `stage.on_success` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnSuccess {
  const CodepipelineStageOnSuccess({required this.condition});

  final CodepipelineStageOnSuccessCondition condition;

  Map<String, Object?> encode() => {'condition': condition.encode()};
}

/// Typed helper for the `stage.on_success.condition` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnSuccessCondition {
  const CodepipelineStageOnSuccessCondition({this.result, required this.rule});

  final TfArg<String>? result;

  final List<CodepipelineStageOnSuccessConditionRule> rule;

  Map<String, Object?> encode() => {
    if (result != null) 'result': result!.toTfJson(),
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `stage.on_success.condition.rule` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnSuccessConditionRule {
  const CodepipelineStageOnSuccessConditionRule({
    this.commands,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.region,
    this.roleArn,
    this.timeoutInMinutes,
    required this.ruleTypeId,
  });

  final TfArg<List<Object?>>? commands;

  final TfArg<Map<String, String>>? configuration;

  final TfArg<List<Object?>>? inputArtifacts;

  final TfArg<String> name;

  final TfArg<String>? region;

  final TfArg<String>? roleArn;

  final TfArg<num>? timeoutInMinutes;

  final CodepipelineStageOnSuccessConditionRuleRuleTypeId ruleTypeId;

  Map<String, Object?> encode() => {
    if (commands != null) 'commands': commands!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.toTfJson(),
    if (inputArtifacts != null) 'input_artifacts': inputArtifacts!.toTfJson(),
    'name': name.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (timeoutInMinutes != null)
      'timeout_in_minutes': timeoutInMinutes!.toTfJson(),
    'rule_type_id': ruleTypeId.encode(),
  };
}

/// Typed helper for the `stage.on_success.condition.rule.rule_type_id` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineStageOnSuccessConditionRuleRuleTypeId {
  const CodepipelineStageOnSuccessConditionRuleRuleTypeId({
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
    if (owner != null) 'owner': owner!.toTfJson(),
    'provider': provider.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
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

  final CodepipelineTriggerGitConfiguration gitConfiguration;

  Map<String, Object?> encode() => {
    'provider_type': providerType.toTfJson(),
    'git_configuration': gitConfiguration.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfiguration {
  const CodepipelineTriggerGitConfiguration({
    required this.sourceActionName,
    this.pullRequest,
    this.push,
  });

  final TfArg<String> sourceActionName;

  final List<CodepipelineTriggerGitConfigurationPullRequest>? pullRequest;

  final List<CodepipelineTriggerGitConfigurationPush>? push;

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
final class CodepipelineTriggerGitConfigurationPullRequest {
  const CodepipelineTriggerGitConfigurationPullRequest({
    this.events,
    this.branches,
    this.filePaths,
  });

  final TfArg<List<Object?>>? events;

  final CodepipelineTriggerGitConfigurationPullRequestBranches? branches;

  final CodepipelineTriggerGitConfigurationPullRequestFilePaths? filePaths;

  Map<String, Object?> encode() => {
    if (events != null) 'events': events!.toTfJson(),
    if (branches != null) 'branches': branches!.encode(),
    if (filePaths != null) 'file_paths': filePaths!.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration.pull_request.branches` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPullRequestBranches {
  const CodepipelineTriggerGitConfigurationPullRequestBranches({
    this.excludes,
    this.includes,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? includes;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (includes != null) 'includes': includes!.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.pull_request.file_paths` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPullRequestFilePaths {
  const CodepipelineTriggerGitConfigurationPullRequestFilePaths({
    this.excludes,
    this.includes,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? includes;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (includes != null) 'includes': includes!.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.push` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPush {
  const CodepipelineTriggerGitConfigurationPush({
    this.branches,
    this.filePaths,
    this.tags,
  });

  final CodepipelineTriggerGitConfigurationPushBranches? branches;

  final CodepipelineTriggerGitConfigurationPushFilePaths? filePaths;

  final CodepipelineTriggerGitConfigurationPushTags? tags;

  Map<String, Object?> encode() => {
    if (branches != null) 'branches': branches!.encode(),
    if (filePaths != null) 'file_paths': filePaths!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `trigger.git_configuration.push.branches` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPushBranches {
  const CodepipelineTriggerGitConfigurationPushBranches({
    this.excludes,
    this.includes,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? includes;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (includes != null) 'includes': includes!.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.push.file_paths` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPushFilePaths {
  const CodepipelineTriggerGitConfigurationPushFilePaths({
    this.excludes,
    this.includes,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? includes;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (includes != null) 'includes': includes!.toTfJson(),
  };
}

/// Typed helper for the `trigger.git_configuration.push.tags` block of
/// `aws_codepipeline` (derived from provider schema).
@immutable
final class CodepipelineTriggerGitConfigurationPushTags {
  const CodepipelineTriggerGitConfigurationPushTags({
    this.excludes,
    this.includes,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? includes;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (includes != null) 'includes': includes!.toTfJson(),
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
    if (defaultValue != null) 'default_value': defaultValue!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_codepipeline`.
final class AwsCodepipeline extends Resource {
  static const String tfType = 'aws_codepipeline';

  AwsCodepipeline({
    required super.localName,
    TfArg<String>? executionMode,
    required TfArg<String> name,
    TfArg<String>? pipelineType,
    TfArg<String>? region,
    required TfArg<String> roleArn,
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
           if (executionMode != null) 'execution_mode': executionMode,
           'name': name,
           if (pipelineType != null) 'pipeline_type': pipelineType,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `trigger_all` attribute.
  TfRef<List<Map<String, Object?>>> get triggerAll =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trigger_all');
}
