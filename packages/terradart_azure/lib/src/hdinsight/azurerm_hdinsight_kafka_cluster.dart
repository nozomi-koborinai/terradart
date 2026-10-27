// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_hdinsight_kafka_cluster`.
const Set<String> _azurermHdinsightKafkaClusterSensitive = <String>{
  'extension.primary_key',
  'gateway.password',
  'metastores.ambari.password',
  'metastores.hive.password',
  'metastores.oozie.password',
  'monitor.primary_key',
  'roles.head_node.password',
  'roles.kafka_management_node.password',
  'roles.worker_node.password',
  'roles.zookeeper_node.password',
  'security_profile.domain_user_password',
  'storage_account.storage_account_key',
};

/// Typed helper for the `component_version` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterComponentVersion {
  const HdinsightKafkaClusterComponentVersion({required this.kafka});

  final TfArg<String> kafka;

  @internal
  Map<String, Object?> encode() => {'kafka': kafka.toTfJson()};
}

/// Typed helper for the `compute_isolation` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterComputeIsolation {
  const HdinsightKafkaClusterComputeIsolation({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterDiskEncryption {
  const HdinsightKafkaClusterDiskEncryption({
    this.encryptionAlgorithm,
    this.encryptionAtHostEnabled,
    this.keyVaultKeyId,
    this.keyVaultManagedIdentityId,
  });

  final TfArg<String>? encryptionAlgorithm;

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

/// Typed helper for the `extension` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterExtension {
  const HdinsightKafkaClusterExtension({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterGateway {
  const HdinsightKafkaClusterGateway({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterMetastores {
  const HdinsightKafkaClusterMetastores({this.ambari, this.hive, this.oozie});

  final HdinsightKafkaClusterAmbari? ambari;

  final HdinsightKafkaClusterHive? hive;

  final HdinsightKafkaClusterOozie? oozie;

  @internal
  Map<String, Object?> encode() => {
    'ambari': ?ambari?.encode(),
    'hive': ?hive?.encode(),
    'oozie': ?oozie?.encode(),
  };
}

/// Typed helper for the `metastores.ambari` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterAmbari {
  const HdinsightKafkaClusterAmbari({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterHive {
  const HdinsightKafkaClusterHive({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterOozie {
  const HdinsightKafkaClusterOozie({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterMonitor {
  const HdinsightKafkaClusterMonitor({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterNetwork {
  const HdinsightKafkaClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  final TfArg<String>? connectionDirection;

  final TfArg<bool>? privateLinkEnabled;

  @internal
  Map<String, Object?> encode() => {
    'connection_direction': ?connectionDirection?.toTfJson(),
    'private_link_enabled': ?privateLinkEnabled?.toTfJson(),
  };
}

/// Typed helper for the `private_link_configuration` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterPrivateLinkConfiguration {
  const HdinsightKafkaClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.name,
    required this.ipConfiguration,
  });

  final TfArg<String> groupId;

  final TfArg<String> name;

  final HdinsightKafkaClusterIpConfiguration ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'name': name.toTfJson(),
    'ip_configuration': ipConfiguration.encode(),
  };
}

/// Typed helper for the `private_link_configuration.ip_configuration` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterIpConfiguration {
  const HdinsightKafkaClusterIpConfiguration({
    required this.name,
    this.primary,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? privateIpAddress;

  final TfArg<String>? privateIpAllocationMethod;

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

/// Typed helper for the `rest_proxy` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterRestProxy {
  const HdinsightKafkaClusterRestProxy({
    required this.securityGroupId,
    required this.securityGroupName,
  });

  final TfArg<String> securityGroupId;

  final TfArg<String> securityGroupName;

  @internal
  Map<String, Object?> encode() => {
    'security_group_id': securityGroupId.toTfJson(),
    'security_group_name': securityGroupName.toTfJson(),
  };
}

/// Typed helper for the `roles` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterRoles {
  const HdinsightKafkaClusterRoles({
    required this.headNode,
    this.kafkaManagementNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  final HdinsightKafkaClusterHeadNode headNode;

  final HdinsightKafkaClusterKafkaManagementNode? kafkaManagementNode;

  final HdinsightKafkaClusterWorkerNode workerNode;

  final HdinsightKafkaClusterZookeeperNode zookeeperNode;

  @internal
  Map<String, Object?> encode() => {
    'head_node': headNode.encode(),
    'kafka_management_node': ?kafkaManagementNode?.encode(),
    'worker_node': workerNode.encode(),
    'zookeeper_node': zookeeperNode.encode(),
  };
}

/// Typed helper for the `roles.head_node` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterHeadNode {
  const HdinsightKafkaClusterHeadNode({
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

  final List<HdinsightKafkaClusterScriptActions>? scriptActions;

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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class HdinsightKafkaClusterScriptActions {
  const HdinsightKafkaClusterScriptActions({
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

/// Typed helper for the `roles.kafka_management_node` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterKafkaManagementNode {
  const HdinsightKafkaClusterKafkaManagementNode({
    this.password,
    this.sshKeys,
    this.subnetId,
    this.virtualNetworkId,
    required this.vmSize,
    this.scriptActions,
  });

  final Sensitive<String>? password;

  final TfArg<List<String>>? sshKeys;

  final TfArg<String>? subnetId;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String> vmSize;

  final List<HdinsightKafkaClusterScriptActions>? scriptActions;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'ssh_keys': ?sshKeys?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    if (scriptActions != null)
      'script_actions': [for (final e in scriptActions!) e.encode()],
  };
}

/// Typed helper for the `roles.worker_node` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterWorkerNode {
  const HdinsightKafkaClusterWorkerNode({
    required this.numberOfDisksPerNode,
    this.password,
    this.sshKeys,
    this.subnetId,
    required this.targetInstanceCount,
    required this.username,
    this.virtualNetworkId,
    required this.vmSize,
    this.scriptActions,
  });

  final TfArg<num> numberOfDisksPerNode;

  final Sensitive<String>? password;

  final TfArg<List<String>>? sshKeys;

  final TfArg<String>? subnetId;

  final TfArg<num> targetInstanceCount;

  final TfArg<String> username;

  final TfArg<String>? virtualNetworkId;

  final TfArg<String> vmSize;

  final List<HdinsightKafkaClusterScriptActions>? scriptActions;

  @internal
  Map<String, Object?> encode() => {
    'number_of_disks_per_node': numberOfDisksPerNode.toTfJson(),
    'password': ?password?.toTfJson(),
    'ssh_keys': ?sshKeys?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'target_instance_count': targetInstanceCount.toTfJson(),
    'username': username.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    if (scriptActions != null)
      'script_actions': [for (final e in scriptActions!) e.encode()],
  };
}

/// Typed helper for the `roles.zookeeper_node` block of
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterZookeeperNode {
  const HdinsightKafkaClusterZookeeperNode({
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

  final List<HdinsightKafkaClusterScriptActions>? scriptActions;

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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterSecurityProfile {
  const HdinsightKafkaClusterSecurityProfile({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterStorageAccount {
  const HdinsightKafkaClusterStorageAccount({
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
/// `azurerm_hdinsight_kafka_cluster` (derived from provider schema).
@immutable
final class HdinsightKafkaClusterStorageAccountGen2 {
  const HdinsightKafkaClusterStorageAccountGen2({
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

/// Factory wrapper for `azurerm_hdinsight_kafka_cluster`.
final class AzurermHdinsightKafkaCluster extends Resource {
  static const String tfType = 'azurerm_hdinsight_kafka_cluster';

  AzurermHdinsightKafkaCluster(
    super.localName, {
    required TfArg<String> clusterVersion,
    TfArg<bool>? encryptionInTransitEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tier,
    required TfArg<String> tlsMinVersion,
    required HdinsightKafkaClusterComponentVersion componentVersion,
    HdinsightKafkaClusterComputeIsolation? computeIsolation,
    List<HdinsightKafkaClusterDiskEncryption>? diskEncryption,
    HdinsightKafkaClusterExtension? extension,
    required HdinsightKafkaClusterGateway gateway,
    HdinsightKafkaClusterMetastores? metastores,
    HdinsightKafkaClusterMonitor? monitor,
    HdinsightKafkaClusterNetwork? network,
    HdinsightKafkaClusterPrivateLinkConfiguration? privateLinkConfiguration,
    HdinsightKafkaClusterRestProxy? restProxy,
    required HdinsightKafkaClusterRoles roles,
    HdinsightKafkaClusterSecurityProfile? securityProfile,
    List<HdinsightKafkaClusterStorageAccount>? storageAccount,
    HdinsightKafkaClusterStorageAccountGen2? storageAccountGen2,
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
           if (restProxy != null)
             'rest_proxy': TfArg.literal(restProxy.encode()),
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
  Set<String> get sensitiveFields => _azurermHdinsightKafkaClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHdinsightKafkaCluster>`.
  RefTo<AzurermHdinsightKafkaCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `https_endpoint` attribute.
  TfRef<String> get httpsEndpoint =>
      TfRef.attribute<String>(this, 'https_endpoint');

  /// Reference to `kafka_rest_proxy_endpoint` attribute.
  TfRef<String> get kafkaRestProxyEndpoint =>
      TfRef.attribute<String>(this, 'kafka_rest_proxy_endpoint');

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
