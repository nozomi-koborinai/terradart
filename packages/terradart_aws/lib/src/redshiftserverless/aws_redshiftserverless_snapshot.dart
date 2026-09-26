// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_snapshot`.
const Set<String> _awsRedshiftserverlessSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_redshiftserverless_snapshot`.
final class AwsRedshiftserverlessSnapshot extends Resource {
  static const String tfType = 'aws_redshiftserverless_snapshot';

  AwsRedshiftserverlessSnapshot({
    required super.localName,
    required TfArg<String> namespaceName,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    required TfArg<String> snapshotName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'namespace_name': namespaceName,
           if (region != null) 'region': region,
           if (retentionPeriod != null) 'retention_period': retentionPeriod,
           'snapshot_name': snapshotName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts_with_provisioned_restore_access` attribute.
  TfRef<List<String>> get accountsWithProvisionedRestoreAccess =>
      TfRef.attribute<List<String>>(
        this,
        'accounts_with_provisioned_restore_access',
      );

  /// Reference to `accounts_with_restore_access` attribute.
  TfRef<List<String>> get accountsWithRestoreAccess =>
      TfRef.attribute<List<String>>(this, 'accounts_with_restore_access');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `namespace_arn` attribute.
  TfRef<String> get namespaceArn =>
      TfRef.attribute<String>(this, 'namespace_arn');

  /// Reference to `owner_account` attribute.
  TfRef<String> get ownerAccount =>
      TfRef.attribute<String>(this, 'owner_account');
}
