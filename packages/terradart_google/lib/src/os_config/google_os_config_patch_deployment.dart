// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_patch_deployment`.
const Set<String> _googleOsConfigPatchDeploymentSensitive = <String>{};

// ===========================================================================
// OsConfigPatchDeploymentSchedule — sealed (OneTime | Recurring)
// ===========================================================================

/// Choice of patch schedule. Sealed so exactly one of
/// `one_time_schedule` / `recurring_schedule` is emitted.
sealed class OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentSchedule();

  String get blockKey;

  List<Map<String, Object?>> encode();
}

/// `one_time_schedule` block — run the patch job once at [executeTime].
@immutable
final class OsConfigPatchDeploymentOneTimeSchedule
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentOneTimeSchedule({required this.executeTime});

  final TfArg<String> executeTime;

  @override
  String get blockKey => 'one_time_schedule';

  @override
  List<Map<String, Object?>> encode() => [
    {'execute_time': executeTime.toTfJson()},
  ];
}

/// `recurring_schedule` block — run patch jobs on a cadence.
@immutable
final class OsConfigPatchDeploymentRecurringSchedule
    extends OsConfigPatchDeploymentSchedule {
  const OsConfigPatchDeploymentRecurringSchedule({
    required this.timeZone,
    this.startTime,
    this.endTime,
    this.timeOfDay,
    this.weekly,
    this.monthly,
  });

  final OsConfigPatchDeploymentRecurringScheduleTimeZone timeZone;
  final TfArg<String>? startTime;
  final TfArg<String>? endTime;
  final OsConfigPatchDeploymentRecurringScheduleTimeOfDay? timeOfDay;
  final OsConfigPatchDeploymentRecurringScheduleWeekly? weekly;
  final OsConfigPatchDeploymentRecurringScheduleMonthly? monthly;

  @override
  String get blockKey => 'recurring_schedule';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'time_zone': [timeZone.encode()],
      if (startTime != null) 'start_time': startTime!.toTfJson(),
      if (endTime != null) 'end_time': endTime!.toTfJson(),
      if (timeOfDay != null) 'time_of_day': [timeOfDay!.encode()],
      if (weekly != null) 'weekly': [weekly!.encode()],
      if (monthly != null) 'monthly': [monthly!.encode()],
    },
  ];
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleTimeZone {
  const OsConfigPatchDeploymentRecurringScheduleTimeZone({
    required this.id,
    this.version,
  });

  final TfArg<String> id;
  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleTimeOfDay {
  const OsConfigPatchDeploymentRecurringScheduleTimeOfDay({
    required this.hours,
    required this.minutes,
    required this.seconds,
    required this.nanos,
  });

  final TfArg<num> hours;
  final TfArg<num> minutes;
  final TfArg<num> seconds;
  final TfArg<num> nanos;

  Map<String, Object?> encode() => {
    'hours': hours.toTfJson(),
    'minutes': minutes.toTfJson(),
    'seconds': seconds.toTfJson(),
    'nanos': nanos.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleWeekly {
  const OsConfigPatchDeploymentRecurringScheduleWeekly({
    required this.dayOfWeek,
  });

  final OsConfigPatchDeploymentDayOfWeek dayOfWeek;

  Map<String, Object?> encode() => {'day_of_week': dayOfWeek.terraformValue};
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleMonthly {
  const OsConfigPatchDeploymentRecurringScheduleMonthly.weekDayOfMonth({
    required this.weekDayOfMonth,
  }) : monthDay = null;

  const OsConfigPatchDeploymentRecurringScheduleMonthly.monthDay({
    required this.monthDay,
  }) : weekDayOfMonth = null;

  final OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth?
  weekDayOfMonth;
  final TfArg<num>? monthDay;

  Map<String, Object?> encode() => {
    if (weekDayOfMonth != null) 'week_day_of_month': [weekDayOfMonth!.encode()],
    if (monthDay != null) 'month_day': monthDay!.toTfJson(),
  };
}

@immutable
final class OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth {
  const OsConfigPatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth({
    required this.weekOfMonth,
    required this.dayOfWeek,
  });

  final TfArg<num> weekOfMonth;
  final OsConfigPatchDeploymentDayOfWeek dayOfWeek;

  Map<String, Object?> encode() => {
    'week_of_month': weekOfMonth.toTfJson(),
    'day_of_week': dayOfWeek.terraformValue,
  };
}

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

  final TfArg<List<Object?>>? instanceNamePrefixes;

  final TfArg<List<Object?>>? instances;

  final TfArg<List<Object?>>? zones;

  final List<OsConfigPatchDeploymentInstanceFilterGroupLabels>? groupLabels;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (instanceNamePrefixes != null)
      'instance_name_prefixes': instanceNamePrefixes!.toTfJson(),
    if (instances != null) 'instances': instances!.toTfJson(),
    if (zones != null) 'zones': zones!.toTfJson(),
    if (groupLabels != null)
      'group_labels': [for (final e in groupLabels!) e.encode()],
  };
}

/// Typed helper for the `instance_filter.group_labels` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentInstanceFilterGroupLabels {
  const OsConfigPatchDeploymentInstanceFilterGroupLabels({
    required this.labels,
  });

  final TfArg<Map<String, String>> labels;

  Map<String, Object?> encode() => {'labels': labels.toTfJson()};
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

  final TfArg<OsConfigPatchDeploymentPatchConfigRebootConfig>? rebootConfig;

  final TfArg<bool>? skipUnpatchableVms;

  final OsConfigPatchDeploymentPatchConfigApt? apt;

  final OsConfigPatchDeploymentPatchConfigGoo? goo;

  final OsConfigPatchDeploymentPatchConfigPostStep? postStep;

  final OsConfigPatchDeploymentPatchConfigPreStep? preStep;

  final OsConfigPatchDeploymentPatchConfigWindowsUpdate? windowsUpdate;

  final OsConfigPatchDeploymentPatchConfigYum? yum;

  final OsConfigPatchDeploymentPatchConfigZypper? zypper;

  Map<String, Object?> encode() => {
    if (migInstancesAllowed != null)
      'mig_instances_allowed': migInstancesAllowed!.toTfJson(),
    if (rebootConfig != null) 'reboot_config': rebootConfig!.toTfJson(),
    if (skipUnpatchableVms != null)
      'skip_unpatchable_vms': skipUnpatchableVms!.toTfJson(),
    if (apt != null) 'apt': apt!.encode(),
    if (goo != null) 'goo': goo!.encode(),
    if (postStep != null) 'post_step': postStep!.encode(),
    if (preStep != null) 'pre_step': preStep!.encode(),
    if (windowsUpdate != null) 'windows_update': windowsUpdate!.encode(),
    if (yum != null) 'yum': yum!.encode(),
    if (zypper != null) 'zypper': zypper!.encode(),
  };
}

/// `reboot_config` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigRebootConfig implements TerraformEnum {
  defaultCase('DEFAULT'),
  always('ALWAYS'),
  never('NEVER');

  const OsConfigPatchDeploymentPatchConfigRebootConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.apt` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigApt {
  const OsConfigPatchDeploymentPatchConfigApt({
    this.excludes,
    this.exclusivePackages,
    this.type,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? exclusivePackages;

  final TfArg<OsConfigPatchDeploymentPatchConfigAptType>? type;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (exclusivePackages != null)
      'exclusive_packages': exclusivePackages!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigAptType implements TerraformEnum {
  dist('DIST'),
  upgrade('UPGRADE');

  const OsConfigPatchDeploymentPatchConfigAptType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.goo` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigGoo {
  const OsConfigPatchDeploymentPatchConfigGoo({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `patch_config.post_step` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPostStep {
  const OsConfigPatchDeploymentPatchConfigPostStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  final OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfig?
  linuxExecStepConfig;

  final OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfig?
  windowsExecStepConfig;

  Map<String, Object?> encode() => {
    if (linuxExecStepConfig != null)
      'linux_exec_step_config': linuxExecStepConfig!.encode(),
    if (windowsExecStepConfig != null)
      'windows_exec_step_config': windowsExecStepConfig!.encode(),
  };
}

/// Typed helper for the `patch_config.post_step.linux_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfig {
  const OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    this.localPath,
    this.gcsObject,
  });

  final TfArg<List<Object?>>? allowedSuccessCodes;

  final TfArg<
    OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigInterpreter
  >?
  interpreter;

  final TfArg<String>? localPath;

  final OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObject?
  gcsObject;

  Map<String, Object?> encode() => {
    if (allowedSuccessCodes != null)
      'allowed_success_codes': allowedSuccessCodes!.toTfJson(),
    if (interpreter != null) 'interpreter': interpreter!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcsObject != null) 'gcs_object': gcsObject!.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.post_step.linux_exec_step_config.gcs_object` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObject {
  const OsConfigPatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String> generationNumber;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'generation_number': generationNumber.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `patch_config.post_step.windows_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfig {
  const OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    this.localPath,
    this.gcsObject,
  });

  final TfArg<List<Object?>>? allowedSuccessCodes;

  final TfArg<
    OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigInterpreter
  >?
  interpreter;

  final TfArg<String>? localPath;

  final OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject?
  gcsObject;

  Map<String, Object?> encode() => {
    if (allowedSuccessCodes != null)
      'allowed_success_codes': allowedSuccessCodes!.toTfJson(),
    if (interpreter != null) 'interpreter': interpreter!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcsObject != null) 'gcs_object': gcsObject!.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.post_step.windows_exec_step_config.gcs_object` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject {
  const OsConfigPatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String> generationNumber;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'generation_number': generationNumber.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `patch_config.pre_step` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPreStep {
  const OsConfigPatchDeploymentPatchConfigPreStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  final OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfig?
  linuxExecStepConfig;

  final OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfig?
  windowsExecStepConfig;

  Map<String, Object?> encode() => {
    if (linuxExecStepConfig != null)
      'linux_exec_step_config': linuxExecStepConfig!.encode(),
    if (windowsExecStepConfig != null)
      'windows_exec_step_config': windowsExecStepConfig!.encode(),
  };
}

/// Typed helper for the `patch_config.pre_step.linux_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfig {
  const OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    this.localPath,
    this.gcsObject,
  });

  final TfArg<List<Object?>>? allowedSuccessCodes;

  final TfArg<
    OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigInterpreter
  >?
  interpreter;

  final TfArg<String>? localPath;

  final OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigGcsObject?
  gcsObject;

  Map<String, Object?> encode() => {
    if (allowedSuccessCodes != null)
      'allowed_success_codes': allowedSuccessCodes!.toTfJson(),
    if (interpreter != null) 'interpreter': interpreter!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcsObject != null) 'gcs_object': gcsObject!.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.pre_step.linux_exec_step_config.gcs_object` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigGcsObject {
  const OsConfigPatchDeploymentPatchConfigPreStepLinuxExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String> generationNumber;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'generation_number': generationNumber.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `patch_config.pre_step.windows_exec_step_config` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfig {
  const OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.interpreter,
    this.localPath,
    this.gcsObject,
  });

  final TfArg<List<Object?>>? allowedSuccessCodes;

  final TfArg<
    OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigInterpreter
  >?
  interpreter;

  final TfArg<String>? localPath;

  final OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject?
  gcsObject;

  Map<String, Object?> encode() => {
    if (allowedSuccessCodes != null)
      'allowed_success_codes': allowedSuccessCodes!.toTfJson(),
    if (interpreter != null) 'interpreter': interpreter!.toTfJson(),
    if (localPath != null) 'local_path': localPath!.toTfJson(),
    if (gcsObject != null) 'gcs_object': gcsObject!.encode(),
  };
}

/// `interpreter` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigInterpreter
    implements TerraformEnum {
  shell('SHELL'),
  powershell('POWERSHELL');

  const OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigInterpreter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.pre_step.windows_exec_step_config.gcs_object` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject {
  const OsConfigPatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  final TfArg<String> bucket;

  final TfArg<String> generationNumber;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    'generation_number': generationNumber.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `patch_config.windows_update` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigWindowsUpdate {
  const OsConfigPatchDeploymentPatchConfigWindowsUpdate({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  final List<
    TfArg<OsConfigPatchDeploymentPatchConfigWindowsUpdateClassifications>
  >?
  classifications;

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? exclusivePatches;

  Map<String, Object?> encode() => {
    if (classifications != null)
      'classifications': [for (final e in classifications!) e.toTfJson()],
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (exclusivePatches != null)
      'exclusive_patches': exclusivePatches!.toTfJson(),
  };
}

/// `classifications` — derived from the provider schema description.
enum OsConfigPatchDeploymentPatchConfigWindowsUpdateClassifications
    implements TerraformEnum {
  critical('CRITICAL'),
  security('SECURITY'),
  definition('DEFINITION'),
  driver('DRIVER'),
  featurePack('FEATURE_PACK'),
  servicePack('SERVICE_PACK'),
  tool('TOOL'),
  updateRollup('UPDATE_ROLLUP'),
  update('UPDATE');

  const OsConfigPatchDeploymentPatchConfigWindowsUpdateClassifications(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `patch_config.yum` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigYum {
  const OsConfigPatchDeploymentPatchConfigYum({
    this.excludes,
    this.exclusivePackages,
    this.minimal,
    this.security,
  });

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? exclusivePackages;

  final TfArg<bool>? minimal;

  final TfArg<bool>? security;

  Map<String, Object?> encode() => {
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (exclusivePackages != null)
      'exclusive_packages': exclusivePackages!.toTfJson(),
    if (minimal != null) 'minimal': minimal!.toTfJson(),
    if (security != null) 'security': security!.toTfJson(),
  };
}

/// Typed helper for the `patch_config.zypper` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentPatchConfigZypper {
  const OsConfigPatchDeploymentPatchConfigZypper({
    this.categories,
    this.excludes,
    this.exclusivePatches,
    this.severities,
    this.withOptional,
    this.withUpdate,
  });

  final TfArg<List<Object?>>? categories;

  final TfArg<List<Object?>>? excludes;

  final TfArg<List<Object?>>? exclusivePatches;

  final TfArg<List<Object?>>? severities;

  final TfArg<bool>? withOptional;

  final TfArg<bool>? withUpdate;

  Map<String, Object?> encode() => {
    if (categories != null) 'categories': categories!.toTfJson(),
    if (excludes != null) 'excludes': excludes!.toTfJson(),
    if (exclusivePatches != null)
      'exclusive_patches': exclusivePatches!.toTfJson(),
    if (severities != null) 'severities': severities!.toTfJson(),
    if (withOptional != null) 'with_optional': withOptional!.toTfJson(),
    if (withUpdate != null) 'with_update': withUpdate!.toTfJson(),
  };
}

/// Typed helper for the `rollout` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentRollout {
  const OsConfigPatchDeploymentRollout({
    required this.mode,
    required this.disruptionBudget,
  });

  final TfArg<OsConfigPatchDeploymentRolloutMode> mode;

  final OsConfigPatchDeploymentRolloutDisruptionBudget disruptionBudget;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum OsConfigPatchDeploymentRolloutMode implements TerraformEnum {
  zoneByZone('ZONE_BY_ZONE'),
  concurrentZones('CONCURRENT_ZONES');

  const OsConfigPatchDeploymentRolloutMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rollout.disruption_budget` block of
/// `google_os_config_patch_deployment` (derived from provider schema).
@immutable
final class OsConfigPatchDeploymentRolloutDisruptionBudget {
  const OsConfigPatchDeploymentRolloutDisruptionBudget({
    this.fixed,
    this.percentage,
  });

  final TfArg<num>? fixed;

  final TfArg<num>? percentage;

  Map<String, Object?> encode() => {
    if (fixed != null) 'fixed': fixed!.toTfJson(),
    if (percentage != null) 'percentage': percentage!.toTfJson(),
  };
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
///   schedule: OsConfigPatchDeploymentOneTimeSchedule(
///     executeTime: TfArg.literal('2026-07-01T02:00:00Z'),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'patch_deployment_id': patchDeploymentId,
           if (description != null) 'description': description,
           'instance_filter': TfArg.literal(instanceFilter.encode()),
           if (patchConfig != null)
             'patch_config': TfArg.literal(patchConfig.encode()),
           if (duration != null) 'duration': duration,
           if (rollout != null) 'rollout': TfArg.literal(rollout.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           schedule.blockKey: TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigPatchDeploymentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_execute_time` attribute.
  TfRef<String> get lastExecuteTime =>
      TfRef.attribute<String>(this, 'last_execute_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
