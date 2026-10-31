// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_hdinsight_interactive_query_cluster`.
const Set<String> _azurermHdinsightInteractiveQueryClusterSensitive = <String>{
  'extension.primary_key',
  'gateway.password',
  'metastores.ambari.password',
  'metastores.hive.password',
  'metastores.oozie.password',
  'monitor.primary_key',
  'roles.head_node.password',
  'roles.worker_node.password',
  'roles.zookeeper_node.password',
  'security_profile.domain_user_password',
  'storage_account.storage_account_key',
};

/// Hdinsight Interactive Query Cluster enum for `tier`.
extension type const HdinsightInteractiveQueryClusterTier._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightInteractiveQueryClusterTier.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightInteractiveQueryClusterTier.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightInteractiveQueryClusterTier.arg(TfArg<String> arg)
    : this._(arg);

  static const premium = HdinsightInteractiveQueryClusterTier._(
    TfArgLiteral('Premium'),
  );
  static const standard = HdinsightInteractiveQueryClusterTier._(
    TfArgLiteral('Standard'),
  );

  static const List<HdinsightInteractiveQueryClusterTier> values = [
    premium,
    standard,
  ];
}

/// Hdinsight Interactive Query Cluster Tls Min enum for `tls_min_version`.
extension type const HdinsightInteractiveQueryClusterTlsMinVersion._(
  TfArg<String> _
) implements TfArg<String> {
  HdinsightInteractiveQueryClusterTlsMinVersion.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightInteractiveQueryClusterTlsMinVersion.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightInteractiveQueryClusterTlsMinVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = HdinsightInteractiveQueryClusterTlsMinVersion._(
    TfArgLiteral('1.0'),
  );
  static const v1p1 = HdinsightInteractiveQueryClusterTlsMinVersion._(
    TfArgLiteral('1.1'),
  );
  static const v1p2 = HdinsightInteractiveQueryClusterTlsMinVersion._(
    TfArgLiteral('1.2'),
  );
  static const v1p3 = HdinsightInteractiveQueryClusterTlsMinVersion._(
    TfArgLiteral('1.3'),
  );

  static const List<HdinsightInteractiveQueryClusterTlsMinVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// Typed helper for the `component_version` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterComponentVersion {
  const HdinsightInteractiveQueryClusterComponentVersion({
    required this.interactiveHive,
  });

  final TfArg<String> interactiveHive;

  @internal
  Map<String, Object?> encode() => {
    'interactive_hive': interactiveHive.toTfJson(),
  };
}

/// Typed helper for the `compute_isolation` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterComputeIsolation {
  const HdinsightInteractiveQueryClusterComputeIsolation({
    this.computeIsolationEnabled,
    this.hostSku,
  });

  final TfArg<bool>? computeIsolationEnabled;

  final TfArg<String>? hostSku;

  @internal
  Map<String, Object?> encode() => {
    'compute_isolation_enabled': ?computeIsolationEnabled?.toTfJson(),
    'host_sku': ?hostSku?.toTfJson(),
  };
}

/// Typed helper for the `disk_encryption` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterDiskEncryption {
  const HdinsightInteractiveQueryClusterDiskEncryption({
    this.encryptionAlgorithm,
    this.encryptionAtHostEnabled,
    this.keyVaultKeyId,
    this.keyVaultManagedIdentityId,
  });

  final HdinsightInteractiveQueryClusterEncryptionAlgorithm?
  encryptionAlgorithm;

  final TfArg<bool>? encryptionAtHostEnabled;

  final TfArg<String>? keyVaultKeyId;

  final TfArg<String>? keyVaultManagedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'encryption_algorithm': ?encryptionAlgorithm?.toTfJson(),
    'encryption_at_host_enabled': ?encryptionAtHostEnabled?.toTfJson(),
    'key_vault_key_id': ?keyVaultKeyId?.toTfJson(),
    'key_vault_managed_identity_id': ?keyVaultManagedIdentityId?.toTfJson(),
  };
}

/// `encryption_algorithm` — derived from the provider schema description.
extension type const HdinsightInteractiveQueryClusterEncryptionAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  HdinsightInteractiveQueryClusterEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightInteractiveQueryClusterEncryptionAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const HdinsightInteractiveQueryClusterEncryptionAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const rsaOaep = HdinsightInteractiveQueryClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA-OAEP'),
  );
  static const rsaOaep256 =
      HdinsightInteractiveQueryClusterEncryptionAlgorithm._(
        TfArgLiteral('RSA-OAEP-256'),
      );
  static const rsa15 = HdinsightInteractiveQueryClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA1_5'),
  );

  static const List<HdinsightInteractiveQueryClusterEncryptionAlgorithm>
  values = [rsaOaep, rsaOaep256, rsa15];
}

/// Typed helper for the `extension` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterExtension {
  const HdinsightInteractiveQueryClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  final TfArg<String> logAnalyticsWorkspaceId;

  final Sensitive<String> primaryKey;

  @internal
  Map<String, Object?> encode() => {
    'log_analytics_workspace_id': logAnalyticsWorkspaceId.toTfJson(),
    'primary_key': primaryKey.toTfJson(),
  };
}

/// Typed helper for the `gateway` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterGateway {
  const HdinsightInteractiveQueryClusterGateway({
    required this.password,
    required this.username,
  });

  final Sensitive<String> password;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `metastores` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterMetastores {
  const HdinsightInteractiveQueryClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  final HdinsightInteractiveQueryClusterAmbari? ambari;

  final HdinsightInteractiveQueryClusterHive? hive;

  final HdinsightInteractiveQueryClusterOozie? oozie;

  @internal
  Map<String, Object?> encode() => {
    'ambari': ?ambari?.encode(),
    'hive': ?hive?.encode(),
    'oozie': ?oozie?.encode(),
  };
}

/// Typed helper for the `metastores.ambari` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterAmbari {
  const HdinsightInteractiveQueryClusterAmbari({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  final TfArg<String> databaseName;

  final Sensitive<String> password;

  final TfArg<String> server;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'password': password.toTfJson(),
    'server': server.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `metastores.hive` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterHive {
  const HdinsightInteractiveQueryClusterHive({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  final TfArg<String> databaseName;

  final Sensitive<String> password;

  final TfArg<String> server;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'password': password.toTfJson(),
    'server': server.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `metastores.oozie` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterOozie {
  const HdinsightInteractiveQueryClusterOozie({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  final TfArg<String> databaseName;

  final Sensitive<String> password;

  final TfArg<String> server;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'password': password.toTfJson(),
    'server': server.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `monitor` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterMonitor {
  const HdinsightInteractiveQueryClusterMonitor({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  final TfArg<String> logAnalyticsWorkspaceId;

  final Sensitive<String> primaryKey;

  @internal
  Map<String, Object?> encode() => {
    'log_analytics_workspace_id': logAnalyticsWorkspaceId.toTfJson(),
    'primary_key': primaryKey.toTfJson(),
  };
}

/// Typed helper for the `network` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterNetwork {
  const HdinsightInteractiveQueryClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  final HdinsightInteractiveQueryClusterConnectionDirection?
  connectionDirection;

  final TfArg<bool>? privateLinkEnabled;

  @internal
  Map<String, Object?> encode() => {
    'connection_direction': ?connectionDirection?.toTfJson(),
    'private_link_enabled': ?privateLinkEnabled?.toTfJson(),
  };
}

/// `connection_direction` — derived from the provider schema description.
extension type const HdinsightInteractiveQueryClusterConnectionDirection._(
  TfArg<String> _
) implements TfArg<String> {
  HdinsightInteractiveQueryClusterConnectionDirection.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightInteractiveQueryClusterConnectionDirection.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const HdinsightInteractiveQueryClusterConnectionDirection.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const inbound = HdinsightInteractiveQueryClusterConnectionDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = HdinsightInteractiveQueryClusterConnectionDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<HdinsightInteractiveQueryClusterConnectionDirection>
  values = [inbound, outbound];
}

/// Typed helper for the `private_link_configuration` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterPrivateLinkConfiguration {
  const HdinsightInteractiveQueryClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.name,
    required this.ipConfiguration,
  });

  final TfArg<String> groupId;

  final TfArg<String> name;

  final HdinsightInteractiveQueryClusterIpConfiguration ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'name': name.toTfJson(),
    'ip_configuration': ipConfiguration.encode(),
  };
}

/// Typed helper for the `private_link_configuration.ip_configuration` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterIpConfiguration {
  const HdinsightInteractiveQueryClusterIpConfiguration({
    required this.name,
    this.primary,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? privateIpAddress;

  final HdinsightInteractiveQueryClusterPrivateIpAllocationMethod?
  privateIpAllocationMethod;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_allocation_method': ?privateIpAllocationMethod?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// `private_ip_allocation_method` — derived from the provider schema description.
extension type const HdinsightInteractiveQueryClusterPrivateIpAllocationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  HdinsightInteractiveQueryClusterPrivateIpAllocationMethod.variable(
    String name,
  ) : this._(TfArg.variable(name));
  HdinsightInteractiveQueryClusterPrivateIpAllocationMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const HdinsightInteractiveQueryClusterPrivateIpAllocationMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      HdinsightInteractiveQueryClusterPrivateIpAllocationMethod._(
        TfArgLiteral('dynamic'),
      );
  static const static =
      HdinsightInteractiveQueryClusterPrivateIpAllocationMethod._(
        TfArgLiteral('static'),
      );

  static const List<HdinsightInteractiveQueryClusterPrivateIpAllocationMethod>
  values = [dynamic, static];
}

/// Typed helper for the `roles` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterRoles {
  const HdinsightInteractiveQueryClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  final HdinsightInteractiveQueryClusterHeadNode headNode;

  final HdinsightInteractiveQueryClusterWorkerNode workerNode;

  final HdinsightInteractiveQueryClusterZookeeperNode zookeeperNode;

  @internal
  Map<String, Object?> encode() => {
    'head_node': headNode.encode(),
    'worker_node': workerNode.encode(),
    'zookeeper_node': zookeeperNode.encode(),
  };
}

/// Typed helper for the `roles.head_node` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterHeadNode {
  const HdinsightInteractiveQueryClusterHeadNode({
    this.password,
    this.sshKeys,
    this.subnetId,
    required this.username,
    this.virtualNetworkId,
    required this.vmSize,
    this.scriptActions,
  });

  final Sensitive<String>? password;

  final TfArg<List<String>>? sshKeys;

  final TfArg<String>? subnetId;

  final TfArg<String> username;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String> vmSize;

  final List<HdinsightInteractiveQueryClusterScriptActions>? scriptActions;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'ssh_keys': ?sshKeys?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'username': username.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    if (scriptActions != null)
      'script_actions': [for (final e in scriptActions!) e.encode()],
  };
}

/// Typed helper for the `roles.head_node.script_actions` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class HdinsightInteractiveQueryClusterScriptActions {
  const HdinsightInteractiveQueryClusterScriptActions({
    required this.name,
    this.parameters,
    required this.uri,
  });

  final TfArg<String> name;

  final TfArg<String>? parameters;

  final TfArg<String> uri;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `roles.worker_node` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterWorkerNode {
  const HdinsightInteractiveQueryClusterWorkerNode({
    this.password,
    this.sshKeys,
    this.subnetId,
    required this.targetInstanceCount,
    required this.username,
    this.virtualNetworkId,
    required this.vmSize,
    this.autoscale,
    this.scriptActions,
  });

  final Sensitive<String>? password;

  final TfArg<List<String>>? sshKeys;

  final TfArg<String>? subnetId;

  final TfArg<num> targetInstanceCount;

  final TfArg<String> username;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String> vmSize;

  final HdinsightInteractiveQueryClusterAutoscale? autoscale;

  final List<HdinsightInteractiveQueryClusterScriptActions>? scriptActions;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'ssh_keys': ?sshKeys?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'target_instance_count': targetInstanceCount.toTfJson(),
    'username': username.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    'autoscale': ?autoscale?.encode(),
    if (scriptActions != null)
      'script_actions': [for (final e in scriptActions!) e.encode()],
  };
}

/// Typed helper for the `roles.worker_node.autoscale` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterAutoscale {
  const HdinsightInteractiveQueryClusterAutoscale({this.recurrence});

  final HdinsightInteractiveQueryClusterRecurrence? recurrence;

  @internal
  Map<String, Object?> encode() => {'recurrence': ?recurrence?.encode()};
}

/// Typed helper for the `roles.worker_node.autoscale.recurrence` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterRecurrence {
  const HdinsightInteractiveQueryClusterRecurrence({
    required this.timezone,
    required this.schedule,
  });

  final TfArg<String> timezone;

  final List<HdinsightInteractiveQueryClusterSchedule> schedule;

  @internal
  Map<String, Object?> encode() => {
    'timezone': timezone.toTfJson(),
    'schedule': [for (final e in schedule) e.encode()],
  };
}

/// Typed helper for the `roles.worker_node.autoscale.recurrence.schedule` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterSchedule {
  const HdinsightInteractiveQueryClusterSchedule({
    required this.days,
    required this.targetInstanceCount,
    required this.time,
  });

  final TfArg<List<String>> days;

  final TfArg<num> targetInstanceCount;

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {
    'days': days.toTfJson(),
    'target_instance_count': targetInstanceCount.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// Typed helper for the `roles.zookeeper_node` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterZookeeperNode {
  const HdinsightInteractiveQueryClusterZookeeperNode({
    this.password,
    this.sshKeys,
    this.subnetId,
    required this.username,
    this.virtualNetworkId,
    required this.vmSize,
    this.scriptActions,
  });

  final Sensitive<String>? password;

  final TfArg<List<String>>? sshKeys;

  final TfArg<String>? subnetId;

  final TfArg<String> username;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String> vmSize;

  final List<HdinsightInteractiveQueryClusterScriptActions>? scriptActions;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'ssh_keys': ?sshKeys?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'username': username.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    if (scriptActions != null)
      'script_actions': [for (final e in scriptActions!) e.encode()],
  };
}

/// Typed helper for the `security_profile` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterSecurityProfile {
  const HdinsightInteractiveQueryClusterSecurityProfile({
    required this.aaddsResourceId,
    this.clusterUsersGroupDns,
    required this.domainName,
    required this.domainUserPassword,
    required this.domainUsername,
    required this.ldapsUrls,
    required this.msiResourceId,
  });

  final TfArg<String> aaddsResourceId;

  final TfArg<List<String>>? clusterUsersGroupDns;

  final TfArg<String> domainName;

  final Sensitive<String> domainUserPassword;

  final TfArg<String> domainUsername;

  final TfArg<List<String>> ldapsUrls;

  final TfArg<String> msiResourceId;

  @internal
  Map<String, Object?> encode() => {
    'aadds_resource_id': aaddsResourceId.toTfJson(),
    'cluster_users_group_dns': ?clusterUsersGroupDns?.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'domain_user_password': domainUserPassword.toTfJson(),
    'domain_username': domainUsername.toTfJson(),
    'ldaps_urls': ldapsUrls.toTfJson(),
    'msi_resource_id': msiResourceId.toTfJson(),
  };
}

/// Typed helper for the `storage_account` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterStorageAccount {
  const HdinsightInteractiveQueryClusterStorageAccount({
    required this.isDefault,
    this.storageAccountId,
    required this.storageAccountKey,
    required this.storageContainerUrl,
  });

  final TfArg<bool> isDefault;

  final TfArg<String>? storageAccountId;

  final Sensitive<String> storageAccountKey;

  final TfArg<String> storageContainerUrl;

  @internal
  Map<String, Object?> encode() => {
    'is_default': isDefault.toTfJson(),
    'storage_account_id': ?storageAccountId?.toTfJson(),
    'storage_account_key': storageAccountKey.toTfJson(),
    'storage_container_url': storageContainerUrl.toTfJson(),
  };
}

/// Typed helper for the `storage_account_gen2` block of
/// `azurerm_hdinsight_interactive_query_cluster` (derived from provider schema).
@immutable
final class HdinsightInteractiveQueryClusterStorageAccountGen2 {
  const HdinsightInteractiveQueryClusterStorageAccountGen2({
    required this.filesystemId,
    required this.isDefault,
    required this.storageAccountId,
    required this.userAssignedIdentityId,
  });

  final TfArg<String> filesystemId;

  final TfArg<bool> isDefault;

  final TfArg<String> storageAccountId;

  final TfArg<String> userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'filesystem_id': filesystemId.toTfJson(),
    'is_default': isDefault.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
    'user_assigned_identity_id': userAssignedIdentityId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_hdinsight_interactive_query_cluster`.
final class AzurermHdinsightInteractiveQueryCluster extends Resource {
  static const String tfType = 'azurerm_hdinsight_interactive_query_cluster';

  AzurermHdinsightInteractiveQueryCluster(
    super.localName, {
    required TfArg<String> clusterVersion,
    TfArg<bool>? encryptionInTransitEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required HdinsightInteractiveQueryClusterTier tier,
    required HdinsightInteractiveQueryClusterTlsMinVersion tlsMinVersion,
    required HdinsightInteractiveQueryClusterComponentVersion componentVersion,
    HdinsightInteractiveQueryClusterComputeIsolation? computeIsolation,
    List<HdinsightInteractiveQueryClusterDiskEncryption>? diskEncryption,
    HdinsightInteractiveQueryClusterExtension? extension,
    required HdinsightInteractiveQueryClusterGateway gateway,
    HdinsightInteractiveQueryClusterMetastores? metastores,
    HdinsightInteractiveQueryClusterMonitor? monitor,
    HdinsightInteractiveQueryClusterNetwork? network,
    HdinsightInteractiveQueryClusterPrivateLinkConfiguration?
    privateLinkConfiguration,
    required HdinsightInteractiveQueryClusterRoles roles,
    HdinsightInteractiveQueryClusterSecurityProfile? securityProfile,
    List<HdinsightInteractiveQueryClusterStorageAccount>? storageAccount,
    HdinsightInteractiveQueryClusterStorageAccountGen2? storageAccountGen2,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_version': clusterVersion,
           'encryption_in_transit_enabled': ?encryptionInTransitEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'tier': tier,
           'tls_min_version': tlsMinVersion,
           'component_version': TfArg.literal(componentVersion.encode()),
           if (computeIsolation != null)
             'compute_isolation': TfArg.literal(computeIsolation.encode()),
           if (diskEncryption != null)
             'disk_encryption': TfArg.literal([
               for (final e in diskEncryption) e.encode(),
             ]),
           if (extension != null)
             'extension': TfArg.literal(extension.encode()),
           'gateway': TfArg.literal(gateway.encode()),
           if (metastores != null)
             'metastores': TfArg.literal(metastores.encode()),
           if (monitor != null) 'monitor': TfArg.literal(monitor.encode()),
           if (network != null) 'network': TfArg.literal(network.encode()),
           if (privateLinkConfiguration != null)
             'private_link_configuration': TfArg.literal(
               privateLinkConfiguration.encode(),
             ),
           'roles': TfArg.literal(roles.encode()),
           if (securityProfile != null)
             'security_profile': TfArg.literal(securityProfile.encode()),
           if (storageAccount != null)
             'storage_account': TfArg.literal([
               for (final e in storageAccount) e.encode(),
             ]),
           if (storageAccountGen2 != null)
             'storage_account_gen2': TfArg.literal(storageAccountGen2.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermHdinsightInteractiveQueryClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHdinsightInteractiveQueryCluster>`.
  RefTo<AzurermHdinsightInteractiveQueryCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `https_endpoint` attribute.
  TfRef<String> get httpsEndpoint =>
      TfRef.attribute<String>(this, 'https_endpoint');

  /// Reference to `ssh_endpoint` attribute.
  TfRef<String> get sshEndpoint =>
      TfRef.attribute<String>(this, 'ssh_endpoint');

  /// Reference to `cluster_version` attribute.
  TfRef<String> get clusterVersion =>
      TfRef.attribute<String>(this, 'cluster_version');

  /// Reference to `encryption_in_transit_enabled` attribute.
  TfRef<bool> get encryptionInTransitEnabled =>
      TfRef.attribute<bool>(this, 'encryption_in_transit_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `tls_min_version` attribute.
  TfRef<String> get tlsMinVersion =>
      TfRef.attribute<String>(this, 'tls_min_version');
}
