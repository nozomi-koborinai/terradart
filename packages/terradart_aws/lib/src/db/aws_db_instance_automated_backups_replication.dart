// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_db_instance_automated_backups_replication`.
const Set<String> _awsDbInstanceAutomatedBackupsReplicationSensitive =
    <String>{};

/// Factory wrapper for `aws_db_instance_automated_backups_replication`.
final class AwsDbInstanceAutomatedBackupsReplication extends Resource {
  static const String tfType = 'aws_db_instance_automated_backups_replication';

  AwsDbInstanceAutomatedBackupsReplication({
    required super.localName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? preSignedUrl,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    required TfArg<String> sourceDbInstanceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'pre_signed_url': ?preSignedUrl,
           'region': ?region,
           'retention_period': ?retentionPeriod,
           'source_db_instance_arn': sourceDbInstanceArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDbInstanceAutomatedBackupsReplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbInstanceAutomatedBackupsReplication>`.
  RefTo<AwsDbInstanceAutomatedBackupsReplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `pre_signed_url` attribute.
  TfRef<String> get preSignedUrl =>
      TfRef.attribute<String>(this, 'pre_signed_url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period` attribute.
  TfRef<num> get retentionPeriod =>
      TfRef.attribute<num>(this, 'retention_period');

  /// Reference to `source_db_instance_arn` attribute.
  TfRef<String> get sourceDbInstanceArn =>
      TfRef.attribute<String>(this, 'source_db_instance_arn');
}
