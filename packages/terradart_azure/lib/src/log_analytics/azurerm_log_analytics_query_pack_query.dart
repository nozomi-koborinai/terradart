// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_query_pack_query`.
const Set<String> _azurermLogAnalyticsQueryPackQuerySensitive = <String>{};

/// Log Analytics Query Pack Query enum for `categories`.
extension type const LogAnalyticsQueryPackQueryCategories._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsQueryPackQueryCategories.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsQueryPackQueryCategories.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsQueryPackQueryCategories.arg(TfArg<String> arg)
    : this._(arg);

  static const applications = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('applications'),
  );
  static const audit = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('audit'),
  );
  static const container = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('container'),
  );
  static const databases = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('databases'),
  );
  static const desktopanalytics = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('desktopanalytics'),
  );
  static const management = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('management'),
  );
  static const monitor = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('monitor'),
  );
  static const network = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('network'),
  );
  static const resources = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('resources'),
  );
  static const security = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('security'),
  );
  static const virtualmachines = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('virtualmachines'),
  );
  static const windowsvirtualdesktop = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('windowsvirtualdesktop'),
  );
  static const workloads = LogAnalyticsQueryPackQueryCategories._(
    TfArgLiteral('workloads'),
  );

  static const List<LogAnalyticsQueryPackQueryCategories> values = [
    applications,
    audit,
    container,
    databases,
    desktopanalytics,
    management,
    monitor,
    network,
    resources,
    security,
    virtualmachines,
    windowsvirtualdesktop,
    workloads,
  ];
}

/// Log Analytics Query Pack Query Resource enum for `resource_types`.
extension type const LogAnalyticsQueryPackQueryResourceTypes._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsQueryPackQueryResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsQueryPackQueryResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsQueryPackQueryResourceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('default'),
  );
  static const microsoftAadDomainservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.aad/domainservices'),
      );
  static const microsoftAadiamTenants =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.aadiam/tenants'),
      );
  static const microsoftAgfoodplatformFarmbeats =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.agfoodplatform/farmbeats'),
      );
  static const microsoftAnalysisservicesServers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.analysisservices/servers'),
      );
  static const microsoftApimanagementService =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.apimanagement/service'),
      );
  static const microsoftAppconfigurationConfigurationstores =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.appconfiguration/configurationstores'),
      );
  static const microsoftAppplatformSpring =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.appplatform/spring'),
      );
  static const microsoftAttestationAttestationproviders =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.attestation/attestationproviders'),
      );
  static const microsoftAuthorizationTenants =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.authorization/tenants'),
      );
  static const microsoftAutomationAutomationaccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.automation/automationaccounts'),
      );
  static const microsoftAutonomousdevelopmentplatformAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.autonomousdevelopmentplatform/accounts'),
      );
  static const microsoftAzurestackhciVirtualmachines =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.azurestackhci/virtualmachines'),
      );
  static const microsoftBatchBatchaccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.batch/batchaccounts'),
      );
  static const microsoftBlockchainBlockchainmembers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.blockchain/blockchainmembers'),
      );
  static const microsoftBotserviceBotservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.botservice/botservices'),
      );
  static const microsoftCacheRedis = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('microsoft.cache/redis'),
  );
  static const microsoftCdnProfiles = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('microsoft.cdn/profiles'),
  );
  static const microsoftCognitiveservicesAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.cognitiveservices/accounts'),
      );
  static const microsoftCommunicationCommunicationservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.communication/communicationservices'),
      );
  static const microsoftComputeVirtualmachines =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.compute/virtualmachines'),
      );
  static const microsoftComputeVirtualmachinescalesets =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.compute/virtualmachinescalesets'),
      );
  static const microsoftConnectedcacheCachenodes =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.connectedcache/cachenodes'),
      );
  static const microsoftConnectedvehiclePlatformaccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.connectedvehicle/platformaccounts'),
      );
  static const microsoftConenctedvmwarevsphereVirtualmachines =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.conenctedvmwarevsphere/virtualmachines'),
      );
  static const microsoftContainerregistryRegistries =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.containerregistry/registries'),
      );
  static const microsoftContainerserviceManagedclusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.containerservice/managedclusters'),
      );
  static const microsoftD365customerinsightsInstances =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.d365customerinsights/instances'),
      );
  static const microsoftDashboardGrafana =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dashboard/grafana'),
      );
  static const microsoftDatabricksWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.databricks/workspaces'),
      );
  static const microsoftDatacollaborationWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.datacollaboration/workspaces'),
      );
  static const microsoftDatafactoryFactories =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.datafactory/factories'),
      );
  static const microsoftDatalakeanalyticsAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.datalakeanalytics/accounts'),
      );
  static const microsoftDatalakestoreAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.datalakestore/accounts'),
      );
  static const microsoftDatashareAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.datashare/accounts'),
      );
  static const microsoftDbformariadbServers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dbformariadb/servers'),
      );
  static const microsoftDbformysqlServers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dbformysql/servers'),
      );
  static const microsoftDbforpostgresqlFlexibleservers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dbforpostgresql/flexibleservers'),
      );
  static const microsoftDbforpostgresqlServers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dbforpostgresql/servers'),
      );
  static const microsoftDbforpostgresqlServersv2 =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dbforpostgresql/serversv2'),
      );
  static const microsoftDigitaltwinsDigitaltwinsinstances =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.digitaltwins/digitaltwinsinstances'),
      );
  static const microsoftDocumentdbCassandraclusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.documentdb/cassandraclusters'),
      );
  static const microsoftDocumentdbDatabaseaccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.documentdb/databaseaccounts'),
      );
  static const microsoftDesktopvirtualizationApplicationgroups =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.desktopvirtualization/applicationgroups'),
      );
  static const microsoftDesktopvirtualizationHostpools =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.desktopvirtualization/hostpools'),
      );
  static const microsoftDesktopvirtualizationWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.desktopvirtualization/workspaces'),
      );
  static const microsoftDevicesIothubs =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.devices/iothubs'),
      );
  static const microsoftDevicesProvisioningservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.devices/provisioningservices'),
      );
  static const microsoftDynamicsFraudprotectionPurchase =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.dynamics/fraudprotection/purchase'),
      );
  static const microsoftEventgridDomains =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventgrid/domains'),
      );
  static const microsoftEventgridTopics =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventgrid/topics'),
      );
  static const microsoftEventgridPartnernamespaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventgrid/partnernamespaces'),
      );
  static const microsoftEventgridPartnertopics =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventgrid/partnertopics'),
      );
  static const microsoftEventgridSystemtopics =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventgrid/systemtopics'),
      );
  static const microsoftEventhubNamespaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.eventhub/namespaces'),
      );
  static const microsoftExperimentationExperimentworkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.experimentation/experimentworkspaces'),
      );
  static const microsoftHdinsightClusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.hdinsight/clusters'),
      );
  static const microsoftHealthcareapisServices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.healthcareapis/services'),
      );
  static const microsoftInformationprotectionDatasecuritymanagement =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.informationprotection/datasecuritymanagement'),
      );
  static const microsoftIntuneOperations =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.intune/operations'),
      );
  static const microsoftInsightsAutoscalesettings =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.insights/autoscalesettings'),
      );
  static const microsoftInsightsComponents =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.insights/components'),
      );
  static const microsoftInsightsWorkloadmonitoring =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.insights/workloadmonitoring'),
      );
  static const microsoftKeyvaultVaults =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.keyvault/vaults'),
      );
  static const microsoftKubernetesConnectedclusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.kubernetes/connectedclusters'),
      );
  static const microsoftKustoClusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.kusto/clusters'),
      );
  static const microsoftLoadtestserviceLoadtests =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.loadtestservice/loadtests'),
      );
  static const microsoftLogicWorkflows =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.logic/workflows'),
      );
  static const microsoftMachinelearningservicesWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.machinelearningservices/workspaces'),
      );
  static const microsoftMediaMediaservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.media/mediaservices'),
      );
  static const microsoftNetappNetappaccountsCapacitypools =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.netapp/netappaccounts/capacitypools'),
      );
  static const microsoftNetworkApplicationgateways =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/applicationgateways'),
      );
  static const microsoftNetworkAzurefirewalls =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/azurefirewalls'),
      );
  static const microsoftNetworkBastionhosts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/bastionhosts'),
      );
  static const microsoftNetworkExpressroutecircuits =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/expressroutecircuits'),
      );
  static const microsoftNetworkFrontdoors =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/frontdoors'),
      );
  static const microsoftNetworkLoadbalancers =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/loadbalancers'),
      );
  static const microsoftNetworkNetworkinterfaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/networkinterfaces'),
      );
  static const microsoftNetworkNetworksecuritygroups =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/networksecuritygroups'),
      );
  static const microsoftNetworkNetworksecurityperimeters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/networksecurityperimeters'),
      );
  static const microsoftNetworkNetworkwatchersConnectionmonitors =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/networkwatchers/connectionmonitors'),
      );
  static const microsoftNetworkNetworkwatchersTrafficanalytics =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/networkwatchers/trafficanalytics'),
      );
  static const microsoftNetworkPublicipaddresses =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/publicipaddresses'),
      );
  static const microsoftNetworkTrafficmanagerprofiles =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/trafficmanagerprofiles'),
      );
  static const microsoftNetworkVirtualnetworks =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/virtualnetworks'),
      );
  static const microsoftNetworkVirtualnetworkgateways =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/virtualnetworkgateways'),
      );
  static const microsoftNetworkVpngateways =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.network/vpngateways'),
      );
  static const microsoftNetworkfunctionAzuretrafficcollectors =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.networkfunction/azuretrafficcollectors'),
      );
  static const microsoftOpenenergyplatformEnergyservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.openenergyplatform/energyservices'),
      );
  static const microsoftOpenlogisticsplatformWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.openlogisticsplatform/workspaces'),
      );
  static const microsoftOperationalinsightsWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.operationalinsights/workspaces'),
      );
  static const microsoftPowerbiTenants =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.powerbi/tenants'),
      );
  static const microsoftPowerbiTenantsWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.powerbi/tenants/workspaces'),
      );
  static const microsoftPowerbidedicatedCapacities =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.powerbidedicated/capacities'),
      );
  static const microsoftPurviewAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.purview/accounts'),
      );
  static const microsoftRecoveryservicesVaults =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.recoveryservices/vaults'),
      );
  static const microsoftResourcesAzureactivity =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.resources/azureactivity'),
      );
  static const microsoftScvmmVirtualmachines =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.scvmm/virtualmachines'),
      );
  static const microsoftSearchSearchservices =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.search/searchservices'),
      );
  static const microsoftSecurityAntimalwaresettings =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.security/antimalwaresettings'),
      );
  static const microsoftSecurityinsightsAmazon =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/amazon'),
      );
  static const microsoftSecurityinsightsAnomalies =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/anomalies'),
      );
  static const microsoftSecurityinsightsCef =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/cef'),
      );
  static const microsoftSecurityinsightsDatacollection =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/datacollection'),
      );
  static const microsoftSecurityinsightsDnsnormalized =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/dnsnormalized'),
      );
  static const microsoftSecurityinsightsMda =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/mda'),
      );
  static const microsoftSecurityinsightsMde =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/mde'),
      );
  static const microsoftSecurityinsightsMdi =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/mdi'),
      );
  static const microsoftSecurityinsightsMdo =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/mdo'),
      );
  static const microsoftSecurityinsightsNetworksessionnormalized =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/networksessionnormalized'),
      );
  static const microsoftSecurityinsightsOffice365 =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/office365'),
      );
  static const microsoftSecurityinsightsPurview =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/purview'),
      );
  static const microsoftSecurityinsightsSecurityinsights =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/securityinsights'),
      );
  static const microsoftSecurityinsightsSecurityinsightsMcas =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/securityinsights/mcas'),
      );
  static const microsoftSecurityinsightsTvm =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/tvm'),
      );
  static const microsoftSecurityinsightsWatchlists =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.securityinsights/watchlists'),
      );
  static const microsoftServicebusNamespaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.servicebus/namespaces'),
      );
  static const microsoftServicefabricClusters =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.servicefabric/clusters'),
      );
  static const microsoftSignalrserviceSignalr =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.signalrservice/signalr'),
      );
  static const microsoftSignalrserviceWebpubsub =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.signalrservice/webpubsub'),
      );
  static const microsoftSqlManagedinstances =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.sql/managedinstances'),
      );
  static const microsoftSqlServers = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('microsoft.sql/servers'),
  );
  static const microsoftSqlServersDatabases =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.sql/servers/databases'),
      );
  static const microsoftStorageStorageaccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.storage/storageaccounts'),
      );
  static const microsoftStoragecacheCaches =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.storagecache/caches'),
      );
  static const microsoftStreamanalyticsStreamingjobs =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.streamanalytics/streamingjobs'),
      );
  static const microsoftSynapseWorkspaces =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.synapse/workspaces'),
      );
  static const microsoftTimeseriesinsightsEnvironments =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.timeseriesinsights/environments'),
      );
  static const microsoftVideoindexerAccounts =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.videoindexer/accounts'),
      );
  static const microsoftWebSites = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('microsoft.web/sites'),
  );
  static const microsoftWorkloadmonitorMonitors =
      LogAnalyticsQueryPackQueryResourceTypes._(
        TfArgLiteral('microsoft.workloadmonitor/monitors'),
      );
  static const resourcegroup = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('resourcegroup'),
  );
  static const subscription = LogAnalyticsQueryPackQueryResourceTypes._(
    TfArgLiteral('subscription'),
  );

  static const List<LogAnalyticsQueryPackQueryResourceTypes> values = [
    defaultCase,
    microsoftAadDomainservices,
    microsoftAadiamTenants,
    microsoftAgfoodplatformFarmbeats,
    microsoftAnalysisservicesServers,
    microsoftApimanagementService,
    microsoftAppconfigurationConfigurationstores,
    microsoftAppplatformSpring,
    microsoftAttestationAttestationproviders,
    microsoftAuthorizationTenants,
    microsoftAutomationAutomationaccounts,
    microsoftAutonomousdevelopmentplatformAccounts,
    microsoftAzurestackhciVirtualmachines,
    microsoftBatchBatchaccounts,
    microsoftBlockchainBlockchainmembers,
    microsoftBotserviceBotservices,
    microsoftCacheRedis,
    microsoftCdnProfiles,
    microsoftCognitiveservicesAccounts,
    microsoftCommunicationCommunicationservices,
    microsoftComputeVirtualmachines,
    microsoftComputeVirtualmachinescalesets,
    microsoftConnectedcacheCachenodes,
    microsoftConnectedvehiclePlatformaccounts,
    microsoftConenctedvmwarevsphereVirtualmachines,
    microsoftContainerregistryRegistries,
    microsoftContainerserviceManagedclusters,
    microsoftD365customerinsightsInstances,
    microsoftDashboardGrafana,
    microsoftDatabricksWorkspaces,
    microsoftDatacollaborationWorkspaces,
    microsoftDatafactoryFactories,
    microsoftDatalakeanalyticsAccounts,
    microsoftDatalakestoreAccounts,
    microsoftDatashareAccounts,
    microsoftDbformariadbServers,
    microsoftDbformysqlServers,
    microsoftDbforpostgresqlFlexibleservers,
    microsoftDbforpostgresqlServers,
    microsoftDbforpostgresqlServersv2,
    microsoftDigitaltwinsDigitaltwinsinstances,
    microsoftDocumentdbCassandraclusters,
    microsoftDocumentdbDatabaseaccounts,
    microsoftDesktopvirtualizationApplicationgroups,
    microsoftDesktopvirtualizationHostpools,
    microsoftDesktopvirtualizationWorkspaces,
    microsoftDevicesIothubs,
    microsoftDevicesProvisioningservices,
    microsoftDynamicsFraudprotectionPurchase,
    microsoftEventgridDomains,
    microsoftEventgridTopics,
    microsoftEventgridPartnernamespaces,
    microsoftEventgridPartnertopics,
    microsoftEventgridSystemtopics,
    microsoftEventhubNamespaces,
    microsoftExperimentationExperimentworkspaces,
    microsoftHdinsightClusters,
    microsoftHealthcareapisServices,
    microsoftInformationprotectionDatasecuritymanagement,
    microsoftIntuneOperations,
    microsoftInsightsAutoscalesettings,
    microsoftInsightsComponents,
    microsoftInsightsWorkloadmonitoring,
    microsoftKeyvaultVaults,
    microsoftKubernetesConnectedclusters,
    microsoftKustoClusters,
    microsoftLoadtestserviceLoadtests,
    microsoftLogicWorkflows,
    microsoftMachinelearningservicesWorkspaces,
    microsoftMediaMediaservices,
    microsoftNetappNetappaccountsCapacitypools,
    microsoftNetworkApplicationgateways,
    microsoftNetworkAzurefirewalls,
    microsoftNetworkBastionhosts,
    microsoftNetworkExpressroutecircuits,
    microsoftNetworkFrontdoors,
    microsoftNetworkLoadbalancers,
    microsoftNetworkNetworkinterfaces,
    microsoftNetworkNetworksecuritygroups,
    microsoftNetworkNetworksecurityperimeters,
    microsoftNetworkNetworkwatchersConnectionmonitors,
    microsoftNetworkNetworkwatchersTrafficanalytics,
    microsoftNetworkPublicipaddresses,
    microsoftNetworkTrafficmanagerprofiles,
    microsoftNetworkVirtualnetworks,
    microsoftNetworkVirtualnetworkgateways,
    microsoftNetworkVpngateways,
    microsoftNetworkfunctionAzuretrafficcollectors,
    microsoftOpenenergyplatformEnergyservices,
    microsoftOpenlogisticsplatformWorkspaces,
    microsoftOperationalinsightsWorkspaces,
    microsoftPowerbiTenants,
    microsoftPowerbiTenantsWorkspaces,
    microsoftPowerbidedicatedCapacities,
    microsoftPurviewAccounts,
    microsoftRecoveryservicesVaults,
    microsoftResourcesAzureactivity,
    microsoftScvmmVirtualmachines,
    microsoftSearchSearchservices,
    microsoftSecurityAntimalwaresettings,
    microsoftSecurityinsightsAmazon,
    microsoftSecurityinsightsAnomalies,
    microsoftSecurityinsightsCef,
    microsoftSecurityinsightsDatacollection,
    microsoftSecurityinsightsDnsnormalized,
    microsoftSecurityinsightsMda,
    microsoftSecurityinsightsMde,
    microsoftSecurityinsightsMdi,
    microsoftSecurityinsightsMdo,
    microsoftSecurityinsightsNetworksessionnormalized,
    microsoftSecurityinsightsOffice365,
    microsoftSecurityinsightsPurview,
    microsoftSecurityinsightsSecurityinsights,
    microsoftSecurityinsightsSecurityinsightsMcas,
    microsoftSecurityinsightsTvm,
    microsoftSecurityinsightsWatchlists,
    microsoftServicebusNamespaces,
    microsoftServicefabricClusters,
    microsoftSignalrserviceSignalr,
    microsoftSignalrserviceWebpubsub,
    microsoftSqlManagedinstances,
    microsoftSqlServers,
    microsoftSqlServersDatabases,
    microsoftStorageStorageaccounts,
    microsoftStoragecacheCaches,
    microsoftStreamanalyticsStreamingjobs,
    microsoftSynapseWorkspaces,
    microsoftTimeseriesinsightsEnvironments,
    microsoftVideoindexerAccounts,
    microsoftWebSites,
    microsoftWorkloadmonitorMonitors,
    resourcegroup,
    subscription,
  ];
}

/// Log Analytics Query Pack Query enum for `solutions`.
extension type const LogAnalyticsQueryPackQuerySolutions._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsQueryPackQuerySolutions.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsQueryPackQuerySolutions.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsQueryPackQuerySolutions.arg(TfArg<String> arg)
    : this._(arg);

  static const aaddomainservices = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AADDomainServices'),
  );
  static const adassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ADAssessment'),
  );
  static const adassessmentplus = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ADAssessmentPlus'),
  );
  static const adreplication = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ADReplication'),
  );
  static const adsecurityassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ADSecurityAssessment'),
  );
  static const alertmanagement = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AlertManagement'),
  );
  static const antimalware = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AntiMalware'),
  );
  static const applicationinsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ApplicationInsights'),
  );
  static const azureassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AzureAssessment'),
  );
  static const azuresecurityofthings = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AzureSecurityOfThings'),
  );
  static const azuresentineldsre = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('AzureSentinelDSRE'),
  );
  static const azuresentinelprivatepreview =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('AzureSentinelPrivatePreview'),
      );
  static const behavioranalyticsinsights =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('BehaviorAnalyticsInsights'),
      );
  static const changetracking = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ChangeTracking'),
  );
  static const compatibilityassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('CompatibilityAssessment'),
  );
  static const containerinsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ContainerInsights'),
  );
  static const containers = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('Containers'),
  );
  static const customizedwindowseventsfiltering =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('CustomizedWindowsEventsFiltering'),
      );
  static const devicehealthprod = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('DeviceHealthProd'),
  );
  static const dnsanalytics = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('DnsAnalytics'),
  );
  static const exchangeassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ExchangeAssessment'),
  );
  static const exchangeonlineassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ExchangeOnlineAssessment'),
  );
  static const iisassessmentplus = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('IISAssessmentPlus'),
  );
  static const infrastructureinsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('InfrastructureInsights'),
  );
  static const internalwindowsevent = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('InternalWindowsEvent'),
  );
  static const logmanagement = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('LogManagement'),
  );
  static const microsoft365analytics = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('Microsoft365Analytics'),
  );
  static const networkmonitoring = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('NetworkMonitoring'),
  );
  static const sccmassessmentplus = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SCCMAssessmentPlus'),
  );
  static const scomassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SCOMAssessment'),
  );
  static const scomassessmentplus = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SCOMAssessmentPlus'),
  );
  static const security = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('Security'),
  );
  static const securitycenter = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SecurityCenter'),
  );
  static const securitycenterfree = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SecurityCenterFree'),
  );
  static const securityinsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SecurityInsights'),
  );
  static const servicemap = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('ServiceMap'),
  );
  static const sfbassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SfBAssessment'),
  );
  static const sfbonlineassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SfBOnlineAssessment'),
  );
  static const sharepointonlineassessment =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('SharePointOnlineAssessment'),
      );
  static const spassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SPAssessment'),
  );
  static const sqladvancedthreatprotection =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('SQLAdvancedThreatProtection'),
      );
  static const sqlassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SQLAssessment'),
  );
  static const sqlassessmentplus = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SQLAssessmentPlus'),
  );
  static const sqldataclassification = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SQLDataClassification'),
  );
  static const sqlthreatdetection = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SQLThreatDetection'),
  );
  static const sqlvulnerabilityassessment =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('SQLVulnerabilityAssessment'),
      );
  static const surfacehub = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('SurfaceHub'),
  );
  static const updates = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('Updates'),
  );
  static const vminsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('VMInsights'),
  );
  static const wefinternaluat = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WEFInternalUat'),
  );
  static const wef10x = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WEF_10x'),
  );
  static const wef10xdsre = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WEF_10xDSRE'),
  );
  static const waasupdateinsights = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WaaSUpdateInsights'),
  );
  static const winlog = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WinLog'),
  );
  static const windowsclientassessmentplus =
      LogAnalyticsQueryPackQuerySolutions._(
        TfArgLiteral('WindowsClientAssessmentPlus'),
      );
  static const windowseventforwarding = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WindowsEventForwarding'),
  );
  static const windowsfirewall = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WindowsFirewall'),
  );
  static const windowsserverassessment = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WindowsServerAssessment'),
  );
  static const wiredata = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WireData'),
  );
  static const wiredata2 = LogAnalyticsQueryPackQuerySolutions._(
    TfArgLiteral('WireData2'),
  );

  static const List<LogAnalyticsQueryPackQuerySolutions> values = [
    aaddomainservices,
    adassessment,
    adassessmentplus,
    adreplication,
    adsecurityassessment,
    alertmanagement,
    antimalware,
    applicationinsights,
    azureassessment,
    azuresecurityofthings,
    azuresentineldsre,
    azuresentinelprivatepreview,
    behavioranalyticsinsights,
    changetracking,
    compatibilityassessment,
    containerinsights,
    containers,
    customizedwindowseventsfiltering,
    devicehealthprod,
    dnsanalytics,
    exchangeassessment,
    exchangeonlineassessment,
    iisassessmentplus,
    infrastructureinsights,
    internalwindowsevent,
    logmanagement,
    microsoft365analytics,
    networkmonitoring,
    sccmassessmentplus,
    scomassessment,
    scomassessmentplus,
    security,
    securitycenter,
    securitycenterfree,
    securityinsights,
    servicemap,
    sfbassessment,
    sfbonlineassessment,
    sharepointonlineassessment,
    spassessment,
    sqladvancedthreatprotection,
    sqlassessment,
    sqlassessmentplus,
    sqldataclassification,
    sqlthreatdetection,
    sqlvulnerabilityassessment,
    surfacehub,
    updates,
    vminsights,
    wefinternaluat,
    wef10x,
    wef10xdsre,
    waasupdateinsights,
    winlog,
    windowsclientassessmentplus,
    windowseventforwarding,
    windowsfirewall,
    windowsserverassessment,
    wiredata,
    wiredata2,
  ];
}

/// Factory wrapper for `azurerm_log_analytics_query_pack_query`.
final class AzurermLogAnalyticsQueryPackQuery extends Resource {
  static const String tfType = 'azurerm_log_analytics_query_pack_query';

  AzurermLogAnalyticsQueryPackQuery(
    super.localName, {
    TfArg<String>? additionalSettingsJson,
    required TfArg<String> body,
    List<LogAnalyticsQueryPackQueryCategories>? categories,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? name,
    required TfArg<String> queryPackId,
    List<LogAnalyticsQueryPackQueryResourceTypes>? resourceTypes,
    List<LogAnalyticsQueryPackQuerySolutions>? solutions,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_settings_json': ?additionalSettingsJson,
           'body': body,
           if (categories != null)
             'categories': TfArg.literal([
               for (final e in categories) e.toTfJson(),
             ]),
           'description': ?description,
           'display_name': displayName,
           'name': ?name,
           'query_pack_id': queryPackId,
           if (resourceTypes != null)
             'resource_types': TfArg.literal([
               for (final e in resourceTypes) e.toTfJson(),
             ]),
           if (solutions != null)
             'solutions': TfArg.literal([
               for (final e in solutions) e.toTfJson(),
             ]),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsQueryPackQuerySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsQueryPackQuery>`.
  RefTo<AzurermLogAnalyticsQueryPackQuery> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_settings_json` attribute.
  TfRef<String> get additionalSettingsJson =>
      TfRef.attribute<String>(this, 'additional_settings_json');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `categories` attribute.
  TfRef<List<String>> get categories =>
      TfRef.attribute<List<String>>(this, 'categories');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `query_pack_id` attribute.
  TfRef<String> get queryPackId =>
      TfRef.attribute<String>(this, 'query_pack_id');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');

  /// Reference to `solutions` attribute.
  TfRef<List<String>> get solutions =>
      TfRef.attribute<List<String>>(this, 'solutions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
