// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_restore_testing_selection`.
const Set<String> _awsBackupRestoreTestingSelectionSensitive = <String>{};

/// Backup Restore Testing Selection Protected Resource enum for `protected_resource_arns`.
enum BackupRestoreTestingSelectionProtectedResourceArns
    implements TerraformEnum {
  value('*');

  const BackupRestoreTestingSelectionProtectedResourceArns(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `protected_resource_arns`, `protected_resource_conditions` on `aws_backup_restore_testing_selection`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions {
  const BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `protected_resource_arns` (one of the [BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions] choices).
final class BackupRestoreTestingSelectionProtectedResourceArnsOption
    extends
        BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions {
  const BackupRestoreTestingSelectionProtectedResourceArnsOption({
    required this.protectedResourceArns,
  });

  final List<TfArg<BackupRestoreTestingSelectionProtectedResourceArns>>
  protectedResourceArns;

  @override
  String get blockKey => 'protected_resource_arns';

  @override
  Map<String, Object?> encode() => {
    'protected_resource_arns': [
      for (final e in protectedResourceArns) e.toTfJson(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'protected_resource_arns': TfArg.literal([
      for (final e in protectedResourceArns) e.toTfJson(),
    ]),
  };
}

/// Sets `protected_resource_conditions` (one of the [BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions] choices).
final class BackupRestoreTestingSelectionProtectedResourceConditionsOption
    extends
        BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions {
  const BackupRestoreTestingSelectionProtectedResourceConditionsOption({
    required this.protectedResourceConditions,
  });

  final List<BackupRestoreTestingSelectionProtectedResourceConditions>
  protectedResourceConditions;

  @override
  String get blockKey => 'protected_resource_conditions';

  @override
  Map<String, Object?> encode() => {
    'protected_resource_conditions': [
      for (final e in protectedResourceConditions) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'protected_resource_conditions': TfArg.literal([
      for (final e in protectedResourceConditions) e.encode(),
    ]),
  };
}

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
    required BackupRestoreTestingSelectionProtectedResourceArnsOrProtectedResourceConditions
    protectedResourceArnsOrProtectedResourceConditions,
    required TfArg<String> protectedResourceType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? restoreMetadataOverrides,
    required TfArg<String> restoreTestingPlanName,
    TfArg<num>? validationWindowHours,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn,
           'name': name,
           ...protectedResourceArnsOrProtectedResourceConditions.argMap,
           'protected_resource_type': protectedResourceType,
           if (region != null) 'region': region,
           if (restoreMetadataOverrides != null)
             'restore_metadata_overrides': restoreMetadataOverrides,
           'restore_testing_plan_name': restoreTestingPlanName,
           if (validationWindowHours != null)
             'validation_window_hours': validationWindowHours,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupRestoreTestingSelectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
