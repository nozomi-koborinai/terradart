// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_os_config_patch_deployment`.
const Set<String> _googleOsConfigPatchDeploymentSensitive = <String>{};

/// Exactly one of `one_time_schedule`, `recurring_schedule` on `google_os_config_patch_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.oneTimeSchedule(...)`.
sealed class OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentSchedule();

  /// Sets `one_time_schedule`.
  const factory OsConfigPatchDeploymentSchedule.oneTimeSchedule(
    OsConfigPatchDeploymentOneTimeSchedule oneTimeSchedule,
  ) = OsConfigPatchDeploymentOneTimeScheduleChoice;

  /// Sets `recurring_schedule`.
  const factory OsConfigPatchDeploymentSchedule.recurringSchedule(
    OsConfigPatchDeploymentRecurringSchedule recurringSchedule,
  ) = OsConfigPatchDeploymentRecurringScheduleChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [OsConfigPatchDeploymentSchedule.oneTimeSchedule] choice: sets `one_time_schedule`.
final class OsConfigPatchDeploymentOneTimeScheduleChoice
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentOneTimeScheduleChoice(this.oneTimeSchedule);

  final OsConfigPatchDeploymentOneTimeSchedule oneTimeSchedule;

  @override
  String get blockKey => 'one_time_schedule';

  @override
  Map<String, Object?> encode() => {
    'one_time_schedule': oneTimeSchedule.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'one_time_schedule': TfArg.literal(oneTimeSchedule.encode()),
  };
}

/// The [OsConfigPatchDeploymentSchedule.recurringSchedule] choice: sets `recurring_schedule`.
final class OsConfigPatchDeploymentRecurringScheduleChoice
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentRecurringScheduleChoice(this.recurringSchedule);

  final OsConfigPatchDeploymentRecurringSchedule recurringSchedule;

  @override
  String get blockKey => 'recurring_schedule';

  @override
  Map<String, Object?> encode() => {
    'recurring_schedule': recurringSchedule.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'recurring_schedule': TfArg.literal(recurringSchedule.encode()),
  };
}

/// Typed helper for the `instance_filter` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentInstanceFilter {
  const OsConfigPatchDeploymentInstanceFilter({
    this.all,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
    this.groupLabels,
  });

  final TfArg<bool>? all;

  final TfArg<List<String>>? instanceNamePrefixes;

  final TfArg<List<String>>? instances;

  final TfArg<List<String>>? zones;

  final List<OsConfigPatchDeploymentGroupLabels>? groupLabels;

  Map<String, Object?> encode() => {
    'all': ?all?.toTfJson(),
    'instance_name_prefixes': ?instanceNamePrefixes?.toTfJson(),
    'instances': ?instances?.toTfJson(),
    'zones': ?zones?.toTfJson(),
    if (groupLabels != null)
      'group_labels': [for (final e in groupLabels!) e.encode()],
  };
}

/// Typed helper for the `instance_filter.group_labels` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentGroupLabels {
  const OsConfigPatchDeploymentGroupLabels({required this.labels});

  final TfArg<Map<String, String>> labels;

  Map<String, Object?> encode() => {'labels': labels.toTfJson()};
}

/// Typed helper for the `one_time_schedule` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentOneTimeSchedule {
  const OsConfigPatchDeploymentOneTimeSchedule({required this.executeTime});

  final TfArg<String> executeTime;

  Map<String, Object?> encode() => {'execute_time': executeTime.toTfJson()};
}

/// Typed helper for the `patch_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfig {
  const OsConfigPatchDeploymentPatchConfig({
    this.migInstancesAllowed,
    this.rebootConfig,
    this.skipUnpatchableVms,
    this.apt,
    this.goo,
    this.postStep,
    this.preStep,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  final TfArg<bool>? migInstancesAllowed;

  final TfArg<OsConfigPatchDeploymentRebootConfig>? rebootConfig;

  final TfArg<bool>? skipUnpatchableVms;

  final OsConfigPatchDeploymentApt? apt;

  final OsConfigPatchDeploymentGoo? goo;

  final OsConfigPatchDeploymentPostStep? postStep;

  final OsConfigPatchDeploymentPreStep? preStep;

  final OsConfigPatchDeploymentWindowsUpdate? windowsUpdate;

  final OsConfigPatchDeploymentYum? yum;

  final OsConfigPatchDeploymentZypper? zypper;

  Map<String, Object?> encode() => {
    'mig_instances_allowed': ?migInstancesAllowed?.toTfJson(),
    'reboot_config': ?rebootConfig?.toTfJson(),
    'skip_unpatchable_vms': ?skipUnpatchableVms?.toTfJson(),
    'apt': ?apt?.encode(),
    'goo': ?goo?.encode(),
    'post_step': ?postStep?.encode(),
    'pre_step': ?preStep?.encode(),
    'windows_update': ?windowsUpdate?.encode(),
    'yum': ?yum?.encode(),
    'zypper': ?zypper?.encode(),
  };
}

/// `reboot_config` — derived from the provider schema description.
enum OsConfigPatchDeploymentRebootConfig implements TerraformEnum {
  defaultCase('DEFAULT'),
  always('ALWAYS'),
  never('NEVER');

  const OsConfigPatchDeploymentRebootConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.apt` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentApt {
  const OsConfigPatchDeploymentApt({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? exclusivePackages;

  final TfArg<OsConfigPatchDeploymentType>? type;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.toTfJson(),
    'exclusive_packages': ?exclusivePackages?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum OsConfigPatchDeploymentType implements TerraformEnum {
  dist('DIST'),
  upgrade('UPGRADE');

  const OsConfigPatchDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.goo` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentGoo {
  const OsConfigPatchDeploymentGoo({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `patch_config.post_step` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPostStep {
  const OsConfigPatchDeploymentPostStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  final OsConfigPatchDeploymentLinuxExecStepConfig? linuxExecStepConfig;

  final OsConfigPatchDeploymentWindowsExecStepConfig? windowsExecStepConfig;

  Map<String, Object?> encode() => {
    'linux_exec_step_config': ?linuxExecStepConfig?.encode(),
    'windows_exec_step_config': ?windowsExecStepConfig?.encode(),
  };
}

/// Typed helper for the `patch_config.post_step.linux_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigPatchDeploymentLinuxExecStepConfig {
  const OsConfigPatchDeploymentLinuxExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    required this.script,
  });

  final TfArg<List<num>>? allowedSuccessCodes;

  final TfArg<OsConfigPatchDeploymentInterpreter>? interpreter;

  final OsConfigPatchDeploymentLinuxExecStepConfigScript script;

  Map<String, Object?> encode() => {
    'allowed_success_codes': ?allowedSuccessCodes?.toTfJson(),
    'interpreter': ?interpreter?.toTfJson(),
    ...script.encode(),
  };
}

/// Exactly one of `local_path`, `gcs_object` on the `patch_config.post_step.linux_exec_step_config` block of `google_os_config_patch_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.localPath(...)`.
sealed class OsConfigPatchDeploymentLinuxExecStepConfigScript {
  const OsConfigPatchDeploymentLinuxExecStepConfigScript();

  /// Sets `local_path`.
  const factory OsConfigPatchDeploymentLinuxExecStepConfigScript.localPath(
    TfArg<String> localPath,
  ) = OsConfigPatchDeploymentLinuxExecStepConfigScriptLocalPath;

  /// Sets `gcs_object`.
  const factory OsConfigPatchDeploymentLinuxExecStepConfigScript.gcsObject(
    OsConfigPatchDeploymentGcsObject gcsObject,
  ) = OsConfigPatchDeploymentLinuxExecStepConfigScriptGcsObject;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [OsConfigPatchDeploymentLinuxExecStepConfigScript.localPath] choice: sets `local_path`.
final class OsConfigPatchDeploymentLinuxExecStepConfigScriptLocalPath
    extends OsConfigPatchDeploymentLinuxExecStepConfigScript {
  const OsConfigPatchDeploymentLinuxExecStepConfigScriptLocalPath(
    this.localPath,
  );

  final TfArg<String> localPath;

  @override
  String get blockKey => 'local_path';

  @override
  Map<String, Object?> encode() => {'local_path': localPath.toTfJson()};
}

/// The [OsConfigPatchDeploymentLinuxExecStepConfigScript.gcsObject] choice: sets `gcs_object`.
final class OsConfigPatchDeploymentLinuxExecStepConfigScriptGcsObject
    extends OsConfigPatchDeploymentLinuxExecStepConfigScript {
  const OsConfigPatchDeploymentLinuxExecStepConfigScriptGcsObject(
    this.gcsObject,
  );

  final OsConfigPatchDeploymentGcsObject gcsObject;

  @override
  String get blockKey => 'gcs_object';

  @override
  Map<String, Object?> encode() => {'gcs_object': gcsObject.encode()};
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigPatchDeploymentInterpreter implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigPatchDeploymentInterpreter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.post_step.linux_exec_step_config.gcs_object` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigPatchDeploymentGcsObject {
  const OsConfigPatchDeploymentGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final TfArg<String> generationNumber;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    'generation_number': generationNumber.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `patch_config.post_step.windows_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class OsConfigPatchDeploymentWindowsExecStepConfig {
  const OsConfigPatchDeploymentWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    required this.script,
  });

  final TfArg<List<num>>? allowedSuccessCodes;

  final TfArg<OsConfigPatchDeploymentInterpreter>? interpreter;

  final OsConfigPatchDeploymentWindowsExecStepConfigScript script;

  Map<String, Object?> encode() => {
    'allowed_success_codes': ?allowedSuccessCodes?.toTfJson(),
    'interpreter': ?interpreter?.toTfJson(),
    ...script.encode(),
  };
}

/// Exactly one of `local_path`, `gcs_object` on the `patch_config.post_step.windows_exec_step_config` block of `google_os_config_patch_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.localPath(...)`.
sealed class OsConfigPatchDeploymentWindowsExecStepConfigScript {
  const OsConfigPatchDeploymentWindowsExecStepConfigScript();

  /// Sets `local_path`.
  const factory OsConfigPatchDeploymentWindowsExecStepConfigScript.localPath(
    TfArg<String> localPath,
  ) = OsConfigPatchDeploymentWindowsExecStepConfigScriptLocalPath;

  /// Sets `gcs_object`.
  const factory OsConfigPatchDeploymentWindowsExecStepConfigScript.gcsObject(
    OsConfigPatchDeploymentGcsObject gcsObject,
  ) = OsConfigPatchDeploymentWindowsExecStepConfigScriptGcsObject;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [OsConfigPatchDeploymentWindowsExecStepConfigScript.localPath] choice: sets `local_path`.
final class OsConfigPatchDeploymentWindowsExecStepConfigScriptLocalPath
    extends OsConfigPatchDeploymentWindowsExecStepConfigScript {
  const OsConfigPatchDeploymentWindowsExecStepConfigScriptLocalPath(
    this.localPath,
  );

  final TfArg<String> localPath;

  @override
  String get blockKey => 'local_path';

  @override
  Map<String, Object?> encode() => {'local_path': localPath.toTfJson()};
}

/// The [OsConfigPatchDeploymentWindowsExecStepConfigScript.gcsObject] choice: sets `gcs_object`.
final class OsConfigPatchDeploymentWindowsExecStepConfigScriptGcsObject
    extends OsConfigPatchDeploymentWindowsExecStepConfigScript {
  const OsConfigPatchDeploymentWindowsExecStepConfigScriptGcsObject(
    this.gcsObject,
  );

  final OsConfigPatchDeploymentGcsObject gcsObject;

  @override
  String get blockKey => 'gcs_object';

  @override
  Map<String, Object?> encode() => {'gcs_object': gcsObject.encode()};
}

/// Typed helper for the `patch_config.pre_step` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPreStep {
  const OsConfigPatchDeploymentPreStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  final OsConfigPatchDeploymentLinuxExecStepConfig? linuxExecStepConfig;

  final OsConfigPatchDeploymentWindowsExecStepConfig? windowsExecStepConfig;

  Map<String, Object?> encode() => {
    'linux_exec_step_config': ?linuxExecStepConfig?.encode(),
    'windows_exec_step_config': ?windowsExecStepConfig?.encode(),
  };
}

/// Typed helper for the `patch_config.windows_update` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentWindowsUpdate {
  const OsConfigPatchDeploymentWindowsUpdate({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  final List<TfArg<OsConfigPatchDeploymentClassifications>>? classifications;

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? exclusivePatches;

  Map<String, Object?> encode() => {
    if (classifications != null)
      'classifications': [for (final e in classifications!) e.toTfJson()],
    'excludes': ?excludes?.toTfJson(),
    'exclusive_patches': ?exclusivePatches?.toTfJson(),
  };
}

/// `classifications` — derived from the provider schema description.
enum OsConfigPatchDeploymentClassifications implements TerraformEnum {
  critical('CRITICAL'),
  security('SECURITY'),
  definition('DEFINITION'),
  driver('DRIVER'),
  featurePack('FEATURE_PACK'),
  servicePack('SERVICE_PACK'),
  tool('TOOL'),
  updateRollup('UPDATE_ROLLUP'),
  update('UPDATE');

  const OsConfigPatchDeploymentClassifications(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.yum` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentYum {
  const OsConfigPatchDeploymentYum({
    this.excludes,
    this.exclusivePackages,
    this.minimal,
    this.security,
  });

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? exclusivePackages;

  final TfArg<bool>? minimal;

  final TfArg<bool>? security;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.toTfJson(),
    'exclusive_packages': ?exclusivePackages?.toTfJson(),
    'minimal': ?minimal?.toTfJson(),
    'security': ?security?.toTfJson(),
  };
}

/// Typed helper for the `patch_config.zypper` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentZypper {
  const OsConfigPatchDeploymentZypper({
    this.categories,
    this.excludes,
    this.exclusivePatches,
    this.severities,
    this.withOptional,
    this.withUpdate,
  });

  final TfArg<List<String>>? categories;

  final TfArg<List<String>>? excludes;

  final TfArg<List<String>>? exclusivePatches;

  final TfArg<List<String>>? severities;

  final TfArg<bool>? withOptional;

  final TfArg<bool>? withUpdate;

  Map<String, Object?> encode() => {
    'categories': ?categories?.toTfJson(),
    'excludes': ?excludes?.toTfJson(),
    'exclusive_patches': ?exclusivePatches?.toTfJson(),
    'severities': ?severities?.toTfJson(),
    'with_optional': ?withOptional?.toTfJson(),
    'with_update': ?withUpdate?.toTfJson(),
  };
}

/// Typed helper for the `recurring_schedule` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentRecurringSchedule {
  const OsConfigPatchDeploymentRecurringSchedule({
    this.endTime,
    this.startTime,
    this.monthly,
    required this.timeOfDay,
    required this.timeZone,
    this.weekly,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  final OsConfigPatchDeploymentMonthly? monthly;

  final OsConfigPatchDeploymentTimeOfDay timeOfDay;

  final OsConfigPatchDeploymentTimeZone timeZone;

  final OsConfigPatchDeploymentWeekly? weekly;

  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'monthly': ?monthly?.encode(),
    'time_of_day': timeOfDay.encode(),
    'time_zone': timeZone.encode(),
    'weekly': ?weekly?.encode(),
  };
}

/// Exactly one of `week_day_of_month`, `month_day` on the `recurring_schedule.monthly` block of `google_os_config_patch_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.weekDayOfMonth(...)`.
sealed class OsConfigPatchDeploymentMonthly {
  const OsConfigPatchDeploymentMonthly();

  /// Sets `week_day_of_month`.
  const factory OsConfigPatchDeploymentMonthly.weekDayOfMonth(
    OsConfigPatchDeploymentWeekDayOfMonth weekDayOfMonth,
  ) = OsConfigPatchDeploymentMonthlyWeekDayOfMonth;

  /// Sets `month_day`.
  const factory OsConfigPatchDeploymentMonthly.monthDay(TfArg<num> monthDay) =
      OsConfigPatchDeploymentMonthlyMonthDay;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [OsConfigPatchDeploymentMonthly.weekDayOfMonth] choice: sets `week_day_of_month`.
final class OsConfigPatchDeploymentMonthlyWeekDayOfMonth
    extends OsConfigPatchDeploymentMonthly {
  const OsConfigPatchDeploymentMonthlyWeekDayOfMonth(this.weekDayOfMonth);

  final OsConfigPatchDeploymentWeekDayOfMonth weekDayOfMonth;

  @override
  String get blockKey => 'week_day_of_month';

  @override
  Map<String, Object?> encode() => {
    'week_day_of_month': weekDayOfMonth.encode(),
  };
}

/// The [OsConfigPatchDeploymentMonthly.monthDay] choice: sets `month_day`.
final class OsConfigPatchDeploymentMonthlyMonthDay
    extends OsConfigPatchDeploymentMonthly {
  const OsConfigPatchDeploymentMonthlyMonthDay(this.monthDay);

  final TfArg<num> monthDay;

  @override
  String get blockKey => 'month_day';

  @override
  Map<String, Object?> encode() => {'month_day': monthDay.toTfJson()};
}

/// Typed helper for the `recurring_schedule.monthly.week_day_of_month` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentWeekDayOfMonth {
  const OsConfigPatchDeploymentWeekDayOfMonth({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  final TfArg<OsConfigPatchDeploymentDayOfWeek> dayOfWeek;

  final TfArg<num>? dayOffset;

  final TfArg<num> weekOrdinal;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'day_offset': ?dayOffset?.toTfJson(),
    'week_ordinal': weekOrdinal.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum OsConfigPatchDeploymentDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const OsConfigPatchDeploymentDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `recurring_schedule.time_of_day` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentTimeOfDay {
  const OsConfigPatchDeploymentTimeOfDay({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `recurring_schedule.time_zone` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentTimeZone {
  const OsConfigPatchDeploymentTimeZone({required this.id, this.version});

  final TfArg<String> id;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `recurring_schedule.weekly` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentWeekly {
  const OsConfigPatchDeploymentWeekly({required this.dayOfWeek});

  final TfArg<OsConfigPatchDeploymentDayOfWeek> dayOfWeek;

  Map<String, Object?> encode() => {'day_of_week': dayOfWeek.toTfJson()};
}

/// Typed helper for the `rollout` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentRollout {
  const OsConfigPatchDeploymentRollout({
    required this.mode,
    required this.disruptionBudget,
  });

  final TfArg<OsConfigPatchDeploymentMode> mode;

  final OsConfigPatchDeploymentDisruptionBudget disruptionBudget;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum OsConfigPatchDeploymentMode implements TerraformEnum {
  zoneByZone('ZONE_BY_ZONE'),
  concurrentZones('CONCURRENT_ZONES');

  const OsConfigPatchDeploymentMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `fixed`, `percentage` on the `rollout.disruption_budget` block of `google_os_config_patch_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.fixed(...)`.
sealed class OsConfigPatchDeploymentDisruptionBudget {
  const OsConfigPatchDeploymentDisruptionBudget();

  /// Sets `fixed`.
  const factory OsConfigPatchDeploymentDisruptionBudget.fixed(
    TfArg<num> fixed,
  ) = OsConfigPatchDeploymentDisruptionBudgetFixed;

  /// Sets `percentage`.
  const factory OsConfigPatchDeploymentDisruptionBudget.percentage(
    TfArg<num> percentage,
  ) = OsConfigPatchDeploymentDisruptionBudgetPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [OsConfigPatchDeploymentDisruptionBudget.fixed] choice: sets `fixed`.
final class OsConfigPatchDeploymentDisruptionBudgetFixed
    extends OsConfigPatchDeploymentDisruptionBudget {
  const OsConfigPatchDeploymentDisruptionBudgetFixed(this.fixed);

  final TfArg<num> fixed;

  @override
  String get blockKey => 'fixed';

  @override
  Map<String, Object?> encode() => {'fixed': fixed.toTfJson()};
}

/// The [OsConfigPatchDeploymentDisruptionBudget.percentage] choice: sets `percentage`.
final class OsConfigPatchDeploymentDisruptionBudgetPercentage
    extends OsConfigPatchDeploymentDisruptionBudget {
  const OsConfigPatchDeploymentDisruptionBudgetPercentage(this.percentage);

  final TfArg<num> percentage;

  @override
  String get blockKey => 'percentage';

  @override
  Map<String, Object?> encode() => {'percentage': percentage.toTfJson()};
}

/// Factory wrapper for `google_os_config_patch_deployment`.
///
/// Patch deployments are configurations that individual patch jobs use to
/// complete a patch. These configurations include instance filter, package
/// repository settings, and a schedule.
///
/// OS Config patch deployment — schedules OS patch jobs against a filtered
/// set of VM instances (one-time or recurring).
///
/// Enable `osconfig.googleapis.com` before apply. Choose exactly one
/// schedule via [OsConfigPatchDeploymentSchedule]:
/// - [OsConfigPatchDeploymentOneTimeSchedule]
/// - [OsConfigPatchDeploymentRecurringSchedule]
///
/// Example:
/// ```dart
/// GoogleOsConfigPatchDeployment(
///   localName: 'monthly_patches',
///   patchDeploymentId: TfArg.literal('monthly-patches'),
///   description: TfArg.literal('Monthly security patches'),
///   instanceFilter: OsConfigPatchDeploymentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   patchConfig: OsConfigPatchDeploymentPatchConfig(
///     migInstancesAllowed: TfArg.literal(true),
///   ),
///   schedule: .oneTimeSchedule(
///     .new(
///       executeTime: .literal('2026-07-01T02:00:00Z'),
///     ),
///   ),
/// );
/// ```
final class GoogleOsConfigPatchDeployment extends Resource {
  static const String tfType = 'google_os_config_patch_deployment';

  GoogleOsConfigPatchDeployment({
    required super.localName,
    required TfArg<String> patchDeploymentId,
    TfArg<String>? description,
    required OsConfigPatchDeploymentInstanceFilter instanceFilter,
    OsConfigPatchDeploymentPatchConfig? patchConfig,
    required OsConfigPatchDeploymentSchedule schedule,
    TfArg<String>? duration,
    OsConfigPatchDeploymentRollout? rollout,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'patch_deployment_id': patchDeploymentId,
           'description': ?description,
           'instance_filter': TfArg.literal(instanceFilter.encode()),
           if (patchConfig != null)
             'patch_config': TfArg.literal(patchConfig.encode()),
           'duration': ?duration,
           if (rollout != null) 'rollout': TfArg.literal(rollout.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           ...schedule.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigPatchDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOsConfigPatchDeployment>`.
  RefTo<GoogleOsConfigPatchDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_execute_time` attribute.
  TfRef<String> get lastExecuteTime =>
      TfRef.attribute<String>(this, 'last_execute_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `patch_deployment_id` attribute.
  TfRef<String> get patchDeploymentId =>
      TfRef.attribute<String>(this, 'patch_deployment_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
