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

/// Hdinsight Kafka Cluster enum for `tier`.
extension type const HdinsightKafkaClusterTier._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightKafkaClusterTier.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterTier.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = HdinsightKafkaClusterTier._(TfArgLiteral('Premium'));
  static const standard = HdinsightKafkaClusterTier._(TfArgLiteral('Standard'));

  static const List<HdinsightKafkaClusterTier> values = [premium, standard];
}

/// Hdinsight Kafka Cluster Tls Min enum for `tls_min_version`.
extension type const HdinsightKafkaClusterTlsMinVersion._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightKafkaClusterTlsMinVersion.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterTlsMinVersion.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterTlsMinVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p0 = HdinsightKafkaClusterTlsMinVersion._(TfArgLiteral('1.0'));
  static const v1p1 = HdinsightKafkaClusterTlsMinVersion._(TfArgLiteral('1.1'));
  static const v1p2 = HdinsightKafkaClusterTlsMinVersion._(TfArgLiteral('1.2'));
  static const v1p3 = HdinsightKafkaClusterTlsMinVersion._(TfArgLiteral('1.3'));

  static const List<HdinsightKafkaClusterTlsMinVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

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

  final HdinsightKafkaClusterEncryptionAlgorithm? encryptionAlgorithm;

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
extension type const HdinsightKafkaClusterEncryptionAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightKafkaClusterEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterEncryptionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterEncryptionAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const rsaOaep = HdinsightKafkaClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA-OAEP'),
  );
  static const rsaOaep256 = HdinsightKafkaClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA-OAEP-256'),
  );
  static const rsa15 = HdinsightKafkaClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA1_5'),
  );

  static const List<HdinsightKafkaClusterEncryptionAlgorithm> values = [
    rsaOaep,
    rsaOaep256,
    rsa15,
  ];
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

  final HdinsightKafkaClusterConnectionDirection? connectionDirection;

  final TfArg<bool>? privateLinkEnabled;

  @internal
  Map<String, Object?> encode() => {
    'connection_direction': ?connectionDirection?.toTfJson(),
    'private_link_enabled': ?privateLinkEnabled?.toTfJson(),
  };
}

/// `connection_direction` — derived from the provider schema description.
extension type const HdinsightKafkaClusterConnectionDirection._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightKafkaClusterConnectionDirection.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterConnectionDirection.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterConnectionDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const inbound = HdinsightKafkaClusterConnectionDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = HdinsightKafkaClusterConnectionDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<HdinsightKafkaClusterConnectionDirection> values = [
    inbound,
    outbound,
  ];
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

  final HdinsightKafkaClusterPrivateIpAllocationMethod?
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
extension type const HdinsightKafkaClusterPrivateIpAllocationMethod._(
  TfArg<String> _
)
    implements TfArg<String> {
  HdinsightKafkaClusterPrivateIpAllocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterPrivateIpAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterPrivateIpAllocationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = HdinsightKafkaClusterPrivateIpAllocationMethod._(
    TfArgLiteral('dynamic'),
  );
  static const static = HdinsightKafkaClusterPrivateIpAllocationMethod._(
    TfArgLiteral('static'),
  );

  static const List<HdinsightKafkaClusterPrivateIpAllocationMethod> values = [
    dynamic,
    static,
  ];
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

  final HdinsightKafkaClusterVmSize vmSize;

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

/// `vm_size` — derived from the provider schema description.
extension type const HdinsightKafkaClusterVmSize._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightKafkaClusterVmSize.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightKafkaClusterVmSize.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightKafkaClusterVmSize.arg(TfArg<String> arg) : this._(arg);

  static const extrasmall = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('ExtraSmall'),
  );
  static const small = HdinsightKafkaClusterVmSize._(TfArgLiteral('Small'));
  static const medium = HdinsightKafkaClusterVmSize._(TfArgLiteral('Medium'));
  static const large = HdinsightKafkaClusterVmSize._(TfArgLiteral('Large'));
  static const extralarge = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('ExtraLarge'),
  );
  static const a5 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A5'));
  static const a6 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A6'));
  static const a7 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A7'));
  static const a8 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A8'));
  static const a9 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A9'));
  static const a10 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A10'));
  static const a11 = HdinsightKafkaClusterVmSize._(TfArgLiteral('A11'));
  static const standardA1V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A1_V2'),
  );
  static const standardA2V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A2_V2'),
  );
  static const standardA2mV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A2m_V2'),
  );
  static const standardA3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A3'),
  );
  static const standardA4V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A4_V2'),
  );
  static const standardA4mV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A4m_V2'),
  );
  static const standardA8V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A8_V2'),
  );
  static const standardA8mV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_A8m_V2'),
  );
  static const standardD1 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D1'),
  );
  static const standardD2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D2'),
  );
  static const standardD3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D3'),
  );
  static const standardD4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D4'),
  );
  static const standardD11 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D11'),
  );
  static const standardD12 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D12'),
  );
  static const standardD13 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D13'),
  );
  static const standardD14 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D14'),
  );
  static const standardD1V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D1_V2'),
  );
  static const standardD2V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D2_V2'),
  );
  static const standardD3V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D3_V2'),
  );
  static const standardD4V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D4_V2'),
  );
  static const standardD5V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D5_V2'),
  );
  static const standardD11V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D11_V2'),
  );
  static const standardD12V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D12_V2'),
  );
  static const standardD13V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D13_V2'),
  );
  static const standardD14V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D14_V2'),
  );
  static const standardDs1V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS1_V2'),
  );
  static const standardDs2V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS2_V2'),
  );
  static const standardDs3V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS3_V2'),
  );
  static const standardDs4V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS4_V2'),
  );
  static const standardDs5V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS5_V2'),
  );
  static const standardDs11V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS11_V2'),
  );
  static const standardDs12V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS12_V2'),
  );
  static const standardDs13V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS13_V2'),
  );
  static const standardDs14V2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_DS14_V2'),
  );
  static const standardE2V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E2_V3'),
  );
  static const standardE4V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E4_V3'),
  );
  static const standardE8V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E8_V3'),
  );
  static const standardE16V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E16_V3'),
  );
  static const standardE20V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E20_V3'),
  );
  static const standardE32V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E32_V3'),
  );
  static const standardE64V3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64_V3'),
  );
  static const standardE64iV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64i_V3'),
  );
  static const standardE2sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E2s_V3'),
  );
  static const standardE4sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E4s_V3'),
  );
  static const standardE8sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E8s_V3'),
  );
  static const standardE16sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E16s_V3'),
  );
  static const standardE20sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E20s_V3'),
  );
  static const standardE32sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E32s_V3'),
  );
  static const standardE64sV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64s_V3'),
  );
  static const standardE64isV3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64is_V3'),
  );
  static const standardD2aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D2a_V4'),
  );
  static const standardD4aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D4a_V4'),
  );
  static const standardD8aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D8a_V4'),
  );
  static const standardD16aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D16a_V4'),
  );
  static const standardD32aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D32a_V4'),
  );
  static const standardD48aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D48a_V4'),
  );
  static const standardD64aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D64a_V4'),
  );
  static const standardD96aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D96a_V4'),
  );
  static const standardE2aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E2a_V4'),
  );
  static const standardE4aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E4a_V4'),
  );
  static const standardE8aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E8a_V4'),
  );
  static const standardE16aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E16a_V4'),
  );
  static const standardE20aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E20a_V4'),
  );
  static const standardE32aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E32a_V4'),
  );
  static const standardE48aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E48a_V4'),
  );
  static const standardE64aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64a_V4'),
  );
  static const standardE96aV4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E96a_V4'),
  );
  static const standardD2adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D2ads_V5'),
  );
  static const standardD4adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D4ads_V5'),
  );
  static const standardD8adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D8ads_V5'),
  );
  static const standardD16adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D16ads_V5'),
  );
  static const standardD32adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D32ads_V5'),
  );
  static const standardD48adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D48ads_V5'),
  );
  static const standardD64adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D64ads_V5'),
  );
  static const standardD96adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_D96ads_V5'),
  );
  static const standardE2adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E2ads_V5'),
  );
  static const standardE4adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E4ads_V5'),
  );
  static const standardE8adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E8ads_V5'),
  );
  static const standardE16adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E16ads_V5'),
  );
  static const standardE20adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E20ads_V5'),
  );
  static const standardE32adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E32ads_V5'),
  );
  static const standardE48adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E48ads_V5'),
  );
  static const standardE64adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E64ads_V5'),
  );
  static const standardE96adsV5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_E96ads_V5'),
  );
  static const standardG1 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_G1'),
  );
  static const standardG2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_G2'),
  );
  static const standardG3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_G3'),
  );
  static const standardG4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_G4'),
  );
  static const standardG5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_G5'),
  );
  static const standardF2sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F2s_V2'),
  );
  static const standardF4sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F4s_V2'),
  );
  static const standardF8sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F8s_V2'),
  );
  static const standardF16sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F16s_V2'),
  );
  static const standardF32sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F32s_V2'),
  );
  static const standardF64sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F64s_V2'),
  );
  static const standardF72sV2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_F72s_V2'),
  );
  static const standardGs1 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_GS1'),
  );
  static const standardGs2 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_GS2'),
  );
  static const standardGs3 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_GS3'),
  );
  static const standardGs4 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_GS4'),
  );
  static const standardGs5 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_GS5'),
  );
  static const standardNc24 = HdinsightKafkaClusterVmSize._(
    TfArgLiteral('Standard_NC24'),
  );

  static const List<HdinsightKafkaClusterVmSize> values = [
    extrasmall,
    small,
    medium,
    large,
    extralarge,
    a5,
    a6,
    a7,
    a8,
    a9,
    a10,
    a11,
    standardA1V2,
    standardA2V2,
    standardA2mV2,
    standardA3,
    standardA4V2,
    standardA4mV2,
    standardA8V2,
    standardA8mV2,
    standardD1,
    standardD2,
    standardD3,
    standardD4,
    standardD11,
    standardD12,
    standardD13,
    standardD14,
    standardD1V2,
    standardD2V2,
    standardD3V2,
    standardD4V2,
    standardD5V2,
    standardD11V2,
    standardD12V2,
    standardD13V2,
    standardD14V2,
    standardDs1V2,
    standardDs2V2,
    standardDs3V2,
    standardDs4V2,
    standardDs5V2,
    standardDs11V2,
    standardDs12V2,
    standardDs13V2,
    standardDs14V2,
    standardE2V3,
    standardE4V3,
    standardE8V3,
    standardE16V3,
    standardE20V3,
    standardE32V3,
    standardE64V3,
    standardE64iV3,
    standardE2sV3,
    standardE4sV3,
    standardE8sV3,
    standardE16sV3,
    standardE20sV3,
    standardE32sV3,
    standardE64sV3,
    standardE64isV3,
    standardD2aV4,
    standardD4aV4,
    standardD8aV4,
    standardD16aV4,
    standardD32aV4,
    standardD48aV4,
    standardD64aV4,
    standardD96aV4,
    standardE2aV4,
    standardE4aV4,
    standardE8aV4,
    standardE16aV4,
    standardE20aV4,
    standardE32aV4,
    standardE48aV4,
    standardE64aV4,
    standardE96aV4,
    standardD2adsV5,
    standardD4adsV5,
    standardD8adsV5,
    standardD16adsV5,
    standardD32adsV5,
    standardD48adsV5,
    standardD64adsV5,
    standardD96adsV5,
    standardE2adsV5,
    standardE4adsV5,
    standardE8adsV5,
    standardE16adsV5,
    standardE20adsV5,
    standardE32adsV5,
    standardE48adsV5,
    standardE64adsV5,
    standardE96adsV5,
    standardG1,
    standardG2,
    standardG3,
    standardG4,
    standardG5,
    standardF2sV2,
    standardF4sV2,
    standardF8sV2,
    standardF16sV2,
    standardF32sV2,
    standardF64sV2,
    standardF72sV2,
    standardGs1,
    standardGs2,
    standardGs3,
    standardGs4,
    standardGs5,
    standardNc24,
  ];
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

  final HdinsightKafkaClusterVmSize vmSize;

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

  final HdinsightKafkaClusterVmSize vmSize;

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

  final HdinsightKafkaClusterVmSize vmSize;

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
    required HdinsightKafkaClusterTier tier,
    required HdinsightKafkaClusterTlsMinVersion tlsMinVersion,
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
