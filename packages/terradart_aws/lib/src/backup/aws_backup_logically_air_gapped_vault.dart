// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_backup_logically_air_gapped_vault`.
const Set<String> _awsBackupLogicallyAirGappedVaultSensitive = <String>{};

/// Factory wrapper for `aws_backup_logically_air_gapped_vault`.
final class AwsBackupLogicallyAirGappedVault extends Resource {
  static const String tfType = 'aws_backup_logically_air_gapped_vault';

  AwsBackupLogicallyAirGappedVault({
    required super.localName,
    RefTo<AwsKmsKey>? encryptionKeyArn,
    required TfArg<num> maxRetentionDays,
    required TfArg<num> minRetentionDays,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn'),
           'max_retention_days': maxRetentionDays,
           'min_retention_days': minRetentionDays,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupLogicallyAirGappedVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBackupLogicallyAirGappedVault>`.
  RefTo<AwsBackupLogicallyAirGappedVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `encryption_key_arn` attribute.
  TfRef<String> get encryptionKeyArnRef =>
      TfRef.attribute<String>(this, 'encryption_key_arn');

  /// Reference to `max_retention_days` attribute.
  TfRef<num> get maxRetentionDaysRef =>
      TfRef.attribute<num>(this, 'max_retention_days');

  /// Reference to `min_retention_days` attribute.
  TfRef<num> get minRetentionDaysRef =>
      TfRef.attribute<num>(this, 'min_retention_days');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
