// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../backup/aws_backup_framework.dart';

/// Sensitive field paths for `aws_backup_framework`.
const Set<String> _awsBackupFrameworkSensitive = <String>{};

/// Factory wrapper for `aws_backup_framework`.
final class DataAwsBackupFramework extends Data {
  static const String tfType = 'aws_backup_framework';

  DataAwsBackupFramework({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsBackupFrameworkSensitive;

  /// A reference to the `aws_backup_framework` this data source reads, for
  /// arguments typed `RefTo<AwsBackupFramework>`.
  RefTo<AwsBackupFramework> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `control` attribute.
  TfRef<List<Map<String, Object?>>> get control =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'control');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `deployment_status` attribute.
  TfRef<String> get deploymentStatus =>
      TfRef.attribute<String>(this, 'deployment_status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
