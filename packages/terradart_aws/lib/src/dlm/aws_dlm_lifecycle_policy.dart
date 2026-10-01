// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_dlm_lifecycle_policy`.
const Set<String> _awsDlmLifecyclePolicySensitive = <String>{};

/// Dlm Lifecycle Policy Default enum for `default_policy`.
enum DlmLifecyclePolicyDefaultPolicy implements TerraformEnum {
  volume('VOLUME'),
  instance('INSTANCE');

  const DlmLifecyclePolicyDefaultPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dlm Lifecycle Policy enum for `state`.
enum DlmLifecyclePolicyState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DlmLifecyclePolicyState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyDetails {
  const DlmLifecyclePolicyDetails({
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

  final TfArg<DlmLifecyclePolicyLanguage>? policyLanguage;

  final TfArg<DlmLifecyclePolicyType>? policyType;

  final List<TfArg<DlmLifecyclePolicyResourceLocations>>? resourceLocations;

  final TfArg<DlmLifecyclePolicyResourceType>? resourceType;

  final List<TfArg<DlmLifecyclePolicyResourceTypes>>? resourceTypes;

  final TfArg<num>? retainInterval;

  final TfArg<Map<String, String>>? targetTags;

  final DlmLifecyclePolicyAction? action;

  final DlmLifecyclePolicyEventSource? eventSource;

  final DlmLifecyclePolicyExclusions? exclusions;

  final DlmLifecyclePolicyParameters? parameters;

  final List<DlmLifecyclePolicySchedule>? schedule;

  Map<String, Object?> encode() => {
    'copy_tags': ?copyTags?.toTfJson(),
    'create_interval': ?createInterval?.toTfJson(),
    'extend_deletion': ?extendDeletion?.toTfJson(),
    'policy_language': ?policyLanguage?.toTfJson(),
    'policy_type': ?policyType?.toTfJson(),
    if (resourceLocations != null)
      'resource_locations': [for (final e in resourceLocations!) e.toTfJson()],
    'resource_type': ?resourceType?.toTfJson(),
    if (resourceTypes != null)
      'resource_types': [for (final e in resourceTypes!) e.toTfJson()],
    'retain_interval': ?retainInterval?.toTfJson(),
    'target_tags': ?targetTags?.toTfJson(),
    'action': ?action?.encode(),
    'event_source': ?eventSource?.encode(),
    'exclusions': ?exclusions?.encode(),
    'parameters': ?parameters?.encode(),
    if (schedule != null) 'schedule': [for (final e in schedule!) e.encode()],
  };
}

/// `policy_language` — derived from the provider schema description.
enum DlmLifecyclePolicyLanguage implements TerraformEnum {
  simplified('SIMPLIFIED'),
  standard('STANDARD');

  const DlmLifecyclePolicyLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `policy_type` — derived from the provider schema description.
enum DlmLifecyclePolicyType implements TerraformEnum {
  ebsSnapshotManagement('EBS_SNAPSHOT_MANAGEMENT'),
  imageManagement('IMAGE_MANAGEMENT'),
  eventBasedPolicy('EVENT_BASED_POLICY');

  const DlmLifecyclePolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `resource_locations` — derived from the provider schema description.
enum DlmLifecyclePolicyResourceLocations implements TerraformEnum {
  cloud('CLOUD'),
  outpost('OUTPOST'),
  localZone('LOCAL_ZONE');

  const DlmLifecyclePolicyResourceLocations(this.terraformValue);
  @override
  final String terraformValue;
}

/// `resource_type` — derived from the provider schema description.
enum DlmLifecyclePolicyResourceType implements TerraformEnum {
  volume('VOLUME'),
  instance('INSTANCE');

  const DlmLifecyclePolicyResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `resource_types` — derived from the provider schema description.
enum DlmLifecyclePolicyResourceTypes implements TerraformEnum {
  volume('VOLUME'),
  instance('INSTANCE');

  const DlmLifecyclePolicyResourceTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.action` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyAction {
  const DlmLifecyclePolicyAction({
    required this.name,
    required this.crossRegionCopy,
  });

  final TfArg<String> name;

  final List<DlmLifecyclePolicyCrossRegionCopy> crossRegionCopy;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'cross_region_copy': [for (final e in crossRegionCopy) e.encode()],
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyCrossRegionCopy {
  const DlmLifecyclePolicyCrossRegionCopy({
    required this.target,
    required this.encryptionConfiguration,
    this.retainRule,
  });

  final TfArg<String> target;

  final DlmLifecyclePolicyEncryptionConfiguration encryptionConfiguration;

  final DlmLifecyclePolicyCrossRegionCopyRetainRule? retainRule;

  Map<String, Object?> encode() => {
    'target': target.toTfJson(),
    'encryption_configuration': encryptionConfiguration.encode(),
    'retain_rule': ?retainRule?.encode(),
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy.encryption_configuration` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyEncryptionConfiguration {
  const DlmLifecyclePolicyEncryptionConfiguration({
    this.cmkArn,
    this.encrypted,
  });

  final TfArg<String>? cmkArn;

  final TfArg<bool>? encrypted;

  Map<String, Object?> encode() => {
    'cmk_arn': ?cmkArn?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.action.cross_region_copy.retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DlmLifecyclePolicyCrossRegionCopyRetainRule {
  const DlmLifecyclePolicyCrossRegionCopyRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  final TfArg<num> interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit> intervalUnit;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// `interval_unit` — derived from the provider schema description.
enum DlmLifecyclePolicyDeprecateRuleIntervalUnit implements TerraformEnum {
  days('DAYS'),
  weeks('WEEKS'),
  months('MONTHS'),
  years('YEARS');

  const DlmLifecyclePolicyDeprecateRuleIntervalUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.event_source` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyEventSource {
  const DlmLifecyclePolicyEventSource({
    required this.type,
    required this.parameters,
  });

  final TfArg<DlmLifecyclePolicyEventSourceType> type;

  final DlmLifecyclePolicyEventSourceParameters parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'parameters': parameters.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum DlmLifecyclePolicyEventSourceType implements TerraformEnum {
  managedCwe('MANAGED_CWE');

  const DlmLifecyclePolicyEventSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.event_source.parameters` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyEventSourceParameters {
  const DlmLifecyclePolicyEventSourceParameters({
    required this.descriptionRegex,
    required this.eventType,
    required this.snapshotOwner,
  });

  final TfArg<String> descriptionRegex;

  final TfArg<DlmLifecyclePolicyEventType> eventType;

  final TfArg<List<String>> snapshotOwner;

  Map<String, Object?> encode() => {
    'description_regex': descriptionRegex.toTfJson(),
    'event_type': eventType.toTfJson(),
    'snapshot_owner': snapshotOwner.toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
enum DlmLifecyclePolicyEventType implements TerraformEnum {
  sharesnapshot('shareSnapshot');

  const DlmLifecyclePolicyEventType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.exclusions` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyExclusions {
  const DlmLifecyclePolicyExclusions({
    this.excludeBootVolumes,
    this.excludeTags,
    this.excludeVolumeTypes,
  });

  final TfArg<bool>? excludeBootVolumes;

  final TfArg<Map<String, String>>? excludeTags;

  final TfArg<List<String>>? excludeVolumeTypes;

  Map<String, Object?> encode() => {
    'exclude_boot_volumes': ?excludeBootVolumes?.toTfJson(),
    'exclude_tags': ?excludeTags?.toTfJson(),
    'exclude_volume_types': ?excludeVolumeTypes?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.parameters` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyParameters {
  const DlmLifecyclePolicyParameters({
    this.excludeBootVolume,
    this.excludeDataVolumeTags,
    this.noReboot,
  });

  final TfArg<bool>? excludeBootVolume;

  final TfArg<Map<String, String>>? excludeDataVolumeTags;

  final TfArg<bool>? noReboot;

  Map<String, Object?> encode() => {
    'exclude_boot_volume': ?excludeBootVolume?.toTfJson(),
    'exclude_data_volume_tags': ?excludeDataVolumeTags?.toTfJson(),
    'no_reboot': ?noReboot?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicySchedule {
  const DlmLifecyclePolicySchedule({
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

  final DlmLifecyclePolicyArchiveRule? archiveRule;

  final DlmLifecyclePolicyCreateRule createRule;

  final List<DlmLifecyclePolicyCrossRegionCopyRule>? crossRegionCopyRule;

  final DlmLifecyclePolicyDeprecateRule? deprecateRule;

  final DlmLifecyclePolicyFastRestoreRule? fastRestoreRule;

  final DlmLifecyclePolicyRetainRule retainRule;

  final DlmLifecyclePolicyShareRule? shareRule;

  Map<String, Object?> encode() => {
    'copy_tags': ?copyTags?.toTfJson(),
    'name': name.toTfJson(),
    'tags_to_add': ?tagsToAdd?.toTfJson(),
    'variable_tags': ?variableTags?.toTfJson(),
    'archive_rule': ?archiveRule?.encode(),
    'create_rule': createRule.encode(),
    if (crossRegionCopyRule != null)
      'cross_region_copy_rule': [
        for (final e in crossRegionCopyRule!) e.encode(),
      ],
    'deprecate_rule': ?deprecateRule?.encode(),
    'fast_restore_rule': ?fastRestoreRule?.encode(),
    'retain_rule': retainRule.encode(),
    'share_rule': ?shareRule?.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyArchiveRule {
  const DlmLifecyclePolicyArchiveRule({required this.archiveRetainRule});

  final DlmLifecyclePolicyArchiveRetainRule archiveRetainRule;

  Map<String, Object?> encode() => {
    'archive_retain_rule': archiveRetainRule.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule.archive_retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyArchiveRetainRule {
  const DlmLifecyclePolicyArchiveRetainRule({
    required this.retentionArchiveTier,
  });

  final DlmLifecyclePolicyRetentionArchiveTier retentionArchiveTier;

  Map<String, Object?> encode() => {
    'retention_archive_tier': retentionArchiveTier.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.archive_rule.archive_retain_rule.retention_archive_tier` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyRetentionArchiveTier {
  const DlmLifecyclePolicyRetentionArchiveTier({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit>? intervalUnit;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'interval_unit': ?intervalUnit?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.create_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyCreateRule {
  const DlmLifecyclePolicyCreateRule({
    this.cronExpression,
    this.interval,
    this.intervalUnit,
    this.location,
    this.times,
    this.scripts,
  });

  final TfArg<String>? cronExpression;

  final TfArg<num>? interval;

  final TfArg<DlmLifecyclePolicyCreateRuleIntervalUnit>? intervalUnit;

  final TfArg<DlmLifecyclePolicyLocation>? location;

  final TfArg<List<String>>? times;

  final DlmLifecyclePolicyScripts? scripts;

  Map<String, Object?> encode() => {
    'cron_expression': ?cronExpression?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'interval_unit': ?intervalUnit?.toTfJson(),
    'location': ?location?.toTfJson(),
    'times': ?times?.toTfJson(),
    'scripts': ?scripts?.encode(),
  };
}

/// `interval_unit` — derived from the provider schema description.
enum DlmLifecyclePolicyCreateRuleIntervalUnit implements TerraformEnum {
  hours('HOURS');

  const DlmLifecyclePolicyCreateRuleIntervalUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// `location` — derived from the provider schema description.
enum DlmLifecyclePolicyLocation implements TerraformEnum {
  cloud('CLOUD'),
  outpostLocal('OUTPOST_LOCAL'),
  localZone('LOCAL_ZONE');

  const DlmLifecyclePolicyLocation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.schedule.create_rule.scripts` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyScripts {
  const DlmLifecyclePolicyScripts({
    this.executeOperationOnScriptFailure,
    required this.executionHandler,
    this.executionHandlerService,
    this.executionTimeout,
    this.maximumRetryCount,
    this.stages,
  });

  final TfArg<bool>? executeOperationOnScriptFailure;

  final TfArg<String> executionHandler;

  final TfArg<DlmLifecyclePolicyExecutionHandlerService>?
  executionHandlerService;

  final TfArg<num>? executionTimeout;

  final TfArg<num>? maximumRetryCount;

  final List<TfArg<DlmLifecyclePolicyStages>>? stages;

  Map<String, Object?> encode() => {
    'execute_operation_on_script_failure': ?executeOperationOnScriptFailure
        ?.toTfJson(),
    'execution_handler': executionHandler.toTfJson(),
    'execution_handler_service': ?executionHandlerService?.toTfJson(),
    'execution_timeout': ?executionTimeout?.toTfJson(),
    'maximum_retry_count': ?maximumRetryCount?.toTfJson(),
    if (stages != null) 'stages': [for (final e in stages!) e.toTfJson()],
  };
}

/// `execution_handler_service` — derived from the provider schema description.
enum DlmLifecyclePolicyExecutionHandlerService implements TerraformEnum {
  awsSystemsManager('AWS_SYSTEMS_MANAGER');

  const DlmLifecyclePolicyExecutionHandlerService(this.terraformValue);
  @override
  final String terraformValue;
}

/// `stages` — derived from the provider schema description.
enum DlmLifecyclePolicyStages implements TerraformEnum {
  pre('PRE'),
  post('POST');

  const DlmLifecyclePolicyStages(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_details.schedule.cross_region_copy_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyCrossRegionCopyRule {
  const DlmLifecyclePolicyCrossRegionCopyRule({
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

  final DlmLifecyclePolicyCrossRegionCopyRuleDeprecateRule? deprecateRule;

  final DlmLifecyclePolicyCrossRegionCopyRetainRule? retainRule;

  Map<String, Object?> encode() => {
    'cmk_arn': ?cmkArn?.toTfJson(),
    'copy_tags': ?copyTags?.toTfJson(),
    'encrypted': encrypted.toTfJson(),
    'target': ?target?.toTfJson(),
    'target_region': ?targetRegion?.toTfJson(),
    'deprecate_rule': ?deprecateRule?.encode(),
    'retain_rule': ?retainRule?.encode(),
  };
}

/// Typed helper for the `policy_details.schedule.cross_region_copy_rule.deprecate_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyCrossRegionCopyRuleDeprecateRule {
  const DlmLifecyclePolicyCrossRegionCopyRuleDeprecateRule({
    required this.interval,
    required this.intervalUnit,
  });

  final TfArg<num> interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit> intervalUnit;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.deprecate_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyDeprecateRule {
  const DlmLifecyclePolicyDeprecateRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit>? intervalUnit;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'interval_unit': ?intervalUnit?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.fast_restore_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyFastRestoreRule {
  const DlmLifecyclePolicyFastRestoreRule({
    required this.availabilityZones,
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<List<String>> availabilityZones;

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit>? intervalUnit;

  Map<String, Object?> encode() => {
    'availability_zones': availabilityZones.toTfJson(),
    'count': ?count?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'interval_unit': ?intervalUnit?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.retain_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyRetainRule {
  const DlmLifecyclePolicyRetainRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  final TfArg<num>? count;

  final TfArg<num>? interval;

  final TfArg<DlmLifecyclePolicyDeprecateRuleIntervalUnit>? intervalUnit;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'interval_unit': ?intervalUnit?.toTfJson(),
  };
}

/// Typed helper for the `policy_details.schedule.share_rule` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyShareRule {
  const DlmLifecyclePolicyShareRule({
    required this.targetAccounts,
    this.unshareInterval,
    this.unshareIntervalUnit,
  });

  final TfArg<List<String>> targetAccounts;

  final TfArg<num>? unshareInterval;

  final TfArg<DlmLifecyclePolicyUnshareIntervalUnit>? unshareIntervalUnit;

  Map<String, Object?> encode() => {
    'target_accounts': targetAccounts.toTfJson(),
    'unshare_interval': ?unshareInterval?.toTfJson(),
    'unshare_interval_unit': ?unshareIntervalUnit?.toTfJson(),
  };
}

/// `unshare_interval_unit` — derived from the provider schema description.
enum DlmLifecyclePolicyUnshareIntervalUnit implements TerraformEnum {
  days('DAYS'),
  weeks('WEEKS'),
  months('MONTHS'),
  years('YEARS');

  const DlmLifecyclePolicyUnshareIntervalUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dlm_lifecycle_policy`.
final class AwsDlmLifecyclePolicy extends Resource {
  static const String tfType = 'aws_dlm_lifecycle_policy';

  AwsDlmLifecyclePolicy(
    super.localName, {
    TfArg<DlmLifecyclePolicyDefaultPolicy>? defaultPolicy,
    required TfArg<String> description,
    required RefTo<AwsIamRole> executionRoleArn,
    TfArg<String>? region,
    TfArg<DlmLifecyclePolicyState>? state,
    TfArg<Map<String, String>>? tags,
    required DlmLifecyclePolicyDetails policyDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_policy': ?defaultPolicy,
           'description': description,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'region': ?region,
           'state': ?state,
           'tags': ?tags,
           'policy_details': TfArg.literal(policyDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDlmLifecyclePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDlmLifecyclePolicy>`.
  RefTo<AwsDlmLifecyclePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_policy` attribute.
  TfRef<String> get defaultPolicy =>
      TfRef.attribute<String>(this, 'default_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
