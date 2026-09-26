// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mq_broker`.
const Set<String> _awsMqBrokerSensitive = <String>{
  'ldap_server_metadata.service_account_password',
  'user.password',
};

/// Typed helper for the `configuration` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerConfiguration {
  const MqBrokerConfiguration({this.id, this.revision});

  final TfArg<String>? id;

  final TfArg<num>? revision;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (revision != null) 'revision': revision!.toTfJson(),
  };
}

/// Typed helper for the `encryption_options` block of
/// `aws_mq_broker` (derived from provider schema).
@immutable
final class MqBrokerEncryptionOptions {
  const MqBrokerEncryptionOptions({this.kmsKeyId, this.useAwsOwnedKey});

  final TfArg<String>? kmsKeyId;

  final TfArg<bool>? useAwsOwnedKey;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (useAwsOwnedKey != null) 'use_aws_owned_key': useAwsOwnedKey!.toTfJson(),
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

  final TfArg<List<Object?>>? hosts;

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
    if (hosts != null) 'hosts': hosts!.toTfJson(),
    if (roleBase != null) 'role_base': roleBase!.toTfJson(),
    if (roleName != null) 'role_name': roleName!.toTfJson(),
    if (roleSearchMatching != null)
      'role_search_matching': roleSearchMatching!.toTfJson(),
    if (roleSearchSubtree != null)
      'role_search_subtree': roleSearchSubtree!.toTfJson(),
    if (serviceAccountPassword != null)
      'service_account_password': serviceAccountPassword!.toTfJson(),
    if (serviceAccountUsername != null)
      'service_account_username': serviceAccountUsername!.toTfJson(),
    if (userBase != null) 'user_base': userBase!.toTfJson(),
    if (userRoleName != null) 'user_role_name': userRoleName!.toTfJson(),
    if (userSearchMatching != null)
      'user_search_matching': userSearchMatching!.toTfJson(),
    if (userSearchSubtree != null)
      'user_search_subtree': userSearchSubtree!.toTfJson(),
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
    if (audit != null) 'audit': audit!.toTfJson(),
    if (general != null) 'general': general!.toTfJson(),
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

  final TfArg<String> dayOfWeek;

  final TfArg<String> timeOfDay;

  final TfArg<String> timeZone;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'time_of_day': timeOfDay.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
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

  final TfArg<List<Object?>>? groups;

  final TfArg<String> password;

  final TfArg<bool>? replicationUser;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    if (consoleAccess != null) 'console_access': consoleAccess!.toTfJson(),
    if (groups != null) 'groups': groups!.toTfJson(),
    'password': password.toTfJson(),
    if (replicationUser != null)
      'replication_user': replicationUser!.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_mq_broker`.
final class AwsMqBroker extends Resource {
  static const String tfType = 'aws_mq_broker';

  AwsMqBroker({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<String>? authenticationStrategy,
    TfArg<bool>? autoMinorVersionUpgrade,
    required TfArg<String> brokerName,
    TfArg<String>? dataReplicationMode,
    TfArg<String>? dataReplicationPrimaryBrokerArn,
    TfArg<String>? deploymentMode,
    required TfArg<String> engineType,
    required TfArg<String> engineVersion,
    required TfArg<String> hostInstanceType,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<List<String>>? resourceShareArns,
    TfArg<List<String>>? securityGroups,
    TfArg<String>? storageType,
    TfArg<List<String>>? subnetIds,
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
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (authenticationStrategy != null)
             'authentication_strategy': authenticationStrategy,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           'broker_name': brokerName,
           if (dataReplicationMode != null)
             'data_replication_mode': dataReplicationMode,
           if (dataReplicationPrimaryBrokerArn != null)
             'data_replication_primary_broker_arn':
                 dataReplicationPrimaryBrokerArn,
           if (deploymentMode != null) 'deployment_mode': deploymentMode,
           'engine_type': engineType,
           'engine_version': engineVersion,
           'host_instance_type': hostInstanceType,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (resourceShareArns != null)
             'resource_share_arns': resourceShareArns,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (storageType != null) 'storage_type': storageType,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
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
}
