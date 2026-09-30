// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../backup/aws_backup_vault.dart';

/// Sensitive field paths for `aws_backup_vault`.
const Set<String> _awsBackupVaultSensitive = <String>{};

/// Factory wrapper for `aws_backup_vault`.
final class DataAwsBackupVault extends Data {
  static const String tfType = 'aws_backup_vault';

  DataAwsBackupVault({
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
  Set<String> get sensitiveFields => _awsBackupVaultSensitive;

  /// A reference to the `aws_backup_vault` this data source reads, for
  /// arguments typed `RefTo<AwsBackupVault>`.
  RefTo<AwsBackupVault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `recovery_points` attribute.
  TfRef<num> get recoveryPoints =>
      TfRef.attribute<num>(this, 'recovery_points');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
