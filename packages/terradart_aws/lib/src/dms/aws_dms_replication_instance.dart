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

  AwsDmsReplicationInstance({
    required super.localName,
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
}
