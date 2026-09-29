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
}
