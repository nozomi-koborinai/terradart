// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_mq_broker`.
const Set<String> _awsMqBrokerSensitive = <String>{
  'ldap_server_metadata.service_account_password',
  'user.password',
};

/// Mq Broker Authentication enum for `authentication_strategy`.
enum MqBrokerAuthenticationStrategy implements TerraformEnum {
  simple('SIMPLE'),
  ldap('LDAP'),
  configManaged('CONFIG_MANAGED');

  const MqBrokerAuthenticationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mq Broker Data Replication enum for `data_replication_mode`.
enum MqBrokerDataReplicationMode implements TerraformEnum {
  none('NONE'),
  crdr('CRDR');

  const MqBrokerDataReplicationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mq Broker Deployment enum for `deployment_mode`.
enum MqBrokerDeploymentMode implements TerraformEnum {
  singleInstance('SINGLE_INSTANCE'),
  activeStandbyMultiAz('ACTIVE_STANDBY_MULTI_AZ'),
  clusterMultiAz('CLUSTER_MULTI_AZ');

  const MqBrokerDeploymentMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mq Broker Engine enum for `engine_type`.
enum MqBrokerEngineType implements TerraformEnum {
  activemq('ACTIVEMQ'),
  rabbitmq('RABBITMQ');

  const MqBrokerEngineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Mq Broker Storage enum for `storage_type`.
enum MqBrokerStorageType implements TerraformEnum {
  ebs('EBS'),
  efs('EFS');

  const MqBrokerStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerConfiguration {
  const MqBrokerConfiguration({this.id, this.revision});

  final TfArg<String>? id;

  final TfArg<num>? revision;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'revision': ?revision?.toTfJson(),
  };
}

/// Typed helper for the `encryption_options` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerEncryptionOptions {
  const MqBrokerEncryptionOptions({this.kmsKeyId, this.useAwsOwnedKey});

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<bool>? useAwsOwnedKey;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'use_aws_owned_key': ?useAwsOwnedKey?.toTfJson(),
  };
}

/// Typed helper for the `ldap_server_metadata` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerLdapServerMetadata {
  const MqBrokerLdapServerMetadata({
    this.hosts,
    this.roleBase,
    this.roleName,
    this.roleSearchMatching,
    this.roleSearchSubtree,
    this.serviceAccountPassword,
    this.serviceAccountUsername,
    this.userBase,
    this.userRoleName,
    this.userSearchMatching,
    this.userSearchSubtree,
  });

  final TfArg<List<String>>? hosts;

  final TfArg<String>? roleBase;

  final TfArg<String>? roleName;

  final TfArg<String>? roleSearchMatching;

  final TfArg<bool>? roleSearchSubtree;

  final TfArg<String>? serviceAccountPassword;

  final TfArg<String>? serviceAccountUsername;

  final TfArg<String>? userBase;

  final TfArg<String>? userRoleName;

  final TfArg<String>? userSearchMatching;

  final TfArg<bool>? userSearchSubtree;

  Map<String, Object?> encode() => {
    'hosts': ?hosts?.toTfJson(),
    'role_base': ?roleBase?.toTfJson(),
    'role_name': ?roleName?.toTfJson(),
    'role_search_matching': ?roleSearchMatching?.toTfJson(),
    'role_search_subtree': ?roleSearchSubtree?.toTfJson(),
    'service_account_password': ?serviceAccountPassword?.toTfJson(),
    'service_account_username': ?serviceAccountUsername?.toTfJson(),
    'user_base': ?userBase?.toTfJson(),
    'user_role_name': ?userRoleName?.toTfJson(),
    'user_search_matching': ?userSearchMatching?.toTfJson(),
    'user_search_subtree': ?userSearchSubtree?.toTfJson(),
  };
}

/// Typed helper for the `logs` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerLogs {
  const MqBrokerLogs({this.audit, this.general});

  final TfArg<String>? audit;

  final TfArg<bool>? general;

  Map<String, Object?> encode() => {
    'audit': ?audit?.toTfJson(),
    'general': ?general?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window_start_time` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerMaintenanceWindowStartTime {
  const MqBrokerMaintenanceWindowStartTime({
    required this.dayOfWeek,
    required this.timeOfDay,
    required this.timeZone,
  });

  final TfArg<MqBrokerDayOfWeek> dayOfWeek;

  final TfArg<String> timeOfDay;

  final TfArg<String> timeZone;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'time_of_day': timeOfDay.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum MqBrokerDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const MqBrokerDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `user` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerUser {
  const MqBrokerUser({
    this.consoleAccess,
    this.groups,
    required this.password,
    this.replicationUser,
    required this.username,
  });

  final TfArg<bool>? consoleAccess;

  final TfArg<List<String>>? groups;

  final TfArg<String> password;

  final TfArg<bool>? replicationUser;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'console_access': ?consoleAccess?.toTfJson(),
    'groups': ?groups?.toTfJson(),
    'password': password.toTfJson(),
    'replication_user': ?replicationUser?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_mq_broker`.
final class AwsMqBroker extends Resource {
  static const String tfType = 'aws_mq_broker';

  AwsMqBroker(
    super.localName, {
    TfArg<bool>? applyImmediately,
    TfArg<MqBrokerAuthenticationStrategy>? authenticationStrategy,
    TfArg<bool>? autoMinorVersionUpgrade,
    required TfArg<String> brokerName,
    TfArg<MqBrokerDataReplicationMode>? dataReplicationMode,
    TfArg<String>? dataReplicationPrimaryBrokerArn,
    TfArg<MqBrokerDeploymentMode>? deploymentMode,
    required TfArg<MqBrokerEngineType> engineType,
    required TfArg<String> engineVersion,
    required TfArg<String> hostInstanceType,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<String>>? resourceShareArns,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<MqBrokerStorageType>? storageType,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    MqBrokerConfiguration? configuration,
    MqBrokerEncryptionOptions? encryptionOptions,
    MqBrokerLdapServerMetadata? ldapServerMetadata,
    MqBrokerLogs? logs,
    MqBrokerMaintenanceWindowStartTime? maintenanceWindowStartTime,
    List<MqBrokerUser>? user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_immediately': ?applyImmediately,
           'authentication_strategy': ?authenticationStrategy,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'broker_name': brokerName,
           'data_replication_mode': ?dataReplicationMode,
           'data_replication_primary_broker_arn':
               ?dataReplicationPrimaryBrokerArn,
           'deployment_mode': ?deploymentMode,
           'engine_type': engineType,
           'engine_version': engineVersion,
           'host_instance_type': hostInstanceType,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'resource_share_arns': ?resourceShareArns,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'storage_type': ?storageType,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
           if (encryptionOptions != null)
             'encryption_options': TfArg.literal(encryptionOptions.encode()),
           if (ldapServerMetadata != null)
             'ldap_server_metadata': TfArg.literal(ldapServerMetadata.encode()),
           if (logs != null) 'logs': TfArg.literal(logs.encode()),
           if (maintenanceWindowStartTime != null)
             'maintenance_window_start_time': TfArg.literal(
               maintenanceWindowStartTime.encode(),
             ),
           if (user != null)
             'user': TfArg.literal([for (final e in user) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMqBrokerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMqBroker>`.
  RefTo<AwsMqBroker> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `pending_data_replication_mode` attribute.
  TfRef<String> get pendingDataReplicationMode =>
      TfRef.attribute<String>(this, 'pending_data_replication_mode');

  /// Reference to `shared_resources` attribute.
  TfRef<List<Map<String, Object?>>> get sharedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shared_resources');

  /// Reference to `apply_immediately` attribute.
  TfRef<bool> get applyImmediately =>
      TfRef.attribute<bool>(this, 'apply_immediately');

  /// Reference to `authentication_strategy` attribute.
  TfRef<String> get authenticationStrategy =>
      TfRef.attribute<String>(this, 'authentication_strategy');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgrade =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `broker_name` attribute.
  TfRef<String> get brokerName => TfRef.attribute<String>(this, 'broker_name');

  /// Reference to `data_replication_mode` attribute.
  TfRef<String> get dataReplicationMode =>
      TfRef.attribute<String>(this, 'data_replication_mode');

  /// Reference to `data_replication_primary_broker_arn` attribute.
  TfRef<String> get dataReplicationPrimaryBrokerArn =>
      TfRef.attribute<String>(this, 'data_replication_primary_broker_arn');

  /// Reference to `deployment_mode` attribute.
  TfRef<String> get deploymentMode =>
      TfRef.attribute<String>(this, 'deployment_mode');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `host_instance_type` attribute.
  TfRef<String> get hostInstanceType =>
      TfRef.attribute<String>(this, 'host_instance_type');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_share_arns` attribute.
  TfRef<List<String>> get resourceShareArns =>
      TfRef.attribute<List<String>>(this, 'resource_share_arns');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
