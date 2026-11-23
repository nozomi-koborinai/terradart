// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_hdinsight_spark_cluster`.
const Set<String> _azurermHdinsightSparkClusterSensitive = <String>{
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

/// Hdinsight Spark Cluster enum for `tier`.
extension type const HdinsightSparkClusterTier._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightSparkClusterTier.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterTier.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = HdinsightSparkClusterTier._(TfArgLiteral('Premium'));
  static const standard = HdinsightSparkClusterTier._(TfArgLiteral('Standard'));

  static const List<HdinsightSparkClusterTier> values = [premium, standard];
}

/// Hdinsight Spark Cluster Tls Min enum for `tls_min_version`.
extension type const HdinsightSparkClusterTlsMinVersion._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightSparkClusterTlsMinVersion.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterTlsMinVersion.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterTlsMinVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p0 = HdinsightSparkClusterTlsMinVersion._(TfArgLiteral('1.0'));
  static const v1p1 = HdinsightSparkClusterTlsMinVersion._(TfArgLiteral('1.1'));
  static const v1p2 = HdinsightSparkClusterTlsMinVersion._(TfArgLiteral('1.2'));
  static const v1p3 = HdinsightSparkClusterTlsMinVersion._(TfArgLiteral('1.3'));

  static const List<HdinsightSparkClusterTlsMinVersion> values = [
    v1p0,
    v1p1,
    v1p2,
    v1p3,
  ];
}

/// Typed helper for the `component_version` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterComponentVersion {
  const HdinsightSparkClusterComponentVersion({required this.spark});

  final TfArg<String> spark;

  @internal
  Map<String, Object?> encode() => {'spark': spark.toTfJson()};
}

/// Typed helper for the `compute_isolation` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterComputeIsolation {
  const HdinsightSparkClusterComputeIsolation({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterDiskEncryption {
  const HdinsightSparkClusterDiskEncryption({
    this.encryptionAlgorithm,
    this.encryptionAtHostEnabled,
    this.keyVaultKeyId,
    this.keyVaultManagedIdentityId,
  });

  final HdinsightSparkClusterEncryptionAlgorithm? encryptionAlgorithm;

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
extension type const HdinsightSparkClusterEncryptionAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightSparkClusterEncryptionAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterEncryptionAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterEncryptionAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const rsaOaep = HdinsightSparkClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA-OAEP'),
  );
  static const rsaOaep256 = HdinsightSparkClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA-OAEP-256'),
  );
  static const rsa15 = HdinsightSparkClusterEncryptionAlgorithm._(
    TfArgLiteral('RSA1_5'),
  );

  static const List<HdinsightSparkClusterEncryptionAlgorithm> values = [
    rsaOaep,
    rsaOaep256,
    rsa15,
  ];
}

/// Typed helper for the `extension` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterExtension {
  const HdinsightSparkClusterExtension({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterGateway {
  const HdinsightSparkClusterGateway({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterMetastores {
  const HdinsightSparkClusterMetastores({this.ambari, this.hive, this.oozie});

  final HdinsightSparkClusterAmbari? ambari;

  final HdinsightSparkClusterHive? hive;

  final HdinsightSparkClusterOozie? oozie;

  @internal
  Map<String, Object?> encode() => {
    'ambari': ?ambari?.encode(),
    'hive': ?hive?.encode(),
    'oozie': ?oozie?.encode(),
  };
}

/// Typed helper for the `metastores.ambari` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterAmbari {
  const HdinsightSparkClusterAmbari({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterHive {
  const HdinsightSparkClusterHive({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterOozie {
  const HdinsightSparkClusterOozie({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterMonitor {
  const HdinsightSparkClusterMonitor({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterNetwork {
  const HdinsightSparkClusterNetwork({
    this.connectionDirection,
    this.privateLinkEnabled,
  });

  final HdinsightSparkClusterConnectionDirection? connectionDirection;

  final TfArg<bool>? privateLinkEnabled;

  @internal
  Map<String, Object?> encode() => {
    'connection_direction': ?connectionDirection?.toTfJson(),
    'private_link_enabled': ?privateLinkEnabled?.toTfJson(),
  };
}

/// `connection_direction` — derived from the provider schema description.
extension type const HdinsightSparkClusterConnectionDirection._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightSparkClusterConnectionDirection.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterConnectionDirection.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterConnectionDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const inbound = HdinsightSparkClusterConnectionDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = HdinsightSparkClusterConnectionDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<HdinsightSparkClusterConnectionDirection> values = [
    inbound,
    outbound,
  ];
}

/// Typed helper for the `private_link_configuration` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterPrivateLinkConfiguration {
  const HdinsightSparkClusterPrivateLinkConfiguration({
    required this.groupId,
    required this.name,
    required this.ipConfiguration,
  });

  final TfArg<String> groupId;

  final TfArg<String> name;

  final HdinsightSparkClusterIpConfiguration ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'name': name.toTfJson(),
    'ip_configuration': ipConfiguration.encode(),
  };
}

/// Typed helper for the `private_link_configuration.ip_configuration` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterIpConfiguration {
  const HdinsightSparkClusterIpConfiguration({
    required this.name,
    this.primary,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? privateIpAddress;

  final HdinsightSparkClusterPrivateIpAllocationMethod?
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
extension type const HdinsightSparkClusterPrivateIpAllocationMethod._(
  TfArg<String> _
)
    implements TfArg<String> {
  HdinsightSparkClusterPrivateIpAllocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterPrivateIpAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterPrivateIpAllocationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = HdinsightSparkClusterPrivateIpAllocationMethod._(
    TfArgLiteral('dynamic'),
  );
  static const static = HdinsightSparkClusterPrivateIpAllocationMethod._(
    TfArgLiteral('static'),
  );

  static const List<HdinsightSparkClusterPrivateIpAllocationMethod> values = [
    dynamic,
    static,
  ];
}

/// Typed helper for the `roles` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterRoles {
  const HdinsightSparkClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  final HdinsightSparkClusterHeadNode headNode;

  final HdinsightSparkClusterWorkerNode workerNode;

  final HdinsightSparkClusterZookeeperNode zookeeperNode;

  @internal
  Map<String, Object?> encode() => {
    'head_node': headNode.encode(),
    'worker_node': workerNode.encode(),
    'zookeeper_node': zookeeperNode.encode(),
  };
}

/// Typed helper for the `roles.head_node` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterHeadNode {
  const HdinsightSparkClusterHeadNode({
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

  final HdinsightSparkClusterVmSize vmSize;

  final List<HdinsightSparkClusterScriptActions>? scriptActions;

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
extension type const HdinsightSparkClusterVmSize._(TfArg<String> _)
    implements TfArg<String> {
  HdinsightSparkClusterVmSize.variable(String name)
    : this._(TfArg.variable(name));
  HdinsightSparkClusterVmSize.expression(String template)
    : this._(TfArg.expression(template));
  const HdinsightSparkClusterVmSize.arg(TfArg<String> arg) : this._(arg);

  static const extrasmall = HdinsightSparkClusterVmSize._(
    TfArgLiteral('ExtraSmall'),
  );
  static const small = HdinsightSparkClusterVmSize._(TfArgLiteral('Small'));
  static const medium = HdinsightSparkClusterVmSize._(TfArgLiteral('Medium'));
  static const large = HdinsightSparkClusterVmSize._(TfArgLiteral('Large'));
  static const extralarge = HdinsightSparkClusterVmSize._(
    TfArgLiteral('ExtraLarge'),
  );
  static const a5 = HdinsightSparkClusterVmSize._(TfArgLiteral('A5'));
  static const a6 = HdinsightSparkClusterVmSize._(TfArgLiteral('A6'));
  static const a7 = HdinsightSparkClusterVmSize._(TfArgLiteral('A7'));
  static const a8 = HdinsightSparkClusterVmSize._(TfArgLiteral('A8'));
  static const a9 = HdinsightSparkClusterVmSize._(TfArgLiteral('A9'));
  static const a10 = HdinsightSparkClusterVmSize._(TfArgLiteral('A10'));
  static const a11 = HdinsightSparkClusterVmSize._(TfArgLiteral('A11'));
  static const standardA1V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A1_V2'),
  );
  static const standardA2V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A2_V2'),
  );
  static const standardA2mV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A2m_V2'),
  );
  static const standardA3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A3'),
  );
  static const standardA4V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A4_V2'),
  );
  static const standardA4mV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A4m_V2'),
  );
  static const standardA8V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A8_V2'),
  );
  static const standardA8mV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_A8m_V2'),
  );
  static const standardD1 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D1'),
  );
  static const standardD2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D2'),
  );
  static const standardD3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D3'),
  );
  static const standardD4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D4'),
  );
  static const standardD11 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D11'),
  );
  static const standardD12 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D12'),
  );
  static const standardD13 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D13'),
  );
  static const standardD14 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D14'),
  );
  static const standardD1V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D1_V2'),
  );
  static const standardD2V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D2_V2'),
  );
  static const standardD3V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D3_V2'),
  );
  static const standardD4V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D4_V2'),
  );
  static const standardD5V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D5_V2'),
  );
  static const standardD11V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D11_V2'),
  );
  static const standardD12V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D12_V2'),
  );
  static const standardD13V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D13_V2'),
  );
  static const standardD14V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D14_V2'),
  );
  static const standardDs1V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS1_V2'),
  );
  static const standardDs2V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS2_V2'),
  );
  static const standardDs3V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS3_V2'),
  );
  static const standardDs4V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS4_V2'),
  );
  static const standardDs5V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS5_V2'),
  );
  static const standardDs11V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS11_V2'),
  );
  static const standardDs12V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS12_V2'),
  );
  static const standardDs13V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS13_V2'),
  );
  static const standardDs14V2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_DS14_V2'),
  );
  static const standardE2V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E2_V3'),
  );
  static const standardE4V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E4_V3'),
  );
  static const standardE8V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E8_V3'),
  );
  static const standardE16V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E16_V3'),
  );
  static const standardE20V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E20_V3'),
  );
  static const standardE32V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E32_V3'),
  );
  static const standardE64V3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64_V3'),
  );
  static const standardE64iV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64i_V3'),
  );
  static const standardE2sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E2s_V3'),
  );
  static const standardE4sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E4s_V3'),
  );
  static const standardE8sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E8s_V3'),
  );
  static const standardE16sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E16s_V3'),
  );
  static const standardE20sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E20s_V3'),
  );
  static const standardE32sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E32s_V3'),
  );
  static const standardE64sV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64s_V3'),
  );
  static const standardE64isV3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64is_V3'),
  );
  static const standardD2aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D2a_V4'),
  );
  static const standardD4aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D4a_V4'),
  );
  static const standardD8aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D8a_V4'),
  );
  static const standardD16aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D16a_V4'),
  );
  static const standardD32aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D32a_V4'),
  );
  static const standardD48aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D48a_V4'),
  );
  static const standardD64aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D64a_V4'),
  );
  static const standardD96aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D96a_V4'),
  );
  static const standardE2aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E2a_V4'),
  );
  static const standardE4aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E4a_V4'),
  );
  static const standardE8aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E8a_V4'),
  );
  static const standardE16aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E16a_V4'),
  );
  static const standardE20aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E20a_V4'),
  );
  static const standardE32aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E32a_V4'),
  );
  static const standardE48aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E48a_V4'),
  );
  static const standardE64aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64a_V4'),
  );
  static const standardE96aV4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E96a_V4'),
  );
  static const standardD2adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D2ads_V5'),
  );
  static const standardD4adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D4ads_V5'),
  );
  static const standardD8adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D8ads_V5'),
  );
  static const standardD16adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D16ads_V5'),
  );
  static const standardD32adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D32ads_V5'),
  );
  static const standardD48adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D48ads_V5'),
  );
  static const standardD64adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D64ads_V5'),
  );
  static const standardD96adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_D96ads_V5'),
  );
  static const standardE2adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E2ads_V5'),
  );
  static const standardE4adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E4ads_V5'),
  );
  static const standardE8adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E8ads_V5'),
  );
  static const standardE16adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E16ads_V5'),
  );
  static const standardE20adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E20ads_V5'),
  );
  static const standardE32adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E32ads_V5'),
  );
  static const standardE48adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E48ads_V5'),
  );
  static const standardE64adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E64ads_V5'),
  );
  static const standardE96adsV5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_E96ads_V5'),
  );
  static const standardG1 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_G1'),
  );
  static const standardG2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_G2'),
  );
  static const standardG3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_G3'),
  );
  static const standardG4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_G4'),
  );
  static const standardG5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_G5'),
  );
  static const standardF2sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F2s_V2'),
  );
  static const standardF4sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F4s_V2'),
  );
  static const standardF8sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F8s_V2'),
  );
  static const standardF16sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F16s_V2'),
  );
  static const standardF32sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F32s_V2'),
  );
  static const standardF64sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F64s_V2'),
  );
  static const standardF72sV2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_F72s_V2'),
  );
  static const standardGs1 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_GS1'),
  );
  static const standardGs2 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_GS2'),
  );
  static const standardGs3 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_GS3'),
  );
  static const standardGs4 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_GS4'),
  );
  static const standardGs5 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_GS5'),
  );
  static const standardNc24 = HdinsightSparkClusterVmSize._(
    TfArgLiteral('Standard_NC24'),
  );

  static const List<HdinsightSparkClusterVmSize> values = [
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class HdinsightSparkClusterScriptActions {
  const HdinsightSparkClusterScriptActions({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterWorkerNode {
  const HdinsightSparkClusterWorkerNode({
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

  final HdinsightSparkClusterVmSize vmSize;

  final HdinsightSparkClusterAutoscale? autoscale;

  final List<HdinsightSparkClusterScriptActions>? scriptActions;

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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterAutoscale {
  const HdinsightSparkClusterAutoscale({this.capacity, this.recurrence});

  final HdinsightSparkClusterCapacity? capacity;

  final HdinsightSparkClusterRecurrence? recurrence;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.encode(),
    'recurrence': ?recurrence?.encode(),
  };
}

/// Typed helper for the `roles.worker_node.autoscale.capacity` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterCapacity {
  const HdinsightSparkClusterCapacity({
    required this.maxInstanceCount,
    required this.minInstanceCount,
  });

  final TfArg<num> maxInstanceCount;

  final TfArg<num> minInstanceCount;

  @internal
  Map<String, Object?> encode() => {
    'max_instance_count': maxInstanceCount.toTfJson(),
    'min_instance_count': minInstanceCount.toTfJson(),
  };
}

/// Typed helper for the `roles.worker_node.autoscale.recurrence` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterRecurrence {
  const HdinsightSparkClusterRecurrence({
    required this.timezone,
    required this.schedule,
  });

  final TfArg<String> timezone;

  final List<HdinsightSparkClusterSchedule> schedule;

  @internal
  Map<String, Object?> encode() => {
    'timezone': timezone.toTfJson(),
    'schedule': [for (final e in schedule) e.encode()],
  };
}

/// Typed helper for the `roles.worker_node.autoscale.recurrence.schedule` block of
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterSchedule {
  const HdinsightSparkClusterSchedule({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterZookeeperNode {
  const HdinsightSparkClusterZookeeperNode({
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

  final HdinsightSparkClusterVmSize vmSize;

  final List<HdinsightSparkClusterScriptActions>? scriptActions;

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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterSecurityProfile {
  const HdinsightSparkClusterSecurityProfile({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterStorageAccount {
  const HdinsightSparkClusterStorageAccount({
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
/// `azurerm_hdinsight_spark_cluster` (derived from provider schema).
@immutable
final class HdinsightSparkClusterStorageAccountGen2 {
  const HdinsightSparkClusterStorageAccountGen2({
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

/// Factory wrapper for `azurerm_hdinsight_spark_cluster`.
final class AzurermHdinsightSparkCluster extends Resource {
  static const String tfType = 'azurerm_hdinsight_spark_cluster';

  AzurermHdinsightSparkCluster(
    super.localName, {
    required TfArg<String> clusterVersion,
    TfArg<bool>? encryptionInTransitEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required HdinsightSparkClusterTier tier,
    required HdinsightSparkClusterTlsMinVersion tlsMinVersion,
    TfArg<List<String>>? zones,
    required HdinsightSparkClusterComponentVersion componentVersion,
    HdinsightSparkClusterComputeIsolation? computeIsolation,
    List<HdinsightSparkClusterDiskEncryption>? diskEncryption,
    HdinsightSparkClusterExtension? extension,
    required HdinsightSparkClusterGateway gateway,
    HdinsightSparkClusterMetastores? metastores,
    HdinsightSparkClusterMonitor? monitor,
    HdinsightSparkClusterNetwork? network,
    HdinsightSparkClusterPrivateLinkConfiguration? privateLinkConfiguration,
    required HdinsightSparkClusterRoles roles,
    HdinsightSparkClusterSecurityProfile? securityProfile,
    List<HdinsightSparkClusterStorageAccount>? storageAccount,
    HdinsightSparkClusterStorageAccountGen2? storageAccountGen2,
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
           'zones': ?zones,
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
  Set<String> get sensitiveFields => _azurermHdinsightSparkClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHdinsightSparkCluster>`.
  RefTo<AzurermHdinsightSparkCluster> get ref => RefTo.of(this);

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

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
