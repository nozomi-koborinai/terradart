// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_subnet`.
const Set<String> _azurermSubnetSensitive = <String>{};

/// Subnet Private Endpoint Network enum for `private_endpoint_network_policies`.
extension type const SubnetPrivateEndpointNetworkPolicies._(TfArg<String> _)
    implements TfArg<String> {
  SubnetPrivateEndpointNetworkPolicies.variable(String name)
    : this._(TfArg.variable(name));
  SubnetPrivateEndpointNetworkPolicies.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetPrivateEndpointNetworkPolicies.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = SubnetPrivateEndpointNetworkPolicies._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = SubnetPrivateEndpointNetworkPolicies._(
    TfArgLiteral('Enabled'),
  );
  static const networksecuritygroupenabled =
      SubnetPrivateEndpointNetworkPolicies._(
        TfArgLiteral('NetworkSecurityGroupEnabled'),
      );
  static const routetableenabled = SubnetPrivateEndpointNetworkPolicies._(
    TfArgLiteral('RouteTableEnabled'),
  );

  static const List<SubnetPrivateEndpointNetworkPolicies> values = [
    disabled,
    enabled,
    networksecuritygroupenabled,
    routetableenabled,
  ];
}

/// Exactly one of `address_prefixes`, `ip_address_pool` on `azurerm_subnet`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.addressPrefixes(...)`.
sealed class SubnetAddressPrefixesOrIpAddressPool {
  const SubnetAddressPrefixesOrIpAddressPool();

  /// Sets `address_prefixes`.
  const factory SubnetAddressPrefixesOrIpAddressPool.addressPrefixes(
    TfArg<List<String>> addressPrefixes,
  ) = SubnetAddressPrefixesOrIpAddressPoolAddressPrefixes;

  /// Sets `ip_address_pool`.
  const factory SubnetAddressPrefixesOrIpAddressPool.ipAddressPool(
    SubnetIpAddressPool ipAddressPool,
  ) = SubnetAddressPrefixesOrIpAddressPoolChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SubnetAddressPrefixesOrIpAddressPool.addressPrefixes] choice: sets `address_prefixes`.
final class SubnetAddressPrefixesOrIpAddressPoolAddressPrefixes
    extends SubnetAddressPrefixesOrIpAddressPool {
  const SubnetAddressPrefixesOrIpAddressPoolAddressPrefixes(
    this.addressPrefixes,
  );

  final TfArg<List<String>> addressPrefixes;

  @internal
  @override
  String get blockKey => 'address_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'address_prefixes': addressPrefixes,
  };
}

/// The [SubnetAddressPrefixesOrIpAddressPool.ipAddressPool] choice: sets `ip_address_pool`.
final class SubnetAddressPrefixesOrIpAddressPoolChoice
    extends SubnetAddressPrefixesOrIpAddressPool {
  const SubnetAddressPrefixesOrIpAddressPoolChoice(this.ipAddressPool);

  final SubnetIpAddressPool ipAddressPool;

  @internal
  @override
  String get blockKey => 'ip_address_pool';

  @internal
  @override
  Map<String, Object?> encode() => {'ip_address_pool': ipAddressPool.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'ip_address_pool': TfArg.literal(ipAddressPool.encode()),
  };
}

/// Typed helper for the `delegation` block of
/// `azurerm_subnet` (derived from provider schema).
@immutable
final class SubnetDelegation {
  const SubnetDelegation({required this.name, required this.serviceDelegation});

  final TfArg<String> name;

  final SubnetServiceDelegation serviceDelegation;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'service_delegation': serviceDelegation.encode(),
  };
}

/// Typed helper for the `delegation.service_delegation` block of
/// `azurerm_subnet` (derived from provider schema).
@immutable
final class SubnetServiceDelegation {
  const SubnetServiceDelegation({this.actions, required this.name});

  final List<SubnetActions>? actions;

  final SubnetServiceDelegationName name;

  @internal
  Map<String, Object?> encode() => {
    if (actions != null) 'actions': [for (final e in actions!) e.toTfJson()],
    'name': name.toTfJson(),
  };
}

/// `actions` — derived from the provider schema description.
extension type const SubnetActions._(TfArg<String> _) implements TfArg<String> {
  SubnetActions.variable(String name) : this._(TfArg.variable(name));
  SubnetActions.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetActions.arg(TfArg<String> arg) : this._(arg);

  static const microsoftNetworkNetworkinterfaces = SubnetActions._(
    TfArgLiteral('Microsoft.Network/networkinterfaces/*'),
  );
  static const microsoftNetworkPublicipaddressesJoinAction = SubnetActions._(
    TfArgLiteral('Microsoft.Network/publicIPAddresses/join/action'),
  );
  static const microsoftNetworkPublicipaddressesRead = SubnetActions._(
    TfArgLiteral('Microsoft.Network/publicIPAddresses/read'),
  );
  static const microsoftNetworkVirtualnetworksRead = SubnetActions._(
    TfArgLiteral('Microsoft.Network/virtualNetworks/read'),
  );
  static const microsoftNetworkVirtualnetworksSubnetsAction = SubnetActions._(
    TfArgLiteral('Microsoft.Network/virtualNetworks/subnets/action'),
  );
  static const microsoftNetworkVirtualnetworksSubnetsJoinAction =
      SubnetActions._(
        TfArgLiteral('Microsoft.Network/virtualNetworks/subnets/join/action'),
      );
  static const microsoftNetworkVirtualnetworksSubnetsPreparenetworkpoliciesAction =
      SubnetActions._(
        TfArgLiteral(
          'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action',
        ),
      );
  static const microsoftNetworkVirtualnetworksSubnetsUnpreparenetworkpoliciesAction =
      SubnetActions._(
        TfArgLiteral(
          'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action',
        ),
      );

  static const List<SubnetActions> values = [
    microsoftNetworkNetworkinterfaces,
    microsoftNetworkPublicipaddressesJoinAction,
    microsoftNetworkPublicipaddressesRead,
    microsoftNetworkVirtualnetworksRead,
    microsoftNetworkVirtualnetworksSubnetsAction,
    microsoftNetworkVirtualnetworksSubnetsJoinAction,
    microsoftNetworkVirtualnetworksSubnetsPreparenetworkpoliciesAction,
    microsoftNetworkVirtualnetworksSubnetsUnpreparenetworkpoliciesAction,
  ];
}

/// `name` — derived from the provider schema description.
extension type const SubnetServiceDelegationName._(TfArg<String> _)
    implements TfArg<String> {
  SubnetServiceDelegationName.variable(String name)
    : this._(TfArg.variable(name));
  SubnetServiceDelegationName.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetServiceDelegationName.arg(TfArg<String> arg) : this._(arg);

  static const githubNetworkNetworksettings = SubnetServiceDelegationName._(
    TfArgLiteral('GitHub.Network/networkSettings'),
  );
  static const informaticaDatamanagementOrganizations =
      SubnetServiceDelegationName._(
        TfArgLiteral('Informatica.DataManagement/organizations'),
      );
  static const microsoftApimanagementService = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.ApiManagement/service'),
  );
  static const microsoftApolloNpu = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Apollo/npu'),
  );
  static const microsoftAppEnvironments = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.App/environments'),
  );
  static const microsoftAppTestclients = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.App/testClients'),
  );
  static const microsoftAvsPrivateclouds = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.AVS/PrivateClouds'),
  );
  static const microsoftAzurecosmosdbClusters = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.AzureCosmosDB/clusters'),
  );
  static const microsoftBaremetalAzurehostedservice =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.BareMetal/AzureHostedService'),
      );
  static const microsoftBaremetalAzurehpc = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.BareMetal/AzureHPC'),
  );
  static const microsoftBaremetalAzurepaymenthsm =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.BareMetal/AzurePaymentHSM'),
      );
  static const microsoftBaremetalAzurevmware = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.BareMetal/AzureVMware'),
  );
  static const microsoftBaremetalCrayservers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.BareMetal/CrayServers'),
  );
  static const microsoftBaremetalMonitoringservers =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.BareMetal/MonitoringServers'),
      );
  static const microsoftBatchBatchaccounts = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Batch/batchAccounts'),
  );
  static const microsoftCloudtestHostedpools = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.CloudTest/hostedpools'),
  );
  static const microsoftCloudtestImages = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.CloudTest/images'),
  );
  static const microsoftCloudtestPools = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.CloudTest/pools'),
  );
  static const microsoftCodespacesPlans = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Codespaces/plans'),
  );
  static const microsoftContainerinstanceContainergroups =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.ContainerInstance/containerGroups'),
      );
  static const microsoftContainerserviceManagedclusters =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.ContainerService/managedClusters'),
      );
  static const microsoftContainerserviceTestclients =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.ContainerService/TestClients'),
      );
  static const microsoftDatabricksWorkspaces = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Databricks/workspaces'),
  );
  static const microsoftDbformysqlFlexibleservers =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DBforMySQL/flexibleServers'),
      );
  static const microsoftDbformysqlServers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.DBforMySQL/servers'),
  );
  static const microsoftDbformysqlServersv2 = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.DBforMySQL/serversv2'),
  );
  static const microsoftDbforpostgresqlFlexibleservers =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DBforPostgreSQL/flexibleServers'),
      );
  static const microsoftDbforpostgresqlServersv2 =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DBforPostgreSQL/serversv2'),
      );
  static const microsoftDbforpostgresqlSingleservers =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DBforPostgreSQL/singleServers'),
      );
  static const microsoftDelegatednetworkController =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DelegatedNetwork/controller'),
      );
  static const microsoftDevcenterNetworkconnection =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DevCenter/networkConnection'),
      );
  static const microsoftDevopsinfrastructurePools =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DevOpsInfrastructure/pools'),
      );
  static const microsoftDocumentdbCassandraclusters =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.DocumentDB/cassandraClusters'),
      );
  static const microsoftFidalgoNetworksettings = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Fidalgo/networkSettings'),
  );
  static const microsoftHardwaresecuritymodulesDedicatedhsms =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.HardwareSecurityModules/dedicatedHSMs'),
      );
  static const microsoftKustoClusters = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Kusto/clusters'),
  );
  static const microsoftLabservicesLabplans = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.LabServices/labplans'),
  );
  static const microsoftLogicIntegrationserviceenvironments =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Logic/integrationServiceEnvironments'),
      );
  static const microsoftMachinelearningservicesWorkspaces =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.MachineLearningServices/workspaces'),
      );
  static const microsoftMessagingconnectorsConnectors =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.MessagingConnectors/connectors'),
      );
  static const microsoftNetappVolumes = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Netapp/volumes'),
  );
  static const microsoftNetworkApplicationgateways =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Network/applicationGateways'),
      );
  static const microsoftNetworkDnsresolvers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Network/dnsResolvers'),
  );
  static const microsoftNetworkManagedresolvers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Network/managedResolvers'),
  );
  static const microsoftNetworkFpganetworkinterfaces =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Network/fpgaNetworkInterfaces'),
      );
  static const microsoftNetworkNetworkwatchers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Network/networkWatchers.'),
  );
  static const microsoftNetworkVirtualnetworkgateways =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Network/virtualNetworkGateways'),
      );
  static const microsoftOrbitalOrbitalgateways = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Orbital/orbitalGateways'),
  );
  static const microsoftPowerautomateHostedrpa = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.PowerAutomate/hostedRpa'),
  );
  static const microsoftPowerplatformEnterprisepolicies =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.PowerPlatform/enterprisePolicies'),
      );
  static const microsoftPowerplatformVnetaccesslinks =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.PowerPlatform/vnetaccesslinks'),
      );
  static const microsoftServicefabricmeshNetworks =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.ServiceFabricMesh/networks'),
      );
  static const microsoftServicenetworkingTrafficcontrollers =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.ServiceNetworking/trafficControllers'),
      );
  static const microsoftSingularityAccountsNetworks =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Singularity/accounts/networks'),
      );
  static const microsoftSingularityAccountsNpu = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Singularity/accounts/npu'),
  );
  static const microsoftSqlManagedinstances = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Sql/managedInstances'),
  );
  static const microsoftSqlManagedinstancesonebox =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Sql/managedInstancesOnebox'),
      );
  static const microsoftSqlManagedinstancesstage =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.Sql/managedInstancesStage'),
      );
  static const microsoftSqlManagedinstancestest = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Sql/managedInstancesTest'),
  );
  static const microsoftSqlServers = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Sql/servers'),
  );
  static const microsoftStoragepoolDiskpools = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.StoragePool/diskPools'),
  );
  static const microsoftStreamanalyticsStreamingjobs =
      SubnetServiceDelegationName._(
        TfArgLiteral('Microsoft.StreamAnalytics/streamingJobs'),
      );
  static const microsoftSynapseWorkspaces = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Synapse/workspaces'),
  );
  static const microsoftWebHostingenvironments = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Web/hostingEnvironments'),
  );
  static const microsoftWebServerfarms = SubnetServiceDelegationName._(
    TfArgLiteral('Microsoft.Web/serverFarms'),
  );
  static const nginxNginxplusNginxdeployments = SubnetServiceDelegationName._(
    TfArgLiteral('NGINX.NGINXPLUS/nginxDeployments'),
  );
  static const oracleDatabaseNetworkattachments = SubnetServiceDelegationName._(
    TfArgLiteral('Oracle.Database/networkAttachments'),
  );
  static const paloaltonetworksCloudngfwFirewalls =
      SubnetServiceDelegationName._(
        TfArgLiteral('PaloAltoNetworks.Cloudngfw/firewalls'),
      );
  static const qumuloStorageFilesystems = SubnetServiceDelegationName._(
    TfArgLiteral('Qumulo.Storage/fileSystems'),
  );
  static const purestorageBlockStoragepools = SubnetServiceDelegationName._(
    TfArgLiteral('PureStorage.Block/storagePools'),
  );

  static const List<SubnetServiceDelegationName> values = [
    githubNetworkNetworksettings,
    informaticaDatamanagementOrganizations,
    microsoftApimanagementService,
    microsoftApolloNpu,
    microsoftAppEnvironments,
    microsoftAppTestclients,
    microsoftAvsPrivateclouds,
    microsoftAzurecosmosdbClusters,
    microsoftBaremetalAzurehostedservice,
    microsoftBaremetalAzurehpc,
    microsoftBaremetalAzurepaymenthsm,
    microsoftBaremetalAzurevmware,
    microsoftBaremetalCrayservers,
    microsoftBaremetalMonitoringservers,
    microsoftBatchBatchaccounts,
    microsoftCloudtestHostedpools,
    microsoftCloudtestImages,
    microsoftCloudtestPools,
    microsoftCodespacesPlans,
    microsoftContainerinstanceContainergroups,
    microsoftContainerserviceManagedclusters,
    microsoftContainerserviceTestclients,
    microsoftDatabricksWorkspaces,
    microsoftDbformysqlFlexibleservers,
    microsoftDbformysqlServers,
    microsoftDbformysqlServersv2,
    microsoftDbforpostgresqlFlexibleservers,
    microsoftDbforpostgresqlServersv2,
    microsoftDbforpostgresqlSingleservers,
    microsoftDelegatednetworkController,
    microsoftDevcenterNetworkconnection,
    microsoftDevopsinfrastructurePools,
    microsoftDocumentdbCassandraclusters,
    microsoftFidalgoNetworksettings,
    microsoftHardwaresecuritymodulesDedicatedhsms,
    microsoftKustoClusters,
    microsoftLabservicesLabplans,
    microsoftLogicIntegrationserviceenvironments,
    microsoftMachinelearningservicesWorkspaces,
    microsoftMessagingconnectorsConnectors,
    microsoftNetappVolumes,
    microsoftNetworkApplicationgateways,
    microsoftNetworkDnsresolvers,
    microsoftNetworkManagedresolvers,
    microsoftNetworkFpganetworkinterfaces,
    microsoftNetworkNetworkwatchers,
    microsoftNetworkVirtualnetworkgateways,
    microsoftOrbitalOrbitalgateways,
    microsoftPowerautomateHostedrpa,
    microsoftPowerplatformEnterprisepolicies,
    microsoftPowerplatformVnetaccesslinks,
    microsoftServicefabricmeshNetworks,
    microsoftServicenetworkingTrafficcontrollers,
    microsoftSingularityAccountsNetworks,
    microsoftSingularityAccountsNpu,
    microsoftSqlManagedinstances,
    microsoftSqlManagedinstancesonebox,
    microsoftSqlManagedinstancesstage,
    microsoftSqlManagedinstancestest,
    microsoftSqlServers,
    microsoftStoragepoolDiskpools,
    microsoftStreamanalyticsStreamingjobs,
    microsoftSynapseWorkspaces,
    microsoftWebHostingenvironments,
    microsoftWebServerfarms,
    nginxNginxplusNginxdeployments,
    oracleDatabaseNetworkattachments,
    paloaltonetworksCloudngfwFirewalls,
    qumuloStorageFilesystems,
    purestorageBlockStoragepools,
  ];
}

/// Typed helper for the `ip_address_pool` block of
/// `azurerm_subnet` (derived from provider schema).
@immutable
final class SubnetIpAddressPool {
  const SubnetIpAddressPool({
    required this.id,
    required this.numberOfIpAddresses,
  });

  final TfArg<String> id;

  final TfArg<String> numberOfIpAddresses;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'number_of_ip_addresses': numberOfIpAddresses.toTfJson(),
  };
}

/// Typed helper for the `service_endpoint` block of
/// `azurerm_subnet` (derived from provider schema).
@immutable
final class SubnetServiceEndpoint {
  const SubnetServiceEndpoint({this.networkIdentifier, required this.service});

  final TfArg<String>? networkIdentifier;

  final TfArg<String> service;

  @internal
  Map<String, Object?> encode() => {
    'network_identifier': ?networkIdentifier?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_subnet`.
final class AzurermSubnet extends Resource {
  static const String tfType = 'azurerm_subnet';

  AzurermSubnet(
    super.localName, {
    required SubnetAddressPrefixesOrIpAddressPool
    addressPrefixesOrIpAddressPool,
    TfArg<bool>? defaultOutboundAccessEnabled,
    required TfArg<String> name,
    TfArg<String>? networkSecurityGroupIdWo,
    TfArg<num>? networkSecurityGroupIdWoVersion,
    SubnetPrivateEndpointNetworkPolicies? privateEndpointNetworkPolicies,
    TfArg<bool>? privateLinkServiceNetworkPoliciesEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? routeTableIdWo,
    TfArg<num>? routeTableIdWoVersion,
    TfArg<List<String>>? serviceEndpointPolicyIds,
    TfArg<String>? sharingScope,
    required TfArg<String> virtualNetworkName,
    List<SubnetDelegation>? delegation,
    List<SubnetServiceEndpoint>? serviceEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...addressPrefixesOrIpAddressPool.argMap,
           'default_outbound_access_enabled': ?defaultOutboundAccessEnabled,
           'name': name,
           'network_security_group_id_wo': ?networkSecurityGroupIdWo,
           'network_security_group_id_wo_version':
               ?networkSecurityGroupIdWoVersion,
           'private_endpoint_network_policies': ?privateEndpointNetworkPolicies,
           'private_link_service_network_policies_enabled':
               ?privateLinkServiceNetworkPoliciesEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'route_table_id_wo': ?routeTableIdWo,
           'route_table_id_wo_version': ?routeTableIdWoVersion,
           'service_endpoint_policy_ids': ?serviceEndpointPolicyIds,
           'sharing_scope': ?sharingScope,
           'virtual_network_name': virtualNetworkName,
           if (delegation != null)
             'delegation': TfArg.literal([
               for (final e in delegation) e.encode(),
             ]),
           if (serviceEndpoint != null)
             'service_endpoint': TfArg.literal([
               for (final e in serviceEndpoint) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSubnetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubnet>`.
  RefTo<AzurermSubnet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_security_group_id` attribute.
  TfRef<String> get networkSecurityGroupId =>
      TfRef.attribute<String>(this, 'network_security_group_id');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `default_outbound_access_enabled` attribute.
  TfRef<bool> get defaultOutboundAccessEnabled =>
      TfRef.attribute<bool>(this, 'default_outbound_access_enabled');

  /// Reference to `network_security_group_id_wo_version` attribute.
  TfRef<num> get networkSecurityGroupIdWoVersion =>
      TfRef.attribute<num>(this, 'network_security_group_id_wo_version');

  /// Reference to `private_endpoint_network_policies` attribute.
  TfRef<String> get privateEndpointNetworkPolicies =>
      TfRef.attribute<String>(this, 'private_endpoint_network_policies');

  /// Reference to `private_link_service_network_policies_enabled` attribute.
  TfRef<bool> get privateLinkServiceNetworkPoliciesEnabled =>
      TfRef.attribute<bool>(
        this,
        'private_link_service_network_policies_enabled',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `route_table_id_wo_version` attribute.
  TfRef<num> get routeTableIdWoVersion =>
      TfRef.attribute<num>(this, 'route_table_id_wo_version');

  /// Reference to `service_endpoint_policy_ids` attribute.
  TfRef<List<String>> get serviceEndpointPolicyIds =>
      TfRef.attribute<List<String>>(this, 'service_endpoint_policy_ids');

  /// Reference to `sharing_scope` attribute.
  TfRef<String> get sharingScope =>
      TfRef.attribute<String>(this, 'sharing_scope');

  /// Reference to `virtual_network_name` attribute.
  TfRef<String> get virtualNetworkName =>
      TfRef.attribute<String>(this, 'virtual_network_name');
}
