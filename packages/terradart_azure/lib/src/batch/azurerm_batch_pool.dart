// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_batch_pool`.
const Set<String> _azurermBatchPoolSensitive = <String>{
  'extensions.protected_settings',
  'mount.azure_blob_file_system.account_key',
  'mount.azure_blob_file_system.sas_key',
  'mount.azure_file_share.account_key',
  'mount.cifs_mount.password',
  'start_task.container.registry.password',
  'user_accounts.linux_user_configuration.ssh_private_key',
  'user_accounts.password',
};

/// Batch Pool Inter Node enum for `inter_node_communication`.
extension type const BatchPoolInterNodeCommunication._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolInterNodeCommunication.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolInterNodeCommunication.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolInterNodeCommunication.arg(TfArg<String> arg) : this._(arg);

  static const disabled = BatchPoolInterNodeCommunication._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = BatchPoolInterNodeCommunication._(
    TfArgLiteral('Enabled'),
  );

  static const List<BatchPoolInterNodeCommunication> values = [
    disabled,
    enabled,
  ];
}

/// Batch Pool Target Node Communication enum for `target_node_communication_mode`.
extension type const BatchPoolTargetNodeCommunicationMode._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolTargetNodeCommunicationMode.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolTargetNodeCommunicationMode.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolTargetNodeCommunicationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = BatchPoolTargetNodeCommunicationMode._(
    TfArgLiteral('Classic'),
  );
  static const defaultCase = BatchPoolTargetNodeCommunicationMode._(
    TfArgLiteral('Default'),
  );
  static const simplified = BatchPoolTargetNodeCommunicationMode._(
    TfArgLiteral('Simplified'),
  );

  static const List<BatchPoolTargetNodeCommunicationMode> values = [
    classic,
    defaultCase,
    simplified,
  ];
}

/// Typed helper for the `auto_scale` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolAutoScale {
  const BatchPoolAutoScale({this.evaluationInterval, required this.formula});

  final TfArg<String>? evaluationInterval;

  final TfArg<String> formula;

  @internal
  Map<String, Object?> encode() => {
    'evaluation_interval': ?evaluationInterval?.toTfJson(),
    'formula': formula.toTfJson(),
  };
}

/// Typed helper for the `container_configuration` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolContainerConfiguration {
  const BatchPoolContainerConfiguration({
    this.containerImageNames,
    this.containerRegistries,
    this.type,
  });

  final TfArg<List<String>>? containerImageNames;

  final TfArg<List<Object?>>? containerRegistries;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'container_image_names': ?containerImageNames?.toTfJson(),
    'container_registries': ?containerRegistries?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `data_disks` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolDataDisks {
  const BatchPoolDataDisks({
    this.caching,
    required this.diskSizeGb,
    required this.lun,
    this.storageAccountType,
  });

  final BatchPoolCaching? caching;

  final TfArg<num> diskSizeGb;

  final TfArg<num> lun;

  final TfArg<String>? storageAccountType;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'disk_size_gb': diskSizeGb.toTfJson(),
    'lun': lun.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
  };
}

/// `caching` — derived from the provider schema description.
extension type const BatchPoolCaching._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolCaching.variable(String name) : this._(TfArg.variable(name));
  BatchPoolCaching.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolCaching.arg(TfArg<String> arg) : this._(arg);

  static const none = BatchPoolCaching._(TfArgLiteral('None'));
  static const readonly = BatchPoolCaching._(TfArgLiteral('ReadOnly'));
  static const readwrite = BatchPoolCaching._(TfArgLiteral('ReadWrite'));

  static const List<BatchPoolCaching> values = [none, readonly, readwrite];
}

/// Typed helper for the `disk_encryption` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolDiskEncryption {
  const BatchPoolDiskEncryption({required this.diskEncryptionTarget});

  final BatchPoolDiskEncryptionTarget diskEncryptionTarget;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_target': diskEncryptionTarget.toTfJson(),
  };
}

/// `disk_encryption_target` — derived from the provider schema description.
extension type const BatchPoolDiskEncryptionTarget._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolDiskEncryptionTarget.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolDiskEncryptionTarget.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolDiskEncryptionTarget.arg(TfArg<String> arg) : this._(arg);

  static const osdisk = BatchPoolDiskEncryptionTarget._(TfArgLiteral('OsDisk'));
  static const temporarydisk = BatchPoolDiskEncryptionTarget._(
    TfArgLiteral('TemporaryDisk'),
  );

  static const List<BatchPoolDiskEncryptionTarget> values = [
    osdisk,
    temporarydisk,
  ];
}

/// Typed helper for the `extensions` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolExtensions {
  const BatchPoolExtensions({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settingsJson,
    required this.type,
    this.typeHandlerVersion,
  });

  final TfArg<bool>? autoUpgradeMinorVersion;

  final TfArg<bool>? automaticUpgradeEnabled;

  final TfArg<String> name;

  final Sensitive<String>? protectedSettings;

  final TfArg<List<String>>? provisionAfterExtensions;

  final TfArg<String> publisher;

  final TfArg<String>? settingsJson;

  final TfArg<String> type;

  final TfArg<String>? typeHandlerVersion;

  @internal
  Map<String, Object?> encode() => {
    'auto_upgrade_minor_version': ?autoUpgradeMinorVersion?.toTfJson(),
    'automatic_upgrade_enabled': ?automaticUpgradeEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'protected_settings': ?protectedSettings?.toTfJson(),
    'provision_after_extensions': ?provisionAfterExtensions?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'settings_json': ?settingsJson?.toTfJson(),
    'type': type.toTfJson(),
    'type_handler_version': ?typeHandlerVersion?.toTfJson(),
  };
}

/// Typed helper for the `fixed_scale` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolFixedScale {
  const BatchPoolFixedScale({
    this.nodeDeallocationMethod,
    this.resizeTimeout,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  final BatchPoolNodeDeallocationMethod? nodeDeallocationMethod;

  final TfArg<String>? resizeTimeout;

  final TfArg<num>? targetDedicatedNodes;

  final TfArg<num>? targetLowPriorityNodes;

  @internal
  Map<String, Object?> encode() => {
    'node_deallocation_method': ?nodeDeallocationMethod?.toTfJson(),
    'resize_timeout': ?resizeTimeout?.toTfJson(),
    'target_dedicated_nodes': ?targetDedicatedNodes?.toTfJson(),
    'target_low_priority_nodes': ?targetLowPriorityNodes?.toTfJson(),
  };
}

/// `node_deallocation_method` — derived from the provider schema description.
extension type const BatchPoolNodeDeallocationMethod._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolNodeDeallocationMethod.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolNodeDeallocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolNodeDeallocationMethod.arg(TfArg<String> arg) : this._(arg);

  static const requeue = BatchPoolNodeDeallocationMethod._(
    TfArgLiteral('Requeue'),
  );
  static const retaineddata = BatchPoolNodeDeallocationMethod._(
    TfArgLiteral('RetainedData'),
  );
  static const taskcompletion = BatchPoolNodeDeallocationMethod._(
    TfArgLiteral('TaskCompletion'),
  );
  static const terminate = BatchPoolNodeDeallocationMethod._(
    TfArgLiteral('Terminate'),
  );

  static const List<BatchPoolNodeDeallocationMethod> values = [
    requeue,
    retaineddata,
    taskcompletion,
    terminate,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolIdentity {
  const BatchPoolIdentity({required this.identityIds, required this.type});

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `mount` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolMount {
  const BatchPoolMount({
    this.azureBlobFileSystem,
    this.azureFileShare,
    this.cifsMount,
    this.nfsMount,
  });

  final BatchPoolAzureBlobFileSystem? azureBlobFileSystem;

  final List<BatchPoolAzureFileShare>? azureFileShare;

  final List<BatchPoolCifsMount>? cifsMount;

  final List<BatchPoolNfsMount>? nfsMount;

  @internal
  Map<String, Object?> encode() => {
    'azure_blob_file_system': ?azureBlobFileSystem?.encode(),
    if (azureFileShare != null)
      'azure_file_share': [for (final e in azureFileShare!) e.encode()],
    if (cifsMount != null)
      'cifs_mount': [for (final e in cifsMount!) e.encode()],
    if (nfsMount != null) 'nfs_mount': [for (final e in nfsMount!) e.encode()],
  };
}

/// Typed helper for the `mount.azure_blob_file_system` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolAzureBlobFileSystem {
  const BatchPoolAzureBlobFileSystem({
    this.accountKey,
    required this.accountName,
    this.blobfuseOptions,
    required this.containerName,
    this.identityId,
    required this.relativeMountPath,
    this.sasKey,
  });

  final Sensitive<String>? accountKey;

  final TfArg<String> accountName;

  final TfArg<String>? blobfuseOptions;

  final TfArg<String> containerName;

  final TfArg<String>? identityId;

  final TfArg<String> relativeMountPath;

  final Sensitive<String>? sasKey;

  @internal
  Map<String, Object?> encode() => {
    'account_key': ?accountKey?.toTfJson(),
    'account_name': accountName.toTfJson(),
    'blobfuse_options': ?blobfuseOptions?.toTfJson(),
    'container_name': containerName.toTfJson(),
    'identity_id': ?identityId?.toTfJson(),
    'relative_mount_path': relativeMountPath.toTfJson(),
    'sas_key': ?sasKey?.toTfJson(),
  };
}

/// Typed helper for the `mount.azure_file_share` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolAzureFileShare {
  const BatchPoolAzureFileShare({
    required this.accountKey,
    required this.accountName,
    required this.azureFileUrl,
    this.mountOptions,
    required this.relativeMountPath,
  });

  final Sensitive<String> accountKey;

  final TfArg<String> accountName;

  final TfArg<String> azureFileUrl;

  final TfArg<String>? mountOptions;

  final TfArg<String> relativeMountPath;

  @internal
  Map<String, Object?> encode() => {
    'account_key': accountKey.toTfJson(),
    'account_name': accountName.toTfJson(),
    'azure_file_url': azureFileUrl.toTfJson(),
    'mount_options': ?mountOptions?.toTfJson(),
    'relative_mount_path': relativeMountPath.toTfJson(),
  };
}

/// Typed helper for the `mount.cifs_mount` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolCifsMount {
  const BatchPoolCifsMount({
    this.mountOptions,
    required this.password,
    required this.relativeMountPath,
    required this.source,
    required this.userName,
  });

  final TfArg<String>? mountOptions;

  final Sensitive<String> password;

  final TfArg<String> relativeMountPath;

  final TfArg<String> source;

  final TfArg<String> userName;

  @internal
  Map<String, Object?> encode() => {
    'mount_options': ?mountOptions?.toTfJson(),
    'password': password.toTfJson(),
    'relative_mount_path': relativeMountPath.toTfJson(),
    'source': source.toTfJson(),
    'user_name': userName.toTfJson(),
  };
}

/// Typed helper for the `mount.nfs_mount` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolNfsMount {
  const BatchPoolNfsMount({
    this.mountOptions,
    required this.relativeMountPath,
    required this.source,
  });

  final TfArg<String>? mountOptions;

  final TfArg<String> relativeMountPath;

  final TfArg<String> source;

  @internal
  Map<String, Object?> encode() => {
    'mount_options': ?mountOptions?.toTfJson(),
    'relative_mount_path': relativeMountPath.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolNetworkConfiguration {
  const BatchPoolNetworkConfiguration({
    this.acceleratedNetworkingEnabled,
    this.dynamicVnetAssignmentScope,
    this.publicAddressProvisioningType,
    this.publicIps,
    this.subnetId,
    this.endpointConfiguration,
  });

  final TfArg<bool>? acceleratedNetworkingEnabled;

  final BatchPoolDynamicVnetAssignmentScope? dynamicVnetAssignmentScope;

  final BatchPoolPublicAddressProvisioningType? publicAddressProvisioningType;

  final TfArg<List<String>>? publicIps;

  final TfArg<String>? subnetId;

  final List<BatchPoolEndpointConfiguration>? endpointConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'accelerated_networking_enabled': ?acceleratedNetworkingEnabled?.toTfJson(),
    'dynamic_vnet_assignment_scope': ?dynamicVnetAssignmentScope?.toTfJson(),
    'public_address_provisioning_type': ?publicAddressProvisioningType
        ?.toTfJson(),
    'public_ips': ?publicIps?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    if (endpointConfiguration != null)
      'endpoint_configuration': [
        for (final e in endpointConfiguration!) e.encode(),
      ],
  };
}

/// `dynamic_vnet_assignment_scope` — derived from the provider schema description.
extension type const BatchPoolDynamicVnetAssignmentScope._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolDynamicVnetAssignmentScope.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolDynamicVnetAssignmentScope.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolDynamicVnetAssignmentScope.arg(TfArg<String> arg)
    : this._(arg);

  static const job = BatchPoolDynamicVnetAssignmentScope._(TfArgLiteral('job'));
  static const none = BatchPoolDynamicVnetAssignmentScope._(
    TfArgLiteral('none'),
  );

  static const List<BatchPoolDynamicVnetAssignmentScope> values = [job, none];
}

/// `public_address_provisioning_type` — derived from the provider schema description.
extension type const BatchPoolPublicAddressProvisioningType._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolPublicAddressProvisioningType.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolPublicAddressProvisioningType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolPublicAddressProvisioningType.arg(TfArg<String> arg)
    : this._(arg);

  static const batchmanaged = BatchPoolPublicAddressProvisioningType._(
    TfArgLiteral('BatchManaged'),
  );
  static const nopublicipaddresses = BatchPoolPublicAddressProvisioningType._(
    TfArgLiteral('NoPublicIPAddresses'),
  );
  static const usermanaged = BatchPoolPublicAddressProvisioningType._(
    TfArgLiteral('UserManaged'),
  );

  static const List<BatchPoolPublicAddressProvisioningType> values = [
    batchmanaged,
    nopublicipaddresses,
    usermanaged,
  ];
}

/// Typed helper for the `network_configuration.endpoint_configuration` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolEndpointConfiguration {
  const BatchPoolEndpointConfiguration({
    required this.backendPort,
    required this.frontendPortRange,
    required this.name,
    required this.protocol,
    this.networkSecurityGroupRules,
  });

  final TfArg<num> backendPort;

  final TfArg<String> frontendPortRange;

  final TfArg<String> name;

  final BatchPoolProtocol protocol;

  final List<BatchPoolNetworkSecurityGroupRules>? networkSecurityGroupRules;

  @internal
  Map<String, Object?> encode() => {
    'backend_port': backendPort.toTfJson(),
    'frontend_port_range': frontendPortRange.toTfJson(),
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    if (networkSecurityGroupRules != null)
      'network_security_group_rules': [
        for (final e in networkSecurityGroupRules!) e.encode(),
      ],
  };
}

/// `protocol` — derived from the provider schema description.
extension type const BatchPoolProtocol._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolProtocol.variable(String name) : this._(TfArg.variable(name));
  BatchPoolProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = BatchPoolProtocol._(TfArgLiteral('TCP'));
  static const udp = BatchPoolProtocol._(TfArgLiteral('UDP'));

  static const List<BatchPoolProtocol> values = [tcp, udp];
}

/// Typed helper for the `network_configuration.endpoint_configuration.network_security_group_rules` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolNetworkSecurityGroupRules {
  const BatchPoolNetworkSecurityGroupRules({
    required this.access,
    required this.priority,
    required this.sourceAddressPrefix,
    this.sourcePortRanges,
  });

  final BatchPoolAccess access;

  final TfArg<num> priority;

  final TfArg<String> sourceAddressPrefix;

  final TfArg<List<String>>? sourcePortRanges;

  @internal
  Map<String, Object?> encode() => {
    'access': access.toTfJson(),
    'priority': priority.toTfJson(),
    'source_address_prefix': sourceAddressPrefix.toTfJson(),
    'source_port_ranges': ?sourcePortRanges?.toTfJson(),
  };
}

/// `access` — derived from the provider schema description.
extension type const BatchPoolAccess._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolAccess.variable(String name) : this._(TfArg.variable(name));
  BatchPoolAccess.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolAccess.arg(TfArg<String> arg) : this._(arg);

  static const allow = BatchPoolAccess._(TfArgLiteral('Allow'));
  static const deny = BatchPoolAccess._(TfArgLiteral('Deny'));

  static const List<BatchPoolAccess> values = [allow, deny];
}

/// Typed helper for the `node_placement` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolNodePlacement {
  const BatchPoolNodePlacement({this.policy});

  final BatchPoolPolicy? policy;

  @internal
  Map<String, Object?> encode() => {'policy': ?policy?.toTfJson()};
}

/// `policy` — derived from the provider schema description.
extension type const BatchPoolPolicy._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolPolicy.variable(String name) : this._(TfArg.variable(name));
  BatchPoolPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolPolicy.arg(TfArg<String> arg) : this._(arg);

  static const regional = BatchPoolPolicy._(TfArgLiteral('Regional'));
  static const zonal = BatchPoolPolicy._(TfArgLiteral('Zonal'));

  static const List<BatchPoolPolicy> values = [regional, zonal];
}

/// Typed helper for the `security_profile` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolSecurityProfile {
  const BatchPoolSecurityProfile({
    this.hostEncryptionEnabled,
    this.secureBootEnabled,
    this.securityType,
    this.vtpmEnabled,
  });

  final TfArg<bool>? hostEncryptionEnabled;

  final TfArg<bool>? secureBootEnabled;

  final BatchPoolSecurityType? securityType;

  final TfArg<bool>? vtpmEnabled;

  @internal
  Map<String, Object?> encode() => {
    'host_encryption_enabled': ?hostEncryptionEnabled?.toTfJson(),
    'secure_boot_enabled': ?secureBootEnabled?.toTfJson(),
    'security_type': ?securityType?.toTfJson(),
    'vtpm_enabled': ?vtpmEnabled?.toTfJson(),
  };
}

/// `security_type` — derived from the provider schema description.
extension type const BatchPoolSecurityType._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolSecurityType.variable(String name) : this._(TfArg.variable(name));
  BatchPoolSecurityType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolSecurityType.arg(TfArg<String> arg) : this._(arg);

  static const confidentialvm = BatchPoolSecurityType._(
    TfArgLiteral('confidentialVM'),
  );
  static const trustedlaunch = BatchPoolSecurityType._(
    TfArgLiteral('trustedLaunch'),
  );

  static const List<BatchPoolSecurityType> values = [
    confidentialvm,
    trustedlaunch,
  ];
}

/// Typed helper for the `start_task` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolStartTask {
  const BatchPoolStartTask({
    required this.commandLine,
    this.commonEnvironmentProperties,
    this.taskRetryMaximum,
    this.waitForSuccess,
    this.container,
    this.resourceFile,
    required this.userIdentity,
  });

  final TfArg<String> commandLine;

  final TfArg<Map<String, String>>? commonEnvironmentProperties;

  final TfArg<num>? taskRetryMaximum;

  final TfArg<bool>? waitForSuccess;

  final List<BatchPoolContainer>? container;

  final List<BatchPoolResourceFile>? resourceFile;

  final BatchPoolUserIdentity userIdentity;

  @internal
  Map<String, Object?> encode() => {
    'command_line': commandLine.toTfJson(),
    'common_environment_properties': ?commonEnvironmentProperties?.toTfJson(),
    'task_retry_maximum': ?taskRetryMaximum?.toTfJson(),
    'wait_for_success': ?waitForSuccess?.toTfJson(),
    if (container != null)
      'container': [for (final e in container!) e.encode()],
    if (resourceFile != null)
      'resource_file': [for (final e in resourceFile!) e.encode()],
    'user_identity': userIdentity.encode(),
  };
}

/// Typed helper for the `start_task.container` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolContainer {
  const BatchPoolContainer({
    required this.imageName,
    this.runOptions,
    this.workingDirectory,
    this.registry,
  });

  final TfArg<String> imageName;

  final TfArg<String>? runOptions;

  final BatchPoolWorkingDirectory? workingDirectory;

  final List<BatchPoolRegistry>? registry;

  @internal
  Map<String, Object?> encode() => {
    'image_name': imageName.toTfJson(),
    'run_options': ?runOptions?.toTfJson(),
    'working_directory': ?workingDirectory?.toTfJson(),
    if (registry != null) 'registry': [for (final e in registry!) e.encode()],
  };
}

/// `working_directory` — derived from the provider schema description.
extension type const BatchPoolWorkingDirectory._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolWorkingDirectory.variable(String name)
    : this._(TfArg.variable(name));
  BatchPoolWorkingDirectory.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolWorkingDirectory.arg(TfArg<String> arg) : this._(arg);

  static const containerimagedefault = BatchPoolWorkingDirectory._(
    TfArgLiteral('ContainerImageDefault'),
  );
  static const taskworkingdirectory = BatchPoolWorkingDirectory._(
    TfArgLiteral('TaskWorkingDirectory'),
  );

  static const List<BatchPoolWorkingDirectory> values = [
    containerimagedefault,
    taskworkingdirectory,
  ];
}

/// Typed helper for the `start_task.container.registry` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolRegistry {
  const BatchPoolRegistry({
    this.password,
    required this.registryServer,
    this.userAssignedIdentityId,
    this.userName,
  });

  final Sensitive<String>? password;

  final TfArg<String> registryServer;

  final TfArg<String>? userAssignedIdentityId;

  final TfArg<String>? userName;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'registry_server': registryServer.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
    'user_name': ?userName?.toTfJson(),
  };
}

/// Typed helper for the `start_task.resource_file` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolResourceFile {
  const BatchPoolResourceFile({
    this.autoStorageContainerName,
    this.blobPrefix,
    this.fileMode,
    this.filePath,
    this.httpUrl,
    this.storageContainerUrl,
    this.userAssignedIdentityId,
  });

  final TfArg<String>? autoStorageContainerName;

  final TfArg<String>? blobPrefix;

  final TfArg<String>? fileMode;

  final TfArg<String>? filePath;

  final TfArg<String>? httpUrl;

  final TfArg<String>? storageContainerUrl;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'auto_storage_container_name': ?autoStorageContainerName?.toTfJson(),
    'blob_prefix': ?blobPrefix?.toTfJson(),
    'file_mode': ?fileMode?.toTfJson(),
    'file_path': ?filePath?.toTfJson(),
    'http_url': ?httpUrl?.toTfJson(),
    'storage_container_url': ?storageContainerUrl?.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `start_task.user_identity` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolUserIdentity {
  const BatchPoolUserIdentity({this.userName, this.autoUser});

  final TfArg<String>? userName;

  final BatchPoolAutoUser? autoUser;

  @internal
  Map<String, Object?> encode() => {
    'user_name': ?userName?.toTfJson(),
    'auto_user': ?autoUser?.encode(),
  };
}

/// Typed helper for the `start_task.user_identity.auto_user` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolAutoUser {
  const BatchPoolAutoUser({this.elevationLevel, this.scope});

  final BatchPoolElevationLevel? elevationLevel;

  final BatchPoolScope? scope;

  @internal
  Map<String, Object?> encode() => {
    'elevation_level': ?elevationLevel?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// `elevation_level` — derived from the provider schema description.
extension type const BatchPoolElevationLevel._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolElevationLevel.variable(String name) : this._(TfArg.variable(name));
  BatchPoolElevationLevel.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolElevationLevel.arg(TfArg<String> arg) : this._(arg);

  static const admin = BatchPoolElevationLevel._(TfArgLiteral('Admin'));
  static const nonadmin = BatchPoolElevationLevel._(TfArgLiteral('NonAdmin'));

  static const List<BatchPoolElevationLevel> values = [admin, nonadmin];
}

/// `scope` — derived from the provider schema description.
extension type const BatchPoolScope._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolScope.variable(String name) : this._(TfArg.variable(name));
  BatchPoolScope.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolScope.arg(TfArg<String> arg) : this._(arg);

  static const pool = BatchPoolScope._(TfArgLiteral('Pool'));
  static const task = BatchPoolScope._(TfArgLiteral('Task'));

  static const List<BatchPoolScope> values = [pool, task];
}

/// Typed helper for the `storage_image_reference` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolStorageImageReference {
  const BatchPoolStorageImageReference({
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? offer;

  final TfArg<String>? publisher;

  final TfArg<String>? sku;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'offer': ?offer?.toTfJson(),
    'publisher': ?publisher?.toTfJson(),
    'sku': ?sku?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `task_scheduling_policy` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolTaskSchedulingPolicy {
  const BatchPoolTaskSchedulingPolicy({this.nodeFillType});

  final BatchPoolNodeFillType? nodeFillType;

  @internal
  Map<String, Object?> encode() => {
    'node_fill_type': ?nodeFillType?.toTfJson(),
  };
}

/// `node_fill_type` — derived from the provider schema description.
extension type const BatchPoolNodeFillType._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolNodeFillType.variable(String name) : this._(TfArg.variable(name));
  BatchPoolNodeFillType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolNodeFillType.arg(TfArg<String> arg) : this._(arg);

  static const pack = BatchPoolNodeFillType._(TfArgLiteral('Pack'));
  static const spread = BatchPoolNodeFillType._(TfArgLiteral('Spread'));

  static const List<BatchPoolNodeFillType> values = [pack, spread];
}

/// Typed helper for the `user_accounts` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolUserAccounts {
  const BatchPoolUserAccounts({
    required this.elevationLevel,
    required this.name,
    required this.password,
    this.linuxUserConfiguration,
    this.windowsUserConfiguration,
  });

  final BatchPoolElevationLevel elevationLevel;

  final TfArg<String> name;

  final Sensitive<String> password;

  final List<BatchPoolLinuxUserConfiguration>? linuxUserConfiguration;

  final List<BatchPoolWindowsUserConfiguration>? windowsUserConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'elevation_level': elevationLevel.toTfJson(),
    'name': name.toTfJson(),
    'password': password.toTfJson(),
    if (linuxUserConfiguration != null)
      'linux_user_configuration': [
        for (final e in linuxUserConfiguration!) e.encode(),
      ],
    if (windowsUserConfiguration != null)
      'windows_user_configuration': [
        for (final e in windowsUserConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `user_accounts.linux_user_configuration` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolLinuxUserConfiguration {
  const BatchPoolLinuxUserConfiguration({
    this.gid,
    this.sshPrivateKey,
    this.uid,
  });

  final TfArg<num>? gid;

  final Sensitive<String>? sshPrivateKey;

  final TfArg<num>? uid;

  @internal
  Map<String, Object?> encode() => {
    'gid': ?gid?.toTfJson(),
    'ssh_private_key': ?sshPrivateKey?.toTfJson(),
    'uid': ?uid?.toTfJson(),
  };
}

/// Typed helper for the `user_accounts.windows_user_configuration` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolWindowsUserConfiguration {
  const BatchPoolWindowsUserConfiguration({required this.loginMode});

  final BatchPoolLoginMode loginMode;

  @internal
  Map<String, Object?> encode() => {'login_mode': loginMode.toTfJson()};
}

/// `login_mode` — derived from the provider schema description.
extension type const BatchPoolLoginMode._(TfArg<String> _)
    implements TfArg<String> {
  BatchPoolLoginMode.variable(String name) : this._(TfArg.variable(name));
  BatchPoolLoginMode.expression(String template)
    : this._(TfArg.expression(template));
  const BatchPoolLoginMode.arg(TfArg<String> arg) : this._(arg);

  static const batch = BatchPoolLoginMode._(TfArgLiteral('Batch'));
  static const interactive = BatchPoolLoginMode._(TfArgLiteral('Interactive'));

  static const List<BatchPoolLoginMode> values = [batch, interactive];
}

/// Typed helper for the `windows` block of
/// `azurerm_batch_pool` (derived from provider schema).
@immutable
final class BatchPoolWindows {
  const BatchPoolWindows({this.enableAutomaticUpdates});

  final TfArg<bool>? enableAutomaticUpdates;

  @internal
  Map<String, Object?> encode() => {
    'enable_automatic_updates': ?enableAutomaticUpdates?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_batch_pool`.
final class AzurermBatchPool extends Resource {
  static const String tfType = 'azurerm_batch_pool';

  AzurermBatchPool(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<String>? displayName,
    BatchPoolInterNodeCommunication? interNodeCommunication,
    TfArg<String>? licenseType,
    TfArg<num>? maxTasksPerNode,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required TfArg<String> nodeAgentSkuId,
    TfArg<String>? osDiskPlacement,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? stopPendingResizeOperation,
    BatchPoolTargetNodeCommunicationMode? targetNodeCommunicationMode,
    required TfArg<String> vmSize,
    BatchPoolAutoScale? autoScale,
    BatchPoolContainerConfiguration? containerConfiguration,
    List<BatchPoolDataDisks>? dataDisks,
    List<BatchPoolDiskEncryption>? diskEncryption,
    List<BatchPoolExtensions>? extensions,
    BatchPoolFixedScale? fixedScale,
    BatchPoolIdentity? identity,
    List<BatchPoolMount>? mount,
    BatchPoolNetworkConfiguration? networkConfiguration,
    List<BatchPoolNodePlacement>? nodePlacement,
    BatchPoolSecurityProfile? securityProfile,
    BatchPoolStartTask? startTask,
    required BatchPoolStorageImageReference storageImageReference,
    List<BatchPoolTaskSchedulingPolicy>? taskSchedulingPolicy,
    List<BatchPoolUserAccounts>? userAccounts,
    List<BatchPoolWindows>? windows,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'display_name': ?displayName,
           'inter_node_communication': ?interNodeCommunication,
           'license_type': ?licenseType,
           'max_tasks_per_node': ?maxTasksPerNode,
           'metadata': ?metadata,
           'name': name,
           'node_agent_sku_id': nodeAgentSkuId,
           'os_disk_placement': ?osDiskPlacement,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'stop_pending_resize_operation': ?stopPendingResizeOperation,
           'target_node_communication_mode': ?targetNodeCommunicationMode,
           'vm_size': vmSize,
           if (autoScale != null)
             'auto_scale': TfArg.literal(autoScale.encode()),
           if (containerConfiguration != null)
             'container_configuration': TfArg.literal(
               containerConfiguration.encode(),
             ),
           if (dataDisks != null)
             'data_disks': TfArg.literal([
               for (final e in dataDisks) e.encode(),
             ]),
           if (diskEncryption != null)
             'disk_encryption': TfArg.literal([
               for (final e in diskEncryption) e.encode(),
             ]),
           if (extensions != null)
             'extensions': TfArg.literal([
               for (final e in extensions) e.encode(),
             ]),
           if (fixedScale != null)
             'fixed_scale': TfArg.literal(fixedScale.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (mount != null)
             'mount': TfArg.literal([for (final e in mount) e.encode()]),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (nodePlacement != null)
             'node_placement': TfArg.literal([
               for (final e in nodePlacement) e.encode(),
             ]),
           if (securityProfile != null)
             'security_profile': TfArg.literal(securityProfile.encode()),
           if (startTask != null)
             'start_task': TfArg.literal(startTask.encode()),
           'storage_image_reference': TfArg.literal(
             storageImageReference.encode(),
           ),
           if (taskSchedulingPolicy != null)
             'task_scheduling_policy': TfArg.literal([
               for (final e in taskSchedulingPolicy) e.encode(),
             ]),
           if (userAccounts != null)
             'user_accounts': TfArg.literal([
               for (final e in userAccounts) e.encode(),
             ]),
           if (windows != null)
             'windows': TfArg.literal([for (final e in windows) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBatchPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBatchPool>`.
  RefTo<AzurermBatchPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `inter_node_communication` attribute.
  TfRef<String> get interNodeCommunication =>
      TfRef.attribute<String>(this, 'inter_node_communication');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `max_tasks_per_node` attribute.
  TfRef<num> get maxTasksPerNode =>
      TfRef.attribute<num>(this, 'max_tasks_per_node');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `node_agent_sku_id` attribute.
  TfRef<String> get nodeAgentSkuId =>
      TfRef.attribute<String>(this, 'node_agent_sku_id');

  /// Reference to `os_disk_placement` attribute.
  TfRef<String> get osDiskPlacement =>
      TfRef.attribute<String>(this, 'os_disk_placement');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `stop_pending_resize_operation` attribute.
  TfRef<bool> get stopPendingResizeOperation =>
      TfRef.attribute<bool>(this, 'stop_pending_resize_operation');

  /// Reference to `target_node_communication_mode` attribute.
  TfRef<String> get targetNodeCommunicationMode =>
      TfRef.attribute<String>(this, 'target_node_communication_mode');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');
}
