// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_plan`.
const Set<String> _awsBackupPlanSensitive = <String>{};

/// Typed helper for the `advanced_backup_setting` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanAdvancedBackupSetting {
  const BackupPlanAdvancedBackupSetting({
    required this.backupOptions,
    required this.resourceType,
  });

  final TfArg<Map<String, String>> backupOptions;

  final TfArg<String> resourceType;

  Map<String, Object?> encode() => {
    'backup_options': backupOptions.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Typed helper for the `rule` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanRule {
  const BackupPlanRule({
    this.completionWindow,
    this.enableContinuousBackup,
    this.recoveryPointTags,
    required this.ruleName,
    this.schedule,
    this.scheduleExpressionTimezone,
    this.startWindow,
    this.targetLogicallyAirGappedBackupVaultArn,
    required this.targetVaultName,
    this.copyAction,
    this.lifecycle,
    this.scanAction,
  });

  final TfArg<num>? completionWindow;

  final TfArg<bool>? enableContinuousBackup;

  final TfArg<Map<String, String>>? recoveryPointTags;

  final TfArg<String> ruleName;

  final TfArg<String>? schedule;

  final TfArg<String>? scheduleExpressionTimezone;

  final TfArg<num>? startWindow;

  final TfArg<String>? targetLogicallyAirGappedBackupVaultArn;

  final TfArg<String> targetVaultName;

  final List<BackupPlanRuleCopyAction>? copyAction;

  final BackupPlanRuleLifecycle? lifecycle;

  final List<BackupPlanRuleScanAction>? scanAction;

  Map<String, Object?> encode() => {
    if (completionWindow != null)
      'completion_window': completionWindow!.toTfJson(),
    if (enableContinuousBackup != null)
      'enable_continuous_backup': enableContinuousBackup!.toTfJson(),
    if (recoveryPointTags != null)
      'recovery_point_tags': recoveryPointTags!.toTfJson(),
    'rule_name': ruleName.toTfJson(),
    if (schedule != null) 'schedule': schedule!.toTfJson(),
    if (scheduleExpressionTimezone != null)
      'schedule_expression_timezone': scheduleExpressionTimezone!.toTfJson(),
    if (startWindow != null) 'start_window': startWindow!.toTfJson(),
    if (targetLogicallyAirGappedBackupVaultArn != null)
      'target_logically_air_gapped_backup_vault_arn':
          targetLogicallyAirGappedBackupVaultArn!.toTfJson(),
    'target_vault_name': targetVaultName.toTfJson(),
    if (copyAction != null)
      'copy_action': [for (final e in copyAction!) e.encode()],
    if (lifecycle != null) 'lifecycle': lifecycle!.encode(),
    if (scanAction != null)
      'scan_action': [for (final e in scanAction!) e.encode()],
  };
}

/// Typed helper for the `rule.copy_action` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanRuleCopyAction {
  const BackupPlanRuleCopyAction({
    required this.destinationVaultArn,
    this.lifecycle,
  });

  final TfArg<String> destinationVaultArn;

  final BackupPlanRuleCopyActionLifecycle? lifecycle;

  Map<String, Object?> encode() => {
    'destination_vault_arn': destinationVaultArn.toTfJson(),
    if (lifecycle != null) 'lifecycle': lifecycle!.encode(),
  };
}

/// Typed helper for the `rule.copy_action.lifecycle` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanRuleCopyActionLifecycle {
  const BackupPlanRuleCopyActionLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  final TfArg<num>? coldStorageAfter;

  final TfArg<num>? deleteAfter;

  final TfArg<bool>? optInToArchiveForSupportedResources;

  Map<String, Object?> encode() => {
    if (coldStorageAfter != null)
      'cold_storage_after': coldStorageAfter!.toTfJson(),
    if (deleteAfter != null) 'delete_after': deleteAfter!.toTfJson(),
    if (optInToArchiveForSupportedResources != null)
      'opt_in_to_archive_for_supported_resources':
          optInToArchiveForSupportedResources!.toTfJson(),
  };
}

/// Typed helper for the `rule.lifecycle` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanRuleLifecycle {
  const BackupPlanRuleLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  final TfArg<num>? coldStorageAfter;

  final TfArg<num>? deleteAfter;

  final TfArg<bool>? optInToArchiveForSupportedResources;

  Map<String, Object?> encode() => {
    if (coldStorageAfter != null)
      'cold_storage_after': coldStorageAfter!.toTfJson(),
    if (deleteAfter != null) 'delete_after': deleteAfter!.toTfJson(),
    if (optInToArchiveForSupportedResources != null)
      'opt_in_to_archive_for_supported_resources':
          optInToArchiveForSupportedResources!.toTfJson(),
  };
}

/// Typed helper for the `rule.scan_action` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanRuleScanAction {
  const BackupPlanRuleScanAction({
    required this.malwareScanner,
    required this.scanMode,
  });

  final TfArg<String> malwareScanner;

  final TfArg<String> scanMode;

  Map<String, Object?> encode() => {
    'malware_scanner': malwareScanner.toTfJson(),
    'scan_mode': scanMode.toTfJson(),
  };
}

/// Typed helper for the `scan_setting` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanScanSetting {
  const BackupPlanScanSetting({
    required this.malwareScanner,
    required this.resourceTypes,
    required this.scannerRoleArn,
  });

  final TfArg<String> malwareScanner;

  final TfArg<List<Object?>> resourceTypes;

  final TfArg<String> scannerRoleArn;

  Map<String, Object?> encode() => {
    'malware_scanner': malwareScanner.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
    'scanner_role_arn': scannerRoleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_plan`.
final class AwsBackupPlan extends Resource {
  static const String tfType = 'aws_backup_plan';

  AwsBackupPlan({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BackupPlanAdvancedBackupSetting>? advancedBackupSetting,
    required List<BackupPlanRule> rule,
    List<BackupPlanScanSetting>? scanSetting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (advancedBackupSetting != null)
             'advanced_backup_setting': TfArg.literal([
               for (final e in advancedBackupSetting) e.encode(),
             ]),
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
           if (scanSetting != null)
             'scan_setting': TfArg.literal([
               for (final e in scanSetting) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
