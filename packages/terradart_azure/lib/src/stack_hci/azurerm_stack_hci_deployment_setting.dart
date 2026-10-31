// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stack_hci_deployment_setting`.
const Set<String> _azurermStackHciDeploymentSettingSensitive = <String>{};

/// Typed helper for the `scale_unit` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingScaleUnit {
  const StackHciDeploymentSettingScaleUnit({
    required this.activeDirectoryOrganizationalUnitPath,
    this.bitlockerBootVolumeEnabled,
    this.bitlockerDataVolumeEnabled,
    this.credentialGuardEnabled,
    required this.domainFqdn,
    this.driftControlEnabled,
    this.drtmProtectionEnabled,
    this.episodicDataUploadEnabled,
    this.euLocationEnabled,
    this.hvciProtectionEnabled,
    required this.namePrefix,
    required this.secretsLocation,
    this.sideChannelMitigationEnabled,
    this.smbClusterEncryptionEnabled,
    this.smbSigningEnabled,
    this.streamingDataClientEnabled,
    this.wdacEnabled,
    required this.cluster,
    required this.hostNetwork,
    required this.infrastructureNetwork,
    required this.optionalService,
    required this.physicalNode,
    required this.storage,
  });

  final TfArg<String> activeDirectoryOrganizationalUnitPath;

  final TfArg<bool>? bitlockerBootVolumeEnabled;

  final TfArg<bool>? bitlockerDataVolumeEnabled;

  final TfArg<bool>? credentialGuardEnabled;

  final TfArg<String> domainFqdn;

  final TfArg<bool>? driftControlEnabled;

  final TfArg<bool>? drtmProtectionEnabled;

  final TfArg<bool>? episodicDataUploadEnabled;

  final TfArg<bool>? euLocationEnabled;

  final TfArg<bool>? hvciProtectionEnabled;

  final TfArg<String> namePrefix;

  final TfArg<String> secretsLocation;

  final TfArg<bool>? sideChannelMitigationEnabled;

  final TfArg<bool>? smbClusterEncryptionEnabled;

  final TfArg<bool>? smbSigningEnabled;

  final TfArg<bool>? streamingDataClientEnabled;

  final TfArg<bool>? wdacEnabled;

  final StackHciDeploymentSettingCluster cluster;

  final StackHciDeploymentSettingHostNetwork hostNetwork;

  final List<StackHciDeploymentSettingInfrastructureNetwork>
  infrastructureNetwork;

  final StackHciDeploymentSettingOptionalService optionalService;

  final List<StackHciDeploymentSettingPhysicalNode> physicalNode;

  final StackHciDeploymentSettingStorage storage;

  @internal
  Map<String, Object?> encode() => {
    'active_directory_organizational_unit_path':
        activeDirectoryOrganizationalUnitPath.toTfJson(),
    'bitlocker_boot_volume_enabled': ?bitlockerBootVolumeEnabled?.toTfJson(),
    'bitlocker_data_volume_enabled': ?bitlockerDataVolumeEnabled?.toTfJson(),
    'credential_guard_enabled': ?credentialGuardEnabled?.toTfJson(),
    'domain_fqdn': domainFqdn.toTfJson(),
    'drift_control_enabled': ?driftControlEnabled?.toTfJson(),
    'drtm_protection_enabled': ?drtmProtectionEnabled?.toTfJson(),
    'episodic_data_upload_enabled': ?episodicDataUploadEnabled?.toTfJson(),
    'eu_location_enabled': ?euLocationEnabled?.toTfJson(),
    'hvci_protection_enabled': ?hvciProtectionEnabled?.toTfJson(),
    'name_prefix': namePrefix.toTfJson(),
    'secrets_location': secretsLocation.toTfJson(),
    'side_channel_mitigation_enabled': ?sideChannelMitigationEnabled
        ?.toTfJson(),
    'smb_cluster_encryption_enabled': ?smbClusterEncryptionEnabled?.toTfJson(),
    'smb_signing_enabled': ?smbSigningEnabled?.toTfJson(),
    'streaming_data_client_enabled': ?streamingDataClientEnabled?.toTfJson(),
    'wdac_enabled': ?wdacEnabled?.toTfJson(),
    'cluster': cluster.encode(),
    'host_network': hostNetwork.encode(),
    'infrastructure_network': [
      for (final e in infrastructureNetwork) e.encode(),
    ],
    'optional_service': optionalService.encode(),
    'physical_node': [for (final e in physicalNode) e.encode()],
    'storage': storage.encode(),
  };
}

/// Typed helper for the `scale_unit.cluster` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingCluster {
  const StackHciDeploymentSettingCluster({
    required this.azureServiceEndpoint,
    required this.cloudAccountName,
    required this.name,
    required this.witnessPath,
    required this.witnessType,
  });

  final TfArg<String> azureServiceEndpoint;

  final TfArg<String> cloudAccountName;

  final TfArg<String> name;

  final TfArg<String> witnessPath;

  final StackHciDeploymentSettingWitnessType witnessType;

  @internal
  Map<String, Object?> encode() => {
    'azure_service_endpoint': azureServiceEndpoint.toTfJson(),
    'cloud_account_name': cloudAccountName.toTfJson(),
    'name': name.toTfJson(),
    'witness_path': witnessPath.toTfJson(),
    'witness_type': witnessType.toTfJson(),
  };
}

/// `witness_type` — derived from the provider schema description.
extension type const StackHciDeploymentSettingWitnessType._(TfArg<String> _)
    implements TfArg<String> {
  StackHciDeploymentSettingWitnessType.variable(String name)
    : this._(TfArg.variable(name));
  StackHciDeploymentSettingWitnessType.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciDeploymentSettingWitnessType.arg(TfArg<String> arg)
    : this._(arg);

  static const cloud = StackHciDeploymentSettingWitnessType._(
    TfArgLiteral('Cloud'),
  );
  static const fileshare = StackHciDeploymentSettingWitnessType._(
    TfArgLiteral('FileShare'),
  );

  static const List<StackHciDeploymentSettingWitnessType> values = [
    cloud,
    fileshare,
  ];
}

/// Typed helper for the `scale_unit.host_network` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingHostNetwork {
  const StackHciDeploymentSettingHostNetwork({
    this.storageAutoIpEnabled,
    this.storageConnectivitySwitchlessEnabled,
    required this.intent,
    required this.storageNetwork,
  });

  final TfArg<bool>? storageAutoIpEnabled;

  final TfArg<bool>? storageConnectivitySwitchlessEnabled;

  final List<StackHciDeploymentSettingIntent> intent;

  final List<StackHciDeploymentSettingStorageNetwork> storageNetwork;

  @internal
  Map<String, Object?> encode() => {
    'storage_auto_ip_enabled': ?storageAutoIpEnabled?.toTfJson(),
    'storage_connectivity_switchless_enabled':
        ?storageConnectivitySwitchlessEnabled?.toTfJson(),
    'intent': [for (final e in intent) e.encode()],
    'storage_network': [for (final e in storageNetwork) e.encode()],
  };
}

/// Typed helper for the `scale_unit.host_network.intent` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingIntent {
  const StackHciDeploymentSettingIntent({
    required this.adapter,
    this.adapterPropertyOverrideEnabled,
    required this.name,
    this.qosPolicyOverrideEnabled,
    required this.trafficType,
    this.virtualSwitchConfigurationOverrideEnabled,
    this.adapterPropertyOverride,
    this.qosPolicyOverride,
    this.virtualSwitchConfigurationOverride,
  });

  final TfArg<List<String>> adapter;

  final TfArg<bool>? adapterPropertyOverrideEnabled;

  final TfArg<String> name;

  final TfArg<bool>? qosPolicyOverrideEnabled;

  final EnumList<StackHciDeploymentSettingTrafficType> trafficType;

  final TfArg<bool>? virtualSwitchConfigurationOverrideEnabled;

  final StackHciDeploymentSettingAdapterPropertyOverride?
  adapterPropertyOverride;

  final StackHciDeploymentSettingQosPolicyOverride? qosPolicyOverride;

  final StackHciDeploymentSettingVirtualSwitchConfigurationOverride?
  virtualSwitchConfigurationOverride;

  @internal
  Map<String, Object?> encode() => {
    'adapter': adapter.toTfJson(),
    'adapter_property_override_enabled': ?adapterPropertyOverrideEnabled
        ?.toTfJson(),
    'name': name.toTfJson(),
    'qos_policy_override_enabled': ?qosPolicyOverrideEnabled?.toTfJson(),
    'traffic_type': trafficType.toTfJson(),
    'virtual_switch_configuration_override_enabled':
        ?virtualSwitchConfigurationOverrideEnabled?.toTfJson(),
    'adapter_property_override': ?adapterPropertyOverride?.encode(),
    'qos_policy_override': ?qosPolicyOverride?.encode(),
    'virtual_switch_configuration_override': ?virtualSwitchConfigurationOverride
        ?.encode(),
  };
}

/// `traffic_type` — derived from the provider schema description.
extension type const StackHciDeploymentSettingTrafficType._(TfArg<String> _)
    implements TfArg<String> {
  StackHciDeploymentSettingTrafficType.variable(String name)
    : this._(TfArg.variable(name));
  StackHciDeploymentSettingTrafficType.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciDeploymentSettingTrafficType.arg(TfArg<String> arg)
    : this._(arg);

  static const compute = StackHciDeploymentSettingTrafficType._(
    TfArgLiteral('Compute'),
  );
  static const storage = StackHciDeploymentSettingTrafficType._(
    TfArgLiteral('Storage'),
  );
  static const management = StackHciDeploymentSettingTrafficType._(
    TfArgLiteral('Management'),
  );

  static const List<StackHciDeploymentSettingTrafficType> values = [
    compute,
    storage,
    management,
  ];
}

/// Typed helper for the `scale_unit.host_network.intent.adapter_property_override` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingAdapterPropertyOverride {
  const StackHciDeploymentSettingAdapterPropertyOverride({
    this.jumboPacket,
    this.networkDirect,
    this.networkDirectTechnology,
  });

  final TfArg<String>? jumboPacket;

  final TfArg<String>? networkDirect;

  final TfArg<String>? networkDirectTechnology;

  @internal
  Map<String, Object?> encode() => {
    'jumbo_packet': ?jumboPacket?.toTfJson(),
    'network_direct': ?networkDirect?.toTfJson(),
    'network_direct_technology': ?networkDirectTechnology?.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.host_network.intent.qos_policy_override` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingQosPolicyOverride {
  const StackHciDeploymentSettingQosPolicyOverride({
    this.bandwidthPercentageSmb,
    this.priorityValue8021ActionCluster,
    this.priorityValue8021ActionSmb,
  });

  final TfArg<String>? bandwidthPercentageSmb;

  final TfArg<String>? priorityValue8021ActionCluster;

  final TfArg<String>? priorityValue8021ActionSmb;

  @internal
  Map<String, Object?> encode() => {
    'bandwidth_percentage_smb': ?bandwidthPercentageSmb?.toTfJson(),
    'priority_value8021_action_cluster': ?priorityValue8021ActionCluster
        ?.toTfJson(),
    'priority_value8021_action_smb': ?priorityValue8021ActionSmb?.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.host_network.intent.virtual_switch_configuration_override` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingVirtualSwitchConfigurationOverride {
  const StackHciDeploymentSettingVirtualSwitchConfigurationOverride({
    this.enableIov,
    this.loadBalancingAlgorithm,
  });

  final TfArg<String>? enableIov;

  final TfArg<String>? loadBalancingAlgorithm;

  @internal
  Map<String, Object?> encode() => {
    'enable_iov': ?enableIov?.toTfJson(),
    'load_balancing_algorithm': ?loadBalancingAlgorithm?.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.host_network.storage_network` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingStorageNetwork {
  const StackHciDeploymentSettingStorageNetwork({
    required this.name,
    required this.networkAdapterName,
    required this.vlanId,
  });

  final TfArg<String> name;

  final TfArg<String> networkAdapterName;

  final TfArg<String> vlanId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'network_adapter_name': networkAdapterName.toTfJson(),
    'vlan_id': vlanId.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.infrastructure_network` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingInfrastructureNetwork {
  const StackHciDeploymentSettingInfrastructureNetwork({
    this.dhcpEnabled,
    required this.dnsServer,
    required this.gateway,
    required this.subnetMask,
    required this.ipPool,
  });

  final TfArg<bool>? dhcpEnabled;

  final TfArg<List<String>> dnsServer;

  final TfArg<String> gateway;

  final TfArg<String> subnetMask;

  final List<StackHciDeploymentSettingIpPool> ipPool;

  @internal
  Map<String, Object?> encode() => {
    'dhcp_enabled': ?dhcpEnabled?.toTfJson(),
    'dns_server': dnsServer.toTfJson(),
    'gateway': gateway.toTfJson(),
    'subnet_mask': subnetMask.toTfJson(),
    'ip_pool': [for (final e in ipPool) e.encode()],
  };
}

/// Typed helper for the `scale_unit.infrastructure_network.ip_pool` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingIpPool {
  const StackHciDeploymentSettingIpPool({
    required this.endingAddress,
    required this.startingAddress,
  });

  final TfArg<String> endingAddress;

  final TfArg<String> startingAddress;

  @internal
  Map<String, Object?> encode() => {
    'ending_address': endingAddress.toTfJson(),
    'starting_address': startingAddress.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.optional_service` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingOptionalService {
  const StackHciDeploymentSettingOptionalService({
    required this.customLocation,
  });

  final TfArg<String> customLocation;

  @internal
  Map<String, Object?> encode() => {
    'custom_location': customLocation.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.physical_node` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingPhysicalNode {
  const StackHciDeploymentSettingPhysicalNode({
    required this.ipv4Address,
    required this.name,
  });

  final TfArg<String> ipv4Address;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'ipv4_address': ipv4Address.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `scale_unit.storage` block of
/// `azurerm_stack_hci_deployment_setting` (derived from provider schema).
@immutable
final class StackHciDeploymentSettingStorage {
  const StackHciDeploymentSettingStorage({required this.configurationMode});

  final StackHciDeploymentSettingConfigurationMode configurationMode;

  @internal
  Map<String, Object?> encode() => {
    'configuration_mode': configurationMode.toTfJson(),
  };
}

/// `configuration_mode` — derived from the provider schema description.
extension type const StackHciDeploymentSettingConfigurationMode._(
  TfArg<String> _
) implements TfArg<String> {
  StackHciDeploymentSettingConfigurationMode.variable(String name)
    : this._(TfArg.variable(name));
  StackHciDeploymentSettingConfigurationMode.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciDeploymentSettingConfigurationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const express = StackHciDeploymentSettingConfigurationMode._(
    TfArgLiteral('Express'),
  );
  static const infraonly = StackHciDeploymentSettingConfigurationMode._(
    TfArgLiteral('InfraOnly'),
  );
  static const keepstorage = StackHciDeploymentSettingConfigurationMode._(
    TfArgLiteral('KeepStorage'),
  );

  static const List<StackHciDeploymentSettingConfigurationMode> values = [
    express,
    infraonly,
    keepstorage,
  ];
}

/// Factory wrapper for `azurerm_stack_hci_deployment_setting`.
final class AzurermStackHciDeploymentSetting extends Resource {
  static const String tfType = 'azurerm_stack_hci_deployment_setting';

  AzurermStackHciDeploymentSetting(
    super.localName, {
    required TfArg<List<String>> arcResourceIds,
    required TfArg<String> stackHciClusterId,
    required TfArg<String> version,
    required List<StackHciDeploymentSettingScaleUnit> scaleUnit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_resource_ids': arcResourceIds,
           'stack_hci_cluster_id': stackHciClusterId,
           'version': version,
           'scale_unit': TfArg.literal([for (final e in scaleUnit) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciDeploymentSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciDeploymentSetting>`.
  RefTo<AzurermStackHciDeploymentSetting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arc_resource_ids` attribute.
  TfRef<List<String>> get arcResourceIds =>
      TfRef.attribute<List<String>>(this, 'arc_resource_ids');

  /// Reference to `stack_hci_cluster_id` attribute.
  TfRef<String> get stackHciClusterId =>
      TfRef.attribute<String>(this, 'stack_hci_cluster_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
