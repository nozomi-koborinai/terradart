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

  final TfArg<BackupPlanResourceType> resourceType;

  Map<String, Object?> encode() => {
    'backup_options': backupOptions.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// `resource_type` — derived from the provider schema description.
enum BackupPlanResourceType implements TerraformEnum {
  ec2('EC2');

  const BackupPlanResourceType(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<BackupPlanCopyAction>? copyAction;

  final BackupPlanLifecycle? lifecycle;

  final List<BackupPlanScanAction>? scanAction;

  Map<String, Object?> encode() => {
    'completion_window': ?completionWindow?.toTfJson(),
    'enable_continuous_backup': ?enableContinuousBackup?.toTfJson(),
    'recovery_point_tags': ?recoveryPointTags?.toTfJson(),
    'rule_name': ruleName.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'schedule_expression_timezone': ?scheduleExpressionTimezone?.toTfJson(),
    'start_window': ?startWindow?.toTfJson(),
    'target_logically_air_gapped_backup_vault_arn':
        ?targetLogicallyAirGappedBackupVaultArn?.toTfJson(),
    'target_vault_name': targetVaultName.toTfJson(),
    if (copyAction != null)
      'copy_action': [for (final e in copyAction!) e.encode()],
    'lifecycle': ?lifecycle?.encode(),
    if (scanAction != null)
      'scan_action': [for (final e in scanAction!) e.encode()],
  };
}

/// Typed helper for the `rule.copy_action` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanCopyAction {
  const BackupPlanCopyAction({
    required this.destinationVaultArn,
    this.lifecycle,
  });

  final TfArg<String> destinationVaultArn;

  final BackupPlanLifecycle? lifecycle;

  Map<String, Object?> encode() => {
    'destination_vault_arn': destinationVaultArn.toTfJson(),
    'lifecycle': ?lifecycle?.encode(),
  };
}

/// Typed helper for the `rule.lifecycle` block of
/// `aws_backup_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BackupPlanLifecycle {
  const BackupPlanLifecycle({
    this.coldStorageAfter,
    this.deleteAfter,
    this.optInToArchiveForSupportedResources,
  });

  final TfArg<num>? coldStorageAfter;

  final TfArg<num>? deleteAfter;

  final TfArg<bool>? optInToArchiveForSupportedResources;

  Map<String, Object?> encode() => {
    'cold_storage_after': ?coldStorageAfter?.toTfJson(),
    'delete_after': ?deleteAfter?.toTfJson(),
    'opt_in_to_archive_for_supported_resources':
        ?optInToArchiveForSupportedResources?.toTfJson(),
  };
}

/// Typed helper for the `rule.scan_action` block of
/// `aws_backup_plan` (derived from provider schema).
@immutable
final class BackupPlanScanAction {
  const BackupPlanScanAction({
    required this.malwareScanner,
    required this.scanMode,
  });

  final TfArg<BackupPlanMalwareScanner> malwareScanner;

  final TfArg<BackupPlanScanMode> scanMode;

  Map<String, Object?> encode() => {
    'malware_scanner': malwareScanner.toTfJson(),
    'scan_mode': scanMode.toTfJson(),
  };
}

/// `malware_scanner` — derived from the provider schema description.
enum BackupPlanMalwareScanner implements TerraformEnum {
  guardduty('GUARDDUTY');

  const BackupPlanMalwareScanner(this.terraformValue);
  @override
  final String terraformValue;
}

/// `scan_mode` — derived from the provider schema description.
enum BackupPlanScanMode implements TerraformEnum {
  fullScan('FULL_SCAN'),
  incrementalScan('INCREMENTAL_SCAN');

  const BackupPlanScanMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<BackupPlanMalwareScanner> malwareScanner;

  final TfArg<List<String>> resourceTypes;

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

  AwsBackupPlan(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupPlan>`.
  RefTo<AwsBackupPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
