// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final List<BackupSelectionStringEquals>? stringEquals;

  final List<BackupSelectionStringLike>? stringLike;

  final List<BackupSelectionStringNotEquals>? stringNotEquals;

  final List<BackupSelectionStringNotLike>? stringNotLike;

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
final class BackupSelectionStringEquals {
  const BackupSelectionStringEquals({required this.key, required this.value});

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
final class BackupSelectionStringLike {
  const BackupSelectionStringLike({required this.key, required this.value});

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
final class BackupSelectionStringNotEquals {
  const BackupSelectionStringNotEquals({
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
final class BackupSelectionStringNotLike {
  const BackupSelectionStringNotLike({required this.key, required this.value});

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
final class BackupSelectionTag {
  const BackupSelectionTag({
    required this.key,
    required this.type,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<BackupSelectionType> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BackupSelectionType implements TerraformEnum {
  stringequals('STRINGEQUALS');

  const BackupSelectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_backup_selection`.
final class AwsBackupSelection extends Resource {
  static const String tfType = 'aws_backup_selection';

  AwsBackupSelection({
    required super.localName,
    required RefTo<AwsIamRole> iamRoleArn,
    required TfArg<String> name,
    TfArg<List<String>>? notResources,
    required TfArg<String> planId,
    TfArg<String>? region,
    TfArg<List<String>>? resources,
    List<BackupSelectionCondition>? condition,
    List<BackupSelectionTag>? selectionTag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iam_role_arn': iamRoleArn.encodeAs('arn'),
           'name': name,
           'not_resources': ?notResources,
           'plan_id': planId,
           'region': ?region,
           'resources': ?resources,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupSelection>`.
  RefTo<AwsBackupSelection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `not_resources` attribute.
  TfRef<List<String>> get notResources =>
      TfRef.attribute<List<String>>(this, 'not_resources');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');
}
