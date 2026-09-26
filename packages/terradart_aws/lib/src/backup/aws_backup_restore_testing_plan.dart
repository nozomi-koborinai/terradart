// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_restore_testing_plan`.
const Set<String> _awsBackupRestoreTestingPlanSensitive = <String>{};

/// Typed helper for the `recovery_point_selection` block of
/// `aws_backup_restore_testing_plan` (derived from provider schema).
@immutable
final class BackupRestoreTestingPlanRecoveryPointSelection {
  const BackupRestoreTestingPlanRecoveryPointSelection({
    required this.algorithm,
    this.excludeVaults,
    required this.includeVaults,
    required this.recoveryPointTypes,
    this.selectionWindowDays,
  });

  final TfArg<String> algorithm;

  final TfArg<List<Object?>>? excludeVaults;

  final TfArg<List<Object?>> includeVaults;

  final TfArg<List<Object?>> recoveryPointTypes;

  final TfArg<num>? selectionWindowDays;

  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    if (excludeVaults != null) 'exclude_vaults': excludeVaults!.toTfJson(),
    'include_vaults': includeVaults.toTfJson(),
    'recovery_point_types': recoveryPointTypes.toTfJson(),
    if (selectionWindowDays != null)
      'selection_window_days': selectionWindowDays!.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_restore_testing_plan`.
final class AwsBackupRestoreTestingPlan extends Resource {
  static const String tfType = 'aws_backup_restore_testing_plan';

  AwsBackupRestoreTestingPlan({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> scheduleExpression,
    TfArg<String>? scheduleExpressionTimezone,
    TfArg<num>? startWindowHours,
    TfArg<Map<String, String>>? tags,
    List<BackupRestoreTestingPlanRecoveryPointSelection>?
    recoveryPointSelection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'schedule_expression': scheduleExpression,
           if (scheduleExpressionTimezone != null)
             'schedule_expression_timezone': scheduleExpressionTimezone,
           if (startWindowHours != null) 'start_window_hours': startWindowHours,
           if (tags != null) 'tags': tags,
           if (recoveryPointSelection != null)
             'recovery_point_selection': TfArg.literal([
               for (final e in recoveryPointSelection) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupRestoreTestingPlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
