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

  final List<BackupFrameworkInputParameter>? inputParameter;

  final BackupFrameworkScope? scope;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (inputParameter != null)
      'input_parameter': [for (final e in inputParameter!) e.encode()],
    'scope': ?scope?.encode(),
  };
}

/// Typed helper for the `control.input_parameter` block of
/// `aws_backup_framework` (derived from provider schema).
@immutable
final class BackupFrameworkInputParameter {
  const BackupFrameworkInputParameter({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `control.scope` block of
/// `aws_backup_framework` (derived from provider schema).
@immutable
final class BackupFrameworkScope {
  const BackupFrameworkScope({
    this.complianceResourceIds,
    this.complianceResourceTypes,
    this.tags,
  });

  final TfArg<List<String>>? complianceResourceIds;

  final TfArg<List<String>>? complianceResourceTypes;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'compliance_resource_ids': ?complianceResourceIds?.toTfJson(),
    'compliance_resource_types': ?complianceResourceTypes?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Factory wrapper for `aws_backup_framework`.
final class AwsBackupFramework extends Resource {
  static const String tfType = 'aws_backup_framework';

  AwsBackupFramework(
    super.localName, {
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'control': TfArg.literal([for (final e in control) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupFrameworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupFramework>`.
  RefTo<AwsBackupFramework> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
