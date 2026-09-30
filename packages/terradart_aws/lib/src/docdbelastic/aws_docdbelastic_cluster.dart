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
           'backup_retention_period': ?backupRetentionPeriod,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'region': ?region,
           'shard_capacity': shardCapacity,
           'shard_count': shardCount,
           'shard_instance_count': ?shardInstanceCount,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
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

  /// Reference to `admin_user_name` attribute.
  TfRef<String> get adminUserNameRef =>
      TfRef.attribute<String>(this, 'admin_user_name');

  /// Reference to `admin_user_password` attribute.
  TfRef<String> get adminUserPasswordRef =>
      TfRef.attribute<String>(this, 'admin_user_password');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authTypeRef => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `backup_retention_period` attribute.
  TfRef<num> get backupRetentionPeriodRef =>
      TfRef.attribute<num>(this, 'backup_retention_period');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindowRef =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindowRef =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `shard_capacity` attribute.
  TfRef<num> get shardCapacityRef =>
      TfRef.attribute<num>(this, 'shard_capacity');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCountRef => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `shard_instance_count` attribute.
  TfRef<num> get shardInstanceCountRef =>
      TfRef.attribute<num>(this, 'shard_instance_count');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIdsRef =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
