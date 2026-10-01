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

  final BackupRestoreTestingPlanAlgorithm algorithm;

  final TfArg<List<String>>? excludeVaults;

  final TfArg<List<String>> includeVaults;

  final List<BackupRestoreTestingPlanRecoveryPointTypes> recoveryPointTypes;

  final TfArg<num>? selectionWindowDays;

  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    'exclude_vaults': ?excludeVaults?.toTfJson(),
    'include_vaults': includeVaults.toTfJson(),
    'recovery_point_types': [for (final e in recoveryPointTypes) e.toTfJson()],
    'selection_window_days': ?selectionWindowDays?.toTfJson(),
  };
}

/// `algorithm` — derived from the provider schema description.
extension type const BackupRestoreTestingPlanAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  BackupRestoreTestingPlanAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  BackupRestoreTestingPlanAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const BackupRestoreTestingPlanAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const latestWithinWindow = BackupRestoreTestingPlanAlgorithm._(
    TfArgLiteral('LATEST_WITHIN_WINDOW'),
  );
  static const randomWithinWindow = BackupRestoreTestingPlanAlgorithm._(
    TfArgLiteral('RANDOM_WITHIN_WINDOW'),
  );

  static const List<BackupRestoreTestingPlanAlgorithm> values = [
    latestWithinWindow,
    randomWithinWindow,
  ];
}

/// `recovery_point_types` — derived from the provider schema description.
extension type const BackupRestoreTestingPlanRecoveryPointTypes._(
  TfArg<String> _
) implements TfArg<String> {
  BackupRestoreTestingPlanRecoveryPointTypes.variable(String name)
    : this._(TfArg.variable(name));
  BackupRestoreTestingPlanRecoveryPointTypes.expression(String template)
    : this._(TfArg.expression(template));
  const BackupRestoreTestingPlanRecoveryPointTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const continuous = BackupRestoreTestingPlanRecoveryPointTypes._(
    TfArgLiteral('CONTINUOUS'),
  );
  static const snapshot = BackupRestoreTestingPlanRecoveryPointTypes._(
    TfArgLiteral('SNAPSHOT'),
  );

  static const List<BackupRestoreTestingPlanRecoveryPointTypes> values = [
    continuous,
    snapshot,
  ];
}

/// Factory wrapper for `aws_backup_restore_testing_plan`.
final class AwsBackupRestoreTestingPlan extends Resource {
  static const String tfType = 'aws_backup_restore_testing_plan';

  AwsBackupRestoreTestingPlan(
    super.localName, {
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
           'region': ?region,
           'schedule_expression': scheduleExpression,
           'schedule_expression_timezone': ?scheduleExpressionTimezone,
           'start_window_hours': ?startWindowHours,
           'tags': ?tags,
           if (recoveryPointSelection != null)
             'recovery_point_selection': TfArg.literal([
               for (final e in recoveryPointSelection) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupRestoreTestingPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupRestoreTestingPlan>`.
  RefTo<AwsBackupRestoreTestingPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule_expression` attribute.
  TfRef<String> get scheduleExpression =>
      TfRef.attribute<String>(this, 'schedule_expression');

  /// Reference to `schedule_expression_timezone` attribute.
  TfRef<String> get scheduleExpressionTimezone =>
      TfRef.attribute<String>(this, 'schedule_expression_timezone');

  /// Reference to `start_window_hours` attribute.
  TfRef<num> get startWindowHours =>
      TfRef.attribute<num>(this, 'start_window_hours');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
