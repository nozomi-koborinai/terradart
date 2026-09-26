// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_framework`.
const Set<String> _awsBackupFrameworkSensitive = <String>{};

/// Typed helper for the `control` block of
/// `aws_backup_framework` (derived from provider schema).
@immutable
final class BackupFrameworkControl {
  const BackupFrameworkControl({
    required this.name,
    this.inputParameter,
    this.scope,
  });

  final TfArg<String> name;

  final List<BackupFrameworkControlInputParameter>? inputParameter;

  final BackupFrameworkControlScope? scope;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (inputParameter != null)
      'input_parameter': [for (final e in inputParameter!) e.encode()],
    if (scope != null) 'scope': scope!.encode(),
  };
}

/// Typed helper for the `control.input_parameter` block of
/// `aws_backup_framework` (derived from provider schema).
@immutable
final class BackupFrameworkControlInputParameter {
  const BackupFrameworkControlInputParameter({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `control.scope` block of
/// `aws_backup_framework` (derived from provider schema).
@immutable
final class BackupFrameworkControlScope {
  const BackupFrameworkControlScope({
    this.complianceResourceIds,
    this.complianceResourceTypes,
    this.tags,
  });

  final TfArg<List<Object?>>? complianceResourceIds;

  final TfArg<List<Object?>>? complianceResourceTypes;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (complianceResourceIds != null)
      'compliance_resource_ids': complianceResourceIds!.toTfJson(),
    if (complianceResourceTypes != null)
      'compliance_resource_types': complianceResourceTypes!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_framework`.
final class AwsBackupFramework extends Resource {
  static const String tfType = 'aws_backup_framework';

  AwsBackupFramework({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<BackupFrameworkControl> control,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'control': TfArg.literal([for (final e in control) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupFrameworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `deployment_status` attribute.
  TfRef<String> get deploymentStatus =>
      TfRef.attribute<String>(this, 'deployment_status');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
