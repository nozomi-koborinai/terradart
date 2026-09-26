// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dlm_lifecycle_policy`.
const Set<String> _awsDlmLifecyclePolicySensitive = <String>{};

/// Typed helper for the `policy_details` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetails {
  const DlmLifecyclePolicyPolicyDetails({
    this.copyTags,
    this.createInterval,
    this.extendDeletion,
    this.policyLanguage,
    this.policyType,
    this.resourceLocations,
    this.resourceType,
    this.resourceTypes,
    this.retainInterval,
    this.targetTags,
    this.action,
    this.eventSource,
    this.exclusions,
    this.parameters,
    this.schedule,
  });

  final TfArg<bool>? copyTags;

  final TfArg<num>? createInterval;

  final TfArg<bool>? extendDeletion;

  final TfArg<String>? policyLanguage;

  final TfArg<String>? policyType;

  final TfArg<List<Object?>>? resourceLocations;

  final TfArg<String>? resourceType;

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<num>? retainInterval;

  final TfArg<Map<String, String>>? targetTags;

  final DlmLifecyclePolicyPolicyDetailsAction? action;

  final DlmLifecyclePolicyPolicyDetailsEventSource? eventSource;

  final DlmLifecyclePolicyPolicyDetailsExclusions? exclusions;

  final DlmLifecyclePolicyPolicyDetailsParameters? parameters;

  final List<DlmLifecyclePolicyPolicyDetailsSchedule>? schedule;

  Map<String, Object?> encode() => {
    if (copyTags != null) 'copy_tags': copyTags!.toTfJson(),
    if (createInterval != null) 'create_interval': createInterval!.toTfJson(),
    if (extendDeletion != null) 'extend_deletion': extendDeletion!.toTfJson(),
    if (policyLanguage != null) 'policy_language': policyLanguage!.toTfJson(),
    if (policyType != null) 'policy_type': policyType!.toTfJson(),
    if (resourceLocations != null)
      'resource_locations': resourceLocations!.toTfJson(),
    if (resourceType != null) 'resource_type': resourceType!.toTfJson(),
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (retainInterval != null) 'retain_interval': retainInterval!.toTfJson(),
    if (targetTags != null) 'target_tags': targetTags!.toTfJson(),
    if (action != null) 'action': action!.encode(),
    if (eventSource != null) 'event_source': eventSource!.encode(),
    if (exclusions != null) 'exclusions': exclusions!.encode(),
    if (parameters != null) 'parameters': parameters!.encode(),
    if (schedule != null) 'schedule': [for (final e in schedule!) e.encode()],
  };
}

/// Typed helper for the `policy_details.action` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsAction {
  const DlmLifecyclePolicyPolicyDetailsAction({
    required this.name,
    required this.crossRegionCopy,
  });

  final TfArg<String> name;

  final List<DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopy>
  crossRegionCopy;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'cross_region_copy': [for (final e in crossRegionCopy) e.encode()],
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopy {
  const DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopy({
    required this.target,
    required this.encryptionConfiguration,
    this.retainRule,
  });

  final TfArg<String> target;

  final DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration
  encryptionConfiguration;

  final DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule?
  retainRule;

  Map<String, Object?> encode() => {
    'target': target.toTfJson(),
    'encryption_configuration': encryptionConfiguration.encode(),
    if (retainRule != null) 'retain_rule': retainRule!.encode(),
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy.encryption_configuration` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration {
  const DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfiguration({
    this.cmkArn,
    this.encrypted,
  });

  final TfArg<String>? cmkArn;

  final TfArg<bool>? encrypted;

  Map<String, Object?> encode() => {
    if (cmkArn != null) 'cmk_arn': cmkArn!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy.retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule {
  const DlmLifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  final TfArg<num> interval;

  final TfArg<String> intervalUnit;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// Typed helper for the `policy_details.event_source` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsEventSource {
  const DlmLifecyclePolicyPolicyDetailsEventSource({
    required this.type,
    required this.parameters,
  });

  final TfArg<String> type;

  final DlmLifecyclePolicyPolicyDetailsEventSourceParameters parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'parameters': parameters.encode(),
  };
}

/// Typed helper for the `policy_details.event_source.parameters` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsEventSourceParameters {
  const DlmLifecyclePolicyPolicyDetailsEventSourceParameters({
    required this.descriptionRegex,
    required this.eventType,
    required this.snapshotOwner,
  });

  final TfArg<String> descriptionRegex;

  final TfArg<String> eventType;

  final TfArg<List<Object?>> snapshotOwner;

  Map<String, Object?> encode() => {
    'description_regex': descriptionRegex.toTfJson(),
    'event_type': eventType.toTfJson(),
    'snapshot_owner': snapshotOwner.toTfJson(),
  };
}

/// Typed helper for the `policy_details.exclusions` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsExclusions {
  const DlmLifecyclePolicyPolicyDetailsExclusions({
    this.excludeBootVolumes,
    this.excludeTags,
    this.excludeVolumeTypes,
  });

  final TfArg<bool>? excludeBootVolumes;

  final TfArg<Map<String, String>>? excludeTags;

  final TfArg<List<Object?>>? excludeVolumeTypes;

  Map<String, Object?> encode() => {
    if (excludeBootVolumes != null)
      'exclude_boot_volumes': excludeBootVolumes!.toTfJson(),
    if (excludeTags != null) 'exclude_tags': excludeTags!.toTfJson(),
    if (excludeVolumeTypes != null)
      'exclude_volume_types': excludeVolumeTypes!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.parameters` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsParameters {
  const DlmLifecyclePolicyPolicyDetailsParameters({
    this.excludeBootVolume,
    this.excludeDataVolumeTags,
    this.noReboot,
  });

  final TfArg<bool>? excludeBootVolume;

  final TfArg<Map<String, String>>? excludeDataVolumeTags;

  final TfArg<bool>? noReboot;

  Map<String, Object?> encode() => {
    if (excludeBootVolume != null)
      'exclude_boot_volume': excludeBootVolume!.toTfJson(),
    if (excludeDataVolumeTags != null)
      'exclude_data_volume_tags': excludeDataVolumeTags!.toTfJson(),
    if (noReboot != null) 'no_reboot': noReboot!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsSchedule {
  const DlmLifecyclePolicyPolicyDetailsSchedule({
    this.copyTags,
    required this.name,
    this.tagsToAdd,
    this.variableTags,
    this.archiveRule,
    required this.createRule,
    this.crossRegionCopyRule,
    this.deprecateRule,
    this.fastRestoreRule,
    required this.retainRule,
    this.shareRule,
  });

  final TfArg<bool>? copyTags;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? tagsToAdd;

  final TfArg<Map<String, String>>? variableTags;

  final DlmLifecyclePolicyPolicyDetailsScheduleArchiveRule? archiveRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleCreateRule createRule;

  final List<DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>?
  crossRegionCopyRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleDeprecateRule? deprecateRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleFastRestoreRule? fastRestoreRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleRetainRule retainRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleShareRule? shareRule;

  Map<String, Object?> encode() => {
    if (copyTags != null) 'copy_tags': copyTags!.toTfJson(),
    'name': name.toTfJson(),
    if (tagsToAdd != null) 'tags_to_add': tagsToAdd!.toTfJson(),
    if (variableTags != null) 'variable_tags': variableTags!.toTfJson(),
    if (archiveRule != null) 'archive_rule': archiveRule!.encode(),
    'create_rule': createRule.encode(),
    if (crossRegionCopyRule != null)
      'cross_region_copy_rule': [
        for (final e in crossRegionCopyRule!) e.encode(),
      ],
    if (deprecateRule != null) 'deprecate_rule': deprecateRule!.encode(),
    if (fastRestoreRule != null) 'fast_restore_rule': fastRestoreRule!.encode(),
    'retain_rule': retainRule.encode(),
    if (shareRule != null) 'share_rule': shareRule!.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleArchiveRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleArchiveRule({
    required this.archiveRetainRule,
  });

  final DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule
  archiveRetainRule;

  Map<String, Object?> encode() => {
    'archive_retain_rule': archiveRetainRule.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule.archive_retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule({
    required this.retentionArchiveTier,
  });

  final DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier
  retentionArchiveTier;

  Map<String, Object?> encode() => {
    'retention_archive_tier': retentionArchiveTier.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule.archive_retain_rule.retention_archive_tier` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier {
  const DlmLifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<String>? intervalUnit;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (intervalUnit != null) 'interval_unit': intervalUnit!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.create_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleCreateRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleCreateRule({
    this.cronExpression,
    this.interval,
    this.intervalUnit,
    this.location,
    this.times,
    this.scripts,
  });

  final TfArg<String>? cronExpression;

  final TfArg<num>? interval;

  final TfArg<String>? intervalUnit;

  final TfArg<String>? location;

  final TfArg<List<Object?>>? times;

  final DlmLifecyclePolicyPolicyDetailsScheduleCreateRuleScripts? scripts;

  Map<String, Object?> encode() => {
    if (cronExpression != null) 'cron_expression': cronExpression!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (intervalUnit != null) 'interval_unit': intervalUnit!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (times != null) 'times': times!.toTfJson(),
    if (scripts != null) 'scripts': scripts!.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.create_rule.scripts` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleCreateRuleScripts {
  const DlmLifecyclePolicyPolicyDetailsScheduleCreateRuleScripts({
    this.executeOperationOnScriptFailure,
    required this.executionHandler,
    this.executionHandlerService,
    this.executionTimeout,
    this.maximumRetryCount,
    this.stages,
  });

  final TfArg<bool>? executeOperationOnScriptFailure;

  final TfArg<String> executionHandler;

  final TfArg<String>? executionHandlerService;

  final TfArg<num>? executionTimeout;

  final TfArg<num>? maximumRetryCount;

  final TfArg<List<Object?>>? stages;

  Map<String, Object?> encode() => {
    if (executeOperationOnScriptFailure != null)
      'execute_operation_on_script_failure': executeOperationOnScriptFailure!
          .toTfJson(),
    'execution_handler': executionHandler.toTfJson(),
    if (executionHandlerService != null)
      'execution_handler_service': executionHandlerService!.toTfJson(),
    if (executionTimeout != null)
      'execution_timeout': executionTimeout!.toTfJson(),
    if (maximumRetryCount != null)
      'maximum_retry_count': maximumRetryCount!.toTfJson(),
    if (stages != null) 'stages': stages!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.cross_region_copy_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule({
    this.cmkArn,
    this.copyTags,
    required this.encrypted,
    this.target,
    this.targetRegion,
    this.deprecateRule,
    this.retainRule,
  });

  final TfArg<String>? cmkArn;

  final TfArg<bool>? copyTags;

  final TfArg<bool> encrypted;

  final TfArg<String>? target;

  final TfArg<String>? targetRegion;

  final DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule?
  deprecateRule;

  final DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule?
  retainRule;

  Map<String, Object?> encode() => {
    if (cmkArn != null) 'cmk_arn': cmkArn!.toTfJson(),
    if (copyTags != null) 'copy_tags': copyTags!.toTfJson(),
    'encrypted': encrypted.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (targetRegion != null) 'target_region': targetRegion!.toTfJson(),
    if (deprecateRule != null) 'deprecate_rule': deprecateRule!.encode(),
    if (retainRule != null) 'retain_rule': retainRule!.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.cross_region_copy_rule.deprecate_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule({
    required this.interval,
    required this.intervalUnit,
  });

  final TfArg<num> interval;

  final TfArg<String> intervalUnit;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.cross_region_copy_rule.retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  final TfArg<num> interval;

  final TfArg<String> intervalUnit;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.deprecate_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleDeprecateRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleDeprecateRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<String>? intervalUnit;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (intervalUnit != null) 'interval_unit': intervalUnit!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.fast_restore_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleFastRestoreRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleFastRestoreRule({
    required this.availabilityZones,
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<List<Object?>> availabilityZones;

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<String>? intervalUnit;

  Map<String, Object?> encode() => {
    'availability_zones': availabilityZones.toTfJson(),
    if (count != null) 'count': count!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (intervalUnit != null) 'interval_unit': intervalUnit!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleRetainRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleRetainRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<String>? intervalUnit;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (intervalUnit != null) 'interval_unit': intervalUnit!.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.share_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyPolicyDetailsScheduleShareRule {
  const DlmLifecyclePolicyPolicyDetailsScheduleShareRule({
    required this.targetAccounts,
    this.unshareInterval,
    this.unshareIntervalUnit,
  });

  final TfArg<List<Object?>> targetAccounts;

  final TfArg<num>? unshareInterval;

  final TfArg<String>? unshareIntervalUnit;

  Map<String, Object?> encode() => {
    'target_accounts': targetAccounts.toTfJson(),
    if (unshareInterval != null)
      'unshare_interval': unshareInterval!.toTfJson(),
    if (unshareIntervalUnit != null)
      'unshare_interval_unit': unshareIntervalUnit!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dlm_lifecycle_policy`.
final class AwsDlmLifecyclePolicy extends Resource {
  static const String tfType = 'aws_dlm_lifecycle_policy';

  AwsDlmLifecyclePolicy({
    required super.localName,
    TfArg<String>? defaultPolicy,
    required TfArg<String> description,
    required TfArg<String> executionRoleArn,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    required DlmLifecyclePolicyPolicyDetails policyDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultPolicy != null) 'default_policy': defaultPolicy,
           'description': description,
           'execution_role_arn': executionRoleArn,
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           'policy_details': TfArg.literal(policyDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDlmLifecyclePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
