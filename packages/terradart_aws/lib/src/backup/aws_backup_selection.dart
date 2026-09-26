// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_selection`.
const Set<String> _awsBackupSelectionSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionCondition {
  const BackupSelectionCondition({
    this.stringEquals,
    this.stringLike,
    this.stringNotEquals,
    this.stringNotLike,
  });

  final List<BackupSelectionConditionStringEquals>? stringEquals;

  final List<BackupSelectionConditionStringLike>? stringLike;

  final List<BackupSelectionConditionStringNotEquals>? stringNotEquals;

  final List<BackupSelectionConditionStringNotLike>? stringNotLike;

  Map<String, Object?> encode() => {
    if (stringEquals != null)
      'string_equals': [for (final e in stringEquals!) e.encode()],
    if (stringLike != null)
      'string_like': [for (final e in stringLike!) e.encode()],
    if (stringNotEquals != null)
      'string_not_equals': [for (final e in stringNotEquals!) e.encode()],
    if (stringNotLike != null)
      'string_not_like': [for (final e in stringNotLike!) e.encode()],
  };
}

/// Typed helper for the `condition.string_equals` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionConditionStringEquals {
  const BackupSelectionConditionStringEquals({
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

/// Typed helper for the `condition.string_like` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionConditionStringLike {
  const BackupSelectionConditionStringLike({
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

/// Typed helper for the `condition.string_not_equals` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionConditionStringNotEquals {
  const BackupSelectionConditionStringNotEquals({
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

/// Typed helper for the `condition.string_not_like` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionConditionStringNotLike {
  const BackupSelectionConditionStringNotLike({
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

/// Typed helper for the `selection_tag` block of
/// `aws_backup_selection` (derived from provider schema).
@immutable
final class BackupSelectionSelectionTag {
  const BackupSelectionSelectionTag({
    required this.key,
    required this.type,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_selection`.
final class AwsBackupSelection extends Resource {
  static const String tfType = 'aws_backup_selection';

  AwsBackupSelection({
    required super.localName,
    required TfArg<String> iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? notResources,
    required TfArg<String> planId,
    TfArg<String>? region,
    TfArg<List<String>>? resources,
    List<BackupSelectionCondition>? condition,
    List<BackupSelectionSelectionTag>? selectionTag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn,
           'name': name,
           if (notResources != null) 'not_resources': notResources,
           'plan_id': planId,
           if (region != null) 'region': region,
           if (resources != null) 'resources': resources,
           if (condition != null)
             'condition': TfArg.literal([
               for (final e in condition) e.encode(),
             ]),
           if (selectionTag != null)
             'selection_tag': TfArg.literal([
               for (final e in selectionTag) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupSelectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
