// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_logically_air_gapped_vault`.
const Set<String> _awsBackupLogicallyAirGappedVaultSensitive = <String>{};

/// Factory wrapper for `aws_backup_logically_air_gapped_vault`.
final class AwsBackupLogicallyAirGappedVault extends Resource {
  static const String tfType = 'aws_backup_logically_air_gapped_vault';

  AwsBackupLogicallyAirGappedVault({
    required super.localName,
    TfArg<String>? encryptionKeyArn,
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
           if (encryptionKeyArn != null) 'encryption_key_arn': encryptionKeyArn,
           'max_retention_days': maxRetentionDays,
           'min_retention_days': minRetentionDays,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupLogicallyAirGappedVaultSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
