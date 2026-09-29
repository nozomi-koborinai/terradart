// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_docdbelastic_cluster`.
const Set<String> _awsDocdbelasticClusterSensitive = <String>{
  'admin_user_password',
};

/// Docdbelastic Cluster Auth enum for `auth_type`.
enum DocdbelasticClusterAuthType implements TerraformEnum {
  plainText('PLAIN_TEXT'),
  secretArn('SECRET_ARN');

  const DocdbelasticClusterAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_docdbelastic_cluster`.
final class AwsDocdbelasticCluster extends Resource {
  static const String tfType = 'aws_docdbelastic_cluster';

  AwsDocdbelasticCluster({
    required super.localName,
    required TfArg<String> adminUserName,
    required TfArg<String> adminUserPassword,
    required TfArg<DocdbelasticClusterAuthType> authType,
    TfArg<num>? backupRetentionPeriod,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    required TfArg<num> shardCapacity,
    required TfArg<num> shardCount,
    TfArg<num>? shardInstanceCount,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_user_name': adminUserName,
           'admin_user_password': adminUserPassword,
           'auth_type': authType,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           'name': name,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (region != null) 'region': region,
           'shard_capacity': shardCapacity,
           'shard_count': shardCount,
           if (shardInstanceCount != null)
             'shard_instance_count': shardInstanceCount,
           if (subnetIds != null) 'subnet_ids': subnetIds.encodeAs('id'),
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbelasticClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbelasticCluster>`.
  RefTo<AwsDocdbelasticCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
