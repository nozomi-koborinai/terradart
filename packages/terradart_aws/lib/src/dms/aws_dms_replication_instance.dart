// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_dms_replication_instance`.
const Set<String> _awsDmsReplicationInstanceSensitive = <String>{};

/// Dms Replication Instance Network enum for `network_type`.
enum DmsReplicationInstanceNetworkType implements TerraformEnum {
  dual('DUAL'),
  ipv4('IPV4');

  const DmsReplicationInstanceNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kerberos_authentication_settings` block of
/// `aws_dms_replication_instance` (derived from provider schema).
@immutable
final class DmsReplicationInstanceKerberosAuthenticationSettings {
  const DmsReplicationInstanceKerberosAuthenticationSettings({
    required this.keyCacheSecretIamArn,
    required this.keyCacheSecretId,
    required this.krb5FileContents,
  });

  final TfArg<String> keyCacheSecretIamArn;

  final TfArg<String> keyCacheSecretId;

  final TfArg<String> krb5FileContents;

  Map<String, Object?> encode() => {
    'key_cache_secret_iam_arn': keyCacheSecretIamArn.toTfJson(),
    'key_cache_secret_id': keyCacheSecretId.toTfJson(),
    'krb5_file_contents': krb5FileContents.toTfJson(),
  };
}

/// Factory wrapper for `aws_dms_replication_instance`.
final class AwsDmsReplicationInstance extends Resource {
  static const String tfType = 'aws_dms_replication_instance';

  AwsDmsReplicationInstance(
    super.localName, {
    TfArg<num>? allocatedStorage,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<String>? dnsNameServers,
    TfArg<String>? engineVersion,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<bool>? multiAz,
    TfArg<DmsReplicationInstanceNetworkType>? networkType,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    required TfArg<String> replicationInstanceClass,
    required TfArg<String> replicationInstanceId,
    TfArg<String>? replicationSubnetGroupId,
    TfArg<Map<String, String>>? tags,
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    DmsReplicationInstanceKerberosAuthenticationSettings?
    kerberosAuthenticationSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocated_storage': ?allocatedStorage,
           'allow_major_version_upgrade': ?allowMajorVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zone': ?availabilityZone,
           'dns_name_servers': ?dnsNameServers,
           'engine_version': ?engineVersion,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'multi_az': ?multiAz,
           'network_type': ?networkType,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'replication_instance_class': replicationInstanceClass,
           'replication_instance_id': replicationInstanceId,
           'replication_subnet_group_id': ?replicationSubnetGroupId,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
           if (kerberosAuthenticationSettings != null)
             'kerberos_authentication_settings': TfArg.literal(
               kerberosAuthenticationSettings.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsReplicationInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsReplicationInstance>`.
  RefTo<AwsDmsReplicationInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `replication_instance_arn` attribute.
  TfRef<String> get replicationInstanceArn =>
      TfRef.attribute<String>(this, 'replication_instance_arn');

  /// Reference to `replication_instance_private_ips` attribute.
  TfRef<List<String>> get replicationInstancePrivateIps =>
      TfRef.attribute<List<String>>(this, 'replication_instance_private_ips');

  /// Reference to `replication_instance_public_ips` attribute.
  TfRef<List<String>> get replicationInstancePublicIps =>
      TfRef.attribute<List<String>>(this, 'replication_instance_public_ips');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `allow_major_version_upgrade` attribute.
  TfRef<bool> get allowMajorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'allow_major_version_upgrade');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `dns_name_servers` attribute.
  TfRef<String> get dnsNameServers =>
      TfRef.attribute<String>(this, 'dns_name_servers');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `multi_az` attribute.
  TfRef<bool> get multiAz => TfRef.attribute<bool>(this, 'multi_az');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `preferred_maintenance_window` attribute.
  TfRef<String> get preferredMaintenanceWindow =>
      TfRef.attribute<String>(this, 'preferred_maintenance_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_instance_class` attribute.
  TfRef<String> get replicationInstanceClass =>
      TfRef.attribute<String>(this, 'replication_instance_class');

  /// Reference to `replication_instance_id` attribute.
  TfRef<String> get replicationInstanceId =>
      TfRef.attribute<String>(this, 'replication_instance_id');

  /// Reference to `replication_subnet_group_id` attribute.
  TfRef<String> get replicationSubnetGroupId =>
      TfRef.attribute<String>(this, 'replication_subnet_group_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_security_group_ids` attribute.
  TfRef<List<String>> get vpcSecurityGroupIds =>
      TfRef.attribute<List<String>>(this, 'vpc_security_group_ids');
}
