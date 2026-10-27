// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_workspace_network_outbound_rule_service_tag`.
const Set<String>
_azurermMachineLearningWorkspaceNetworkOutboundRuleServiceTagSensitive =
    <String>{};

/// Machine Learning Workspace Network Outbound Rule Service Tag enum for `protocol`.
extension type const MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const value =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol._(
        TfArgLiteral('*'),
      );
  static const tcp =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol._(
        TfArgLiteral('TCP'),
      );
  static const udp =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol._(
        TfArgLiteral('UDP'),
      );
  static const icmp =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol._(
        TfArgLiteral('ICMP'),
      );

  static const List<
    MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol
  >
  values = [value, tcp, udp, icmp];
}

/// Machine Learning Workspace Network Outbound Rule Service enum for `service_tag`.
extension type const MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningWorkspaceNetworkOutboundRuleServiceTag.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningWorkspaceNetworkOutboundRuleServiceTag.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningWorkspaceNetworkOutboundRuleServiceTag.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const appconfiguration =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AppConfiguration'),
      );
  static const appservice =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AppService'),
      );
  static const azureactivedirectory =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureActiveDirectory'),
      );
  static const azureadvancedthreatprotection =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureAdvancedThreatProtection'),
      );
  static const azurearcinfrastructure =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureArcInfrastructure'),
      );
  static const azureattestation =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureAttestation'),
      );
  static const azurebackup =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureBackup'),
      );
  static const azurebotservice =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureBotService'),
      );
  static const azurecontainerregistry =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureContainerRegistry'),
      );
  static const azurecosmosdb =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureCosmosDB'),
      );
  static const azuredatalake =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureDataLake'),
      );
  static const azuredevspaces =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureDevSpaces'),
      );
  static const azureinformationprotection =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureInformationProtection'),
      );
  static const azureiothub =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureIoTHub'),
      );
  static const azurekeyvault =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureKeyVault'),
      );
  static const azuremanagedgrafana =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureManagedGrafana'),
      );
  static const azuremonitor =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureMonitor'),
      );
  static const azureopendatasets =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureOpenDatasets'),
      );
  static const azureplatformdns =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzurePlatformDNS'),
      );
  static const azureplatformimds =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzurePlatformIMDS'),
      );
  static const azureplatformlkm =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzurePlatformLKM'),
      );
  static const azureresourcemanager =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureResourceManager'),
      );
  static const azuresignalr =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureSignalR'),
      );
  static const azuresiterecovery =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureSiteRecovery'),
      );
  static const azurespringcloud =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureSpringCloud'),
      );
  static const azurestack =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureStack'),
      );
  static const azureupdatedelivery =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureUpdateDelivery'),
      );
  static const datafactorymanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('DataFactoryManagement'),
      );
  static const eventhub =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('EventHub'),
      );
  static const guestandhybridmanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('GuestAndHybridManagement'),
      );
  static const m365managementactivityapi =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('M365ManagementActivityApi'),
      );
  static const m365managementactivityapi2 =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('M365ManagementActivityApi'),
      );
  static const microsoftazurefluidrelay =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('MicrosoftAzureFluidRelay'),
      );
  static const microsoftcloudappsecurity =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('MicrosoftCloudAppSecurity'),
      );
  static const microsoftcontainerregistry =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('MicrosoftContainerRegistry'),
      );
  static const powerplatforminfra =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('PowerPlatformInfra'),
      );
  static const servicebus =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('ServiceBus'),
      );
  static const sql = MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
    TfArgLiteral('Sql'),
  );
  static const storage =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('Storage'),
      );
  static const windowsadmincenter =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('WindowsAdminCenter'),
      );
  static const appservicemanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AppServiceManagement'),
      );
  static const autonomousdevelopmentplatform =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AutonomousDevelopmentPlatform'),
      );
  static const azureactivedirectorydomainservices =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureActiveDirectoryDomainServices'),
      );
  static const azurecloud =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureCloud'),
      );
  static const azureconnectors =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureConnectors'),
      );
  static const azurecontainerappsservice =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureContainerAppsService'),
      );
  static const azuredatabricks =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureDatabricks'),
      );
  static const azuredeviceupdate =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureDeviceUpdate'),
      );
  static const azureeventgrid =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureEventGrid'),
      );
  static const azurefrontdoorFrontend =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureFrontDoor.Frontend'),
      );
  static const azurefrontdoorBackend =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureFrontDoor.Backend'),
      );
  static const azurefrontdoorFirstparty =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureFrontDoor.FirstParty'),
      );
  static const azurehealthcareapis =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureHealthcareAPIs'),
      );
  static const azureloadbalancer =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureLoadBalancer'),
      );
  static const azuremachinelearning =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureMachineLearning'),
      );
  static const azuresphere =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureSphere'),
      );
  static const azurewebpubsub =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('AzureWebPubSub'),
      );
  static const batchnodemanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('BatchNodeManagement'),
      );
  static const chaosstudio =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('ChaosStudio'),
      );
  static const cognitiveservicesfrontend =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('CognitiveServicesFrontend'),
      );
  static const cognitiveservicesmanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('CognitiveServicesManagement'),
      );
  static const datafactory =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('DataFactory'),
      );
  static const dynamics365formarketingemail =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('Dynamics365ForMarketingEmail'),
      );
  static const dynamics365businesscentral =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('Dynamics365BusinessCentral'),
      );
  static const eopexternalpublishedips =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('EOPExternalPublishedIPs'),
      );
  static const internet =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('Internet'),
      );
  static const logicapps =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('LogicApps'),
      );
  static const marketplace =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('Marketplace'),
      );
  static const microsoftdefenderforendpoint =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('MicrosoftDefenderForEndpoint'),
      );
  static const powerbi =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('PowerBI'),
      );
  static const powerqueryonline =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('PowerQueryOnline'),
      );
  static const servicefabric =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('ServiceFabric'),
      );
  static const sqlmanagement =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('SqlManagement'),
      );
  static const storagesyncservice =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('StorageSyncService'),
      );
  static const windowsvirtualdesktop =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('WindowsVirtualDesktop'),
      );
  static const virtualnetwork =
      MachineLearningWorkspaceNetworkOutboundRuleServiceTag._(
        TfArgLiteral('VirtualNetwork'),
      );

  static const List<MachineLearningWorkspaceNetworkOutboundRuleServiceTag>
  values = [
    appconfiguration,
    appservice,
    azureactivedirectory,
    azureadvancedthreatprotection,
    azurearcinfrastructure,
    azureattestation,
    azurebackup,
    azurebotservice,
    azurecontainerregistry,
    azurecosmosdb,
    azuredatalake,
    azuredevspaces,
    azureinformationprotection,
    azureiothub,
    azurekeyvault,
    azuremanagedgrafana,
    azuremonitor,
    azureopendatasets,
    azureplatformdns,
    azureplatformimds,
    azureplatformlkm,
    azureresourcemanager,
    azuresignalr,
    azuresiterecovery,
    azurespringcloud,
    azurestack,
    azureupdatedelivery,
    datafactorymanagement,
    eventhub,
    guestandhybridmanagement,
    m365managementactivityapi,
    m365managementactivityapi2,
    microsoftazurefluidrelay,
    microsoftcloudappsecurity,
    microsoftcontainerregistry,
    powerplatforminfra,
    servicebus,
    sql,
    storage,
    windowsadmincenter,
    appservicemanagement,
    autonomousdevelopmentplatform,
    azureactivedirectorydomainservices,
    azurecloud,
    azureconnectors,
    azurecontainerappsservice,
    azuredatabricks,
    azuredeviceupdate,
    azureeventgrid,
    azurefrontdoorFrontend,
    azurefrontdoorBackend,
    azurefrontdoorFirstparty,
    azurehealthcareapis,
    azureloadbalancer,
    azuremachinelearning,
    azuresphere,
    azurewebpubsub,
    batchnodemanagement,
    chaosstudio,
    cognitiveservicesfrontend,
    cognitiveservicesmanagement,
    datafactory,
    dynamics365formarketingemail,
    dynamics365businesscentral,
    eopexternalpublishedips,
    internet,
    logicapps,
    marketplace,
    microsoftdefenderforendpoint,
    powerbi,
    powerqueryonline,
    servicefabric,
    sqlmanagement,
    storagesyncservice,
    windowsvirtualdesktop,
    virtualnetwork,
  ];
}

/// Factory wrapper for `azurerm_machine_learning_workspace_network_outbound_rule_service_tag`.
final class AzurermMachineLearningWorkspaceNetworkOutboundRuleServiceTag
    extends Resource {
  static const String tfType =
      'azurerm_machine_learning_workspace_network_outbound_rule_service_tag';

  AzurermMachineLearningWorkspaceNetworkOutboundRuleServiceTag(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> portRanges,
    required MachineLearningWorkspaceNetworkOutboundRuleServiceTagProtocol
    protocol,
    required MachineLearningWorkspaceNetworkOutboundRuleServiceTag serviceTag,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'port_ranges': portRanges,
           'protocol': protocol,
           'service_tag': serviceTag,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningWorkspaceNetworkOutboundRuleServiceTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRuleServiceTag>`.
  RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRuleServiceTag> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `port_ranges` attribute.
  TfRef<String> get portRanges => TfRef.attribute<String>(this, 'port_ranges');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `service_tag` attribute.
  TfRef<String> get serviceTag => TfRef.attribute<String>(this, 'service_tag');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
