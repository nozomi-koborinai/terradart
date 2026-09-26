// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_restore_testing_selection`.
const Set<String> _awsBackupRestoreTestingSelectionSensitive = <String>{};

/// Typed helper for the `protected_resource_conditions` block of
/// `aws_backup_restore_testing_selection` (derived from provider schema).
@immutable
final class BackupRestoreTestingSelectionProtectedResourceConditions {
  const BackupRestoreTestingSelectionProtectedResourceConditions({
    this.stringEquals,
    this.stringNotEquals,
  });

  final List<
    BackupRestoreTestingSelectionProtectedResourceConditionsStringEquals
  >?
  stringEquals;

  final List<
    BackupRestoreTestingSelectionProtectedResourceConditionsStringNotEquals
  >?
  stringNotEquals;

  Map<String, Object?> encode() => {
    if (stringEquals != null)
      'string_equals': [for (final e in stringEquals!) e.encode()],
    if (stringNotEquals != null)
      'string_not_equals': [for (final e in stringNotEquals!) e.encode()],
  };
}

/// Typed helper for the `protected_resource_conditions.string_equals` block of
/// `aws_backup_restore_testing_selection` (derived from provider schema).
@immutable
final class BackupRestoreTestingSelectionProtectedResourceConditionsStringEquals {
  const BackupRestoreTestingSelectionProtectedResourceConditionsStringEquals({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `protected_resource_conditions.string_not_equals` block of
/// `aws_backup_restore_testing_selection` (derived from provider schema).
@immutable
final class BackupRestoreTestingSelectionProtectedResourceConditionsStringNotEquals {
  const BackupRestoreTestingSelectionProtectedResourceConditionsStringNotEquals({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_restore_testing_selection`.
final class AwsBackupRestoreTestingSelection extends Resource {
  static const String tfType = 'aws_backup_restore_testing_selection';

  AwsBackupRestoreTestingSelection({
    required super.localName,
    required TfArg<String> iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? protectedResourceArns,
    required TfArg<String> protectedResourceType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? restoreMetadataOverrides,
    required TfArg<String> restoreTestingPlanName,
    TfArg<num>? validationWindowHours,
    List<BackupRestoreTestingSelectionProtectedResourceConditions>?
    protectedResourceConditions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn,
           'name': name,
           if (protectedResourceArns != null)
             'protected_resource_arns': protectedResourceArns,
           'protected_resource_type': protectedResourceType,
           if (region != null) 'region': region,
           if (restoreMetadataOverrides != null)
             'restore_metadata_overrides': restoreMetadataOverrides,
           'restore_testing_plan_name': restoreTestingPlanName,
           if (validationWindowHours != null)
             'validation_window_hours': validationWindowHours,
           if (protectedResourceConditions != null)
             'protected_resource_conditions': TfArg.literal([
               for (final e in protectedResourceConditions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupRestoreTestingSelectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
