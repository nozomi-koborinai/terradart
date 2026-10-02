// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_dlm_lifecycle_policy`.
const Set<String> _awsDlmLifecyclePolicySensitive = <String>{};

/// Dlm Lifecycle Policy Default enum for `default_policy`.
extension type const DlmLifecyclePolicyDefaultPolicy._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyDefaultPolicy.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyDefaultPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyDefaultPolicy.arg(TfArg<String> arg) : this._(arg);

  static const volume = DlmLifecyclePolicyDefaultPolicy._(
    TfArgLiteral('VOLUME'),
  );
  static const instance = DlmLifecyclePolicyDefaultPolicy._(
    TfArgLiteral('INSTANCE'),
  );

  static const List<DlmLifecyclePolicyDefaultPolicy> values = [
    volume,
    instance,
  ];
}

/// Dlm Lifecycle Policy enum for `state`.
extension type const DlmLifecyclePolicyState._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyState.variable(String name) : this._(TfArg.variable(name));
  DlmLifecyclePolicyState.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = DlmLifecyclePolicyState._(TfArgLiteral('ENABLED'));
  static const disabled = DlmLifecyclePolicyState._(TfArgLiteral('DISABLED'));

  static const List<DlmLifecyclePolicyState> values = [enabled, disabled];
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

  final DlmLifecyclePolicyLanguage? policyLanguage;

  final DlmLifecyclePolicyType? policyType;

  final List<DlmLifecyclePolicyResourceLocations>? resourceLocations;

  final DlmLifecyclePolicyResourceType? resourceType;

  final List<DlmLifecyclePolicyResourceTypes>? resourceTypes;

  final TfArg<num>? retainInterval;

  final TfArg<Map<String, String>>? targetTags;

  final DlmLifecyclePolicyAction? action;

  final DlmLifecyclePolicyEventSource? eventSource;

  final DlmLifecyclePolicyExclusions? exclusions;

  final DlmLifecyclePolicyParameters? parameters;

  final List<DlmLifecyclePolicySchedule>? schedule;

  @internal
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
extension type const DlmLifecyclePolicyLanguage._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyLanguage.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyLanguage.arg(TfArg<String> arg) : this._(arg);

  static const simplified = DlmLifecyclePolicyLanguage._(
    TfArgLiteral('SIMPLIFIED'),
  );
  static const standard = DlmLifecyclePolicyLanguage._(
    TfArgLiteral('STANDARD'),
  );

  static const List<DlmLifecyclePolicyLanguage> values = [simplified, standard];
}

/// `policy_type` — derived from the provider schema description.
extension type const DlmLifecyclePolicyType._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyType.variable(String name) : this._(TfArg.variable(name));
  DlmLifecyclePolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyType.arg(TfArg<String> arg) : this._(arg);

  static const ebsSnapshotManagement = DlmLifecyclePolicyType._(
    TfArgLiteral('EBS_SNAPSHOT_MANAGEMENT'),
  );
  static const imageManagement = DlmLifecyclePolicyType._(
    TfArgLiteral('IMAGE_MANAGEMENT'),
  );
  static const eventBasedPolicy = DlmLifecyclePolicyType._(
    TfArgLiteral('EVENT_BASED_POLICY'),
  );

  static const List<DlmLifecyclePolicyType> values = [
    ebsSnapshotManagement,
    imageManagement,
    eventBasedPolicy,
  ];
}

/// `resource_locations` — derived from the provider schema description.
extension type const DlmLifecyclePolicyResourceLocations._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyResourceLocations.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyResourceLocations.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyResourceLocations.arg(TfArg<String> arg)
    : this._(arg);

  static const cloud = DlmLifecyclePolicyResourceLocations._(
    TfArgLiteral('CLOUD'),
  );
  static const outpost = DlmLifecyclePolicyResourceLocations._(
    TfArgLiteral('OUTPOST'),
  );
  static const localZone = DlmLifecyclePolicyResourceLocations._(
    TfArgLiteral('LOCAL_ZONE'),
  );

  static const List<DlmLifecyclePolicyResourceLocations> values = [
    cloud,
    outpost,
    localZone,
  ];
}

/// `resource_type` — derived from the provider schema description.
extension type const DlmLifecyclePolicyResourceType._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyResourceType.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyResourceType.arg(TfArg<String> arg) : this._(arg);

  static const volume = DlmLifecyclePolicyResourceType._(
    TfArgLiteral('VOLUME'),
  );
  static const instance = DlmLifecyclePolicyResourceType._(
    TfArgLiteral('INSTANCE'),
  );

  static const List<DlmLifecyclePolicyResourceType> values = [volume, instance];
}

/// `resource_types` — derived from the provider schema description.
extension type const DlmLifecyclePolicyResourceTypes._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyResourceTypes.arg(TfArg<String> arg) : this._(arg);

  static const volume = DlmLifecyclePolicyResourceTypes._(
    TfArgLiteral('VOLUME'),
  );
  static const instance = DlmLifecyclePolicyResourceTypes._(
    TfArgLiteral('INSTANCE'),
  );

  static const List<DlmLifecyclePolicyResourceTypes> values = [
    volume,
    instance,
  ];
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

  @internal
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

  @internal
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

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit intervalUnit;

  @internal
  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'interval_unit': intervalUnit.toTfJson(),
  };
}

/// `interval_unit` — derived from the provider schema description.
extension type const DlmLifecyclePolicyDeprecateRuleIntervalUnit._(
  TfArg<String> _
) implements TfArg<String> {
  DlmLifecyclePolicyDeprecateRuleIntervalUnit.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyDeprecateRuleIntervalUnit.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyDeprecateRuleIntervalUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const days = DlmLifecyclePolicyDeprecateRuleIntervalUnit._(
    TfArgLiteral('DAYS'),
  );
  static const weeks = DlmLifecyclePolicyDeprecateRuleIntervalUnit._(
    TfArgLiteral('WEEKS'),
  );
  static const months = DlmLifecyclePolicyDeprecateRuleIntervalUnit._(
    TfArgLiteral('MONTHS'),
  );
  static const years = DlmLifecyclePolicyDeprecateRuleIntervalUnit._(
    TfArgLiteral('YEARS'),
  );

  static const List<DlmLifecyclePolicyDeprecateRuleIntervalUnit> values = [
    days,
    weeks,
    months,
    years,
  ];
}

/// Typed helper for the `policy_details.event_source` block of
/// `aws_dlm_lifecycle_policy` (derived from provider schema).
@immutable
final class DlmLifecyclePolicyEventSource {
  const DlmLifecyclePolicyEventSource({
    required this.type,
    required this.parameters,
  });

  final DlmLifecyclePolicyEventSourceType type;

  final DlmLifecyclePolicyEventSourceParameters parameters;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'parameters': parameters.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DlmLifecyclePolicyEventSourceType._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyEventSourceType.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyEventSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyEventSourceType.arg(TfArg<String> arg) : this._(arg);

  static const managedCwe = DlmLifecyclePolicyEventSourceType._(
    TfArgLiteral('MANAGED_CWE'),
  );

  static const List<DlmLifecyclePolicyEventSourceType> values = [managedCwe];
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

  final DlmLifecyclePolicyEventType eventType;

  final TfArg<List<String>> snapshotOwner;

  @internal
  Map<String, Object?> encode() => {
    'description_regex': descriptionRegex.toTfJson(),
    'event_type': eventType.toTfJson(),
    'snapshot_owner': snapshotOwner.toTfJson(),
  };
}

/// `event_type` — derived from the provider schema description.
extension type const DlmLifecyclePolicyEventType._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyEventType.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyEventType.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyEventType.arg(TfArg<String> arg) : this._(arg);

  static const sharesnapshot = DlmLifecyclePolicyEventType._(
    TfArgLiteral('shareSnapshot'),
  );

  static const List<DlmLifecyclePolicyEventType> values = [sharesnapshot];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit? intervalUnit;

  @internal
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

  final DlmLifecyclePolicyCreateRuleIntervalUnit? intervalUnit;

  final DlmLifecyclePolicyLocation? location;

  final TfArg<List<String>>? times;

  final DlmLifecyclePolicyScripts? scripts;

  @internal
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
extension type const DlmLifecyclePolicyCreateRuleIntervalUnit._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyCreateRuleIntervalUnit.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyCreateRuleIntervalUnit.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyCreateRuleIntervalUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const hours = DlmLifecyclePolicyCreateRuleIntervalUnit._(
    TfArgLiteral('HOURS'),
  );

  static const List<DlmLifecyclePolicyCreateRuleIntervalUnit> values = [hours];
}

/// `location` — derived from the provider schema description.
extension type const DlmLifecyclePolicyLocation._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyLocation.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyLocation.arg(TfArg<String> arg) : this._(arg);

  static const cloud = DlmLifecyclePolicyLocation._(TfArgLiteral('CLOUD'));
  static const outpostLocal = DlmLifecyclePolicyLocation._(
    TfArgLiteral('OUTPOST_LOCAL'),
  );
  static const localZone = DlmLifecyclePolicyLocation._(
    TfArgLiteral('LOCAL_ZONE'),
  );

  static const List<DlmLifecyclePolicyLocation> values = [
    cloud,
    outpostLocal,
    localZone,
  ];
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

  final DlmLifecyclePolicyExecutionHandlerService? executionHandlerService;

  final TfArg<num>? executionTimeout;

  final TfArg<num>? maximumRetryCount;

  final List<DlmLifecyclePolicyStages>? stages;

  @internal
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
extension type const DlmLifecyclePolicyExecutionHandlerService._(
  TfArg<String> _
) implements TfArg<String> {
  DlmLifecyclePolicyExecutionHandlerService.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyExecutionHandlerService.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyExecutionHandlerService.arg(TfArg<String> arg)
    : this._(arg);

  static const awsSystemsManager = DlmLifecyclePolicyExecutionHandlerService._(
    TfArgLiteral('AWS_SYSTEMS_MANAGER'),
  );

  static const List<DlmLifecyclePolicyExecutionHandlerService> values = [
    awsSystemsManager,
  ];
}

/// `stages` — derived from the provider schema description.
extension type const DlmLifecyclePolicyStages._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyStages.variable(String name) : this._(TfArg.variable(name));
  DlmLifecyclePolicyStages.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyStages.arg(TfArg<String> arg) : this._(arg);

  static const pre = DlmLifecyclePolicyStages._(TfArgLiteral('PRE'));
  static const post = DlmLifecyclePolicyStages._(TfArgLiteral('POST'));

  static const List<DlmLifecyclePolicyStages> values = [pre, post];
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

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit intervalUnit;

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit? intervalUnit;

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit? intervalUnit;

  @internal
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

  final DlmLifecyclePolicyDeprecateRuleIntervalUnit? intervalUnit;

  @internal
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

  final DlmLifecyclePolicyUnshareIntervalUnit? unshareIntervalUnit;

  @internal
  Map<String, Object?> encode() => {
    'target_accounts': targetAccounts.toTfJson(),
    'unshare_interval': ?unshareInterval?.toTfJson(),
    'unshare_interval_unit': ?unshareIntervalUnit?.toTfJson(),
  };
}

/// `unshare_interval_unit` — derived from the provider schema description.
extension type const DlmLifecyclePolicyUnshareIntervalUnit._(TfArg<String> _)
    implements TfArg<String> {
  DlmLifecyclePolicyUnshareIntervalUnit.variable(String name)
    : this._(TfArg.variable(name));
  DlmLifecyclePolicyUnshareIntervalUnit.expression(String template)
    : this._(TfArg.expression(template));
  const DlmLifecyclePolicyUnshareIntervalUnit.arg(TfArg<String> arg)
    : this._(arg);

  static const days = DlmLifecyclePolicyUnshareIntervalUnit._(
    TfArgLiteral('DAYS'),
  );
  static const weeks = DlmLifecyclePolicyUnshareIntervalUnit._(
    TfArgLiteral('WEEKS'),
  );
  static const months = DlmLifecyclePolicyUnshareIntervalUnit._(
    TfArgLiteral('MONTHS'),
  );
  static const years = DlmLifecyclePolicyUnshareIntervalUnit._(
    TfArgLiteral('YEARS'),
  );

  static const List<DlmLifecyclePolicyUnshareIntervalUnit> values = [
    days,
    weeks,
    months,
    years,
  ];
}

/// Factory wrapper for `aws_dlm_lifecycle_policy`.
final class AwsDlmLifecyclePolicy extends Resource {
  static const String tfType = 'aws_dlm_lifecycle_policy';

  AwsDlmLifecyclePolicy(
    super.localName, {
    DlmLifecyclePolicyDefaultPolicy? defaultPolicy,
    required TfArg<String> description,
    required RefTo<AwsIamRole> executionRoleArn,
    TfArg<String>? region,
    DlmLifecyclePolicyState? state,
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
