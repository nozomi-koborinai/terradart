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
extension type const MqBrokerAuthenticationStrategy._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerAuthenticationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  MqBrokerAuthenticationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerAuthenticationStrategy.arg(TfArg<String> arg) : this._(arg);

  static const simple = MqBrokerAuthenticationStrategy._(
    TfArgLiteral('SIMPLE'),
  );
  static const ldap = MqBrokerAuthenticationStrategy._(TfArgLiteral('LDAP'));
  static const configManaged = MqBrokerAuthenticationStrategy._(
    TfArgLiteral('CONFIG_MANAGED'),
  );

  static const List<MqBrokerAuthenticationStrategy> values = [
    simple,
    ldap,
    configManaged,
  ];
}

/// Mq Broker Data Replication enum for `data_replication_mode`.
extension type const MqBrokerDataReplicationMode._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerDataReplicationMode.variable(String name)
    : this._(TfArg.variable(name));
  MqBrokerDataReplicationMode.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerDataReplicationMode.arg(TfArg<String> arg) : this._(arg);

  static const none = MqBrokerDataReplicationMode._(TfArgLiteral('NONE'));
  static const crdr = MqBrokerDataReplicationMode._(TfArgLiteral('CRDR'));

  static const List<MqBrokerDataReplicationMode> values = [none, crdr];
}

/// Mq Broker Deployment enum for `deployment_mode`.
extension type const MqBrokerDeploymentMode._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerDeploymentMode.variable(String name) : this._(TfArg.variable(name));
  MqBrokerDeploymentMode.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerDeploymentMode.arg(TfArg<String> arg) : this._(arg);

  static const singleInstance = MqBrokerDeploymentMode._(
    TfArgLiteral('SINGLE_INSTANCE'),
  );
  static const activeStandbyMultiAz = MqBrokerDeploymentMode._(
    TfArgLiteral('ACTIVE_STANDBY_MULTI_AZ'),
  );
  static const clusterMultiAz = MqBrokerDeploymentMode._(
    TfArgLiteral('CLUSTER_MULTI_AZ'),
  );

  static const List<MqBrokerDeploymentMode> values = [
    singleInstance,
    activeStandbyMultiAz,
    clusterMultiAz,
  ];
}

/// Mq Broker Engine enum for `engine_type`.
extension type const MqBrokerEngineType._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerEngineType.variable(String name) : this._(TfArg.variable(name));
  MqBrokerEngineType.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerEngineType.arg(TfArg<String> arg) : this._(arg);

  static const activemq = MqBrokerEngineType._(TfArgLiteral('ACTIVEMQ'));
  static const rabbitmq = MqBrokerEngineType._(TfArgLiteral('RABBITMQ'));

  static const List<MqBrokerEngineType> values = [activemq, rabbitmq];
}

/// Mq Broker Storage enum for `storage_type`.
extension type const MqBrokerStorageType._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerStorageType.variable(String name) : this._(TfArg.variable(name));
  MqBrokerStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerStorageType.arg(TfArg<String> arg) : this._(arg);

  static const ebs = MqBrokerStorageType._(TfArgLiteral('EBS'));
  static const efs = MqBrokerStorageType._(TfArgLiteral('EFS'));

  static const List<MqBrokerStorageType> values = [ebs, efs];
}

/// Typed helper for the `configuration` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerConfiguration {
  const MqBrokerConfiguration({this.id, this.revision});

  final TfArg<String>? id;

  final TfArg<num>? revision;

  @internal
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

  @internal
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

  final Sensitive<String>? serviceAccountPassword;

  final TfArg<String>? serviceAccountUsername;

  final TfArg<String>? userBase;

  final TfArg<String>? userRoleName;

  final TfArg<String>? userSearchMatching;

  final TfArg<bool>? userSearchSubtree;

  @internal
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

  @internal
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

  final MqBrokerDayOfWeek dayOfWeek;

  final TfArg<String> timeOfDay;

  final TfArg<String> timeZone;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'time_of_day': timeOfDay.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const MqBrokerDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  MqBrokerDayOfWeek.variable(String name) : this._(TfArg.variable(name));
  MqBrokerDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const MqBrokerDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const monday = MqBrokerDayOfWeek._(TfArgLiteral('MONDAY'));
  static const tuesday = MqBrokerDayOfWeek._(TfArgLiteral('TUESDAY'));
  static const wednesday = MqBrokerDayOfWeek._(TfArgLiteral('WEDNESDAY'));
  static const thursday = MqBrokerDayOfWeek._(TfArgLiteral('THURSDAY'));
  static const friday = MqBrokerDayOfWeek._(TfArgLiteral('FRIDAY'));
  static const saturday = MqBrokerDayOfWeek._(TfArgLiteral('SATURDAY'));
  static const sunday = MqBrokerDayOfWeek._(TfArgLiteral('SUNDAY'));

  static const List<MqBrokerDayOfWeek> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
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

  final Sensitive<String> password;

  final TfArg<bool>? replicationUser;

  final TfArg<String> username;

  @internal
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
    MqBrokerAuthenticationStrategy? authenticationStrategy,
    TfArg<bool>? autoMinorVersionUpgrade,
    required TfArg<String> brokerName,
    MqBrokerDataReplicationMode? dataReplicationMode,
    TfArg<String>? dataReplicationPrimaryBrokerArn,
    MqBrokerDeploymentMode? deploymentMode,
    required MqBrokerEngineType engineType,
    required TfArg<String> engineVersion,
    required TfArg<String> hostInstanceType,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<String>>? resourceShareArns,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    MqBrokerStorageType? storageType,
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
