// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_integration_runtime_azure_ssis`.
const Set<String> _azurermDataFactoryIntegrationRuntimeAzureSsisSensitive =
    <String>{
      'catalog_info.administrator_password',
      'custom_setup_script.sas_token',
      'express_custom_setup.command_key.password',
      'express_custom_setup.component.license',
    };

/// Typed helper for the `catalog_info` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCatalogInfo {
  const DataFactoryIntegrationRuntimeAzureSsisCatalogInfo({
    this.administratorLogin,
    this.administratorPassword,
    this.dualStandbyPairName,
    this.elasticPoolName,
    this.pricingTier,
    required this.serverEndpoint,
  });

  final TfArg<String>? administratorLogin;

  final Sensitive<String>? administratorPassword;

  final TfArg<String>? dualStandbyPairName;

  final TfArg<String>? elasticPoolName;

  final TfArg<String>? pricingTier;

  final TfArg<String> serverEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'administrator_login': ?administratorLogin?.toTfJson(),
    'administrator_password': ?administratorPassword?.toTfJson(),
    'dual_standby_pair_name': ?dualStandbyPairName?.toTfJson(),
    'elastic_pool_name': ?elasticPoolName?.toTfJson(),
    'pricing_tier': ?pricingTier?.toTfJson(),
    'server_endpoint': serverEndpoint.toTfJson(),
  };
}

/// Typed helper for the `copy_compute_scale` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale {
  const DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale({
    this.dataIntegrationUnit,
    this.timeToLive,
  });

  final TfArg<num>? dataIntegrationUnit;

  final TfArg<num>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'data_integration_unit': ?dataIntegrationUnit?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `custom_setup_script` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript {
  const DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript({
    required this.blobContainerUri,
    required this.sasToken,
  });

  final TfArg<String> blobContainerUri;

  final Sensitive<String> sasToken;

  @internal
  Map<String, Object?> encode() => {
    'blob_container_uri': blobContainerUri.toTfJson(),
    'sas_token': sasToken.toTfJson(),
  };
}

/// Typed helper for the `express_custom_setup` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup {
  const DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup({
    this.environment,
    this.powershellVersion,
    this.commandKey,
    this.component,
  });

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? powershellVersion;

  final List<DataFactoryIntegrationRuntimeAzureSsisCommandKey>? commandKey;

  final List<DataFactoryIntegrationRuntimeAzureSsisComponent>? component;

  @internal
  Map<String, Object?> encode() => {
    'environment': ?environment?.toTfJson(),
    'powershell_version': ?powershellVersion?.toTfJson(),
    if (commandKey != null)
      'command_key': [for (final e in commandKey!) e.encode()],
    if (component != null)
      'component': [for (final e in component!) e.encode()],
  };
}

/// Typed helper for the `express_custom_setup.command_key` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisCommandKey {
  const DataFactoryIntegrationRuntimeAzureSsisCommandKey({
    this.password,
    required this.targetName,
    required this.userName,
    this.keyVaultPassword,
  });

  final Sensitive<String>? password;

  final TfArg<String> targetName;

  final TfArg<String> userName;

  final DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword?
  keyVaultPassword;

  @internal
  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'target_name': targetName.toTfJson(),
    'user_name': userName.toTfJson(),
    'key_vault_password': ?keyVaultPassword?.encode(),
  };
}

/// Typed helper for the `express_custom_setup.command_key.key_vault_password` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword {
  const DataFactoryIntegrationRuntimeAzureSsisKeyVaultPassword({
    required this.linkedServiceName,
    this.parameters,
    required this.secretName,
    this.secretVersion,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String> secretName;

  final TfArg<String>? secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'secret_name': secretName.toTfJson(),
    'secret_version': ?secretVersion?.toTfJson(),
  };
}

/// Typed helper for the `express_custom_setup.component` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisComponent {
  const DataFactoryIntegrationRuntimeAzureSsisComponent({
    this.license,
    required this.name,
    this.keyVaultLicense,
  });

  final Sensitive<String>? license;

  final TfArg<String> name;

  final DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense? keyVaultLicense;

  @internal
  Map<String, Object?> encode() => {
    'license': ?license?.toTfJson(),
    'name': name.toTfJson(),
    'key_vault_license': ?keyVaultLicense?.encode(),
  };
}

/// Typed helper for the `express_custom_setup.component.key_vault_license` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense {
  const DataFactoryIntegrationRuntimeAzureSsisKeyVaultLicense({
    required this.linkedServiceName,
    this.parameters,
    required this.secretName,
    this.secretVersion,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String> secretName;

  final TfArg<String>? secretVersion;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'secret_name': secretName.toTfJson(),
    'secret_version': ?secretVersion?.toTfJson(),
  };
}

/// Typed helper for the `express_vnet_integration` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration {
  const DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration({
    required this.subnetId,
  });

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {'subnet_id': subnetId.toTfJson()};
}

/// Typed helper for the `package_store` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisPackageStore {
  const DataFactoryIntegrationRuntimeAzureSsisPackageStore({
    required this.linkedServiceName,
    required this.name,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `pipeline_external_compute_scale` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale {
  const DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale({
    this.numberOfExternalNodes,
    this.numberOfPipelineNodes,
    this.timeToLive,
  });

  final TfArg<num>? numberOfExternalNodes;

  final TfArg<num>? numberOfPipelineNodes;

  final TfArg<num>? timeToLive;

  @internal
  Map<String, Object?> encode() => {
    'number_of_external_nodes': ?numberOfExternalNodes?.toTfJson(),
    'number_of_pipeline_nodes': ?numberOfPipelineNodes?.toTfJson(),
    'time_to_live': ?timeToLive?.toTfJson(),
  };
}

/// Typed helper for the `proxy` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisProxy {
  const DataFactoryIntegrationRuntimeAzureSsisProxy({
    this.path,
    required this.selfHostedIntegrationRuntimeName,
    required this.stagingStorageLinkedServiceName,
  });

  final TfArg<String>? path;

  final TfArg<String> selfHostedIntegrationRuntimeName;

  final TfArg<String> stagingStorageLinkedServiceName;

  @internal
  Map<String, Object?> encode() => {
    'path': ?path?.toTfJson(),
    'self_hosted_integration_runtime_name': selfHostedIntegrationRuntimeName
        .toTfJson(),
    'staging_storage_linked_service_name': stagingStorageLinkedServiceName
        .toTfJson(),
  };
}

/// Typed helper for the `vnet_integration` block of
/// `azurerm_data_factory_integration_runtime_azure_ssis` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeAzureSsisVnetIntegration {
  const DataFactoryIntegrationRuntimeAzureSsisVnetIntegration({
    this.publicIps,
    this.subnetId,
    this.subnetName,
    this.vnetId,
  });

  final TfArg<List<String>>? publicIps;

  final TfArg<String>? subnetId;

  final TfArg<String>? subnetName;

  final TfArg<String>? vnetId;

  @internal
  Map<String, Object?> encode() => {
    'public_ips': ?publicIps?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'subnet_name': ?subnetName?.toTfJson(),
    'vnet_id': ?vnetId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_integration_runtime_azure_ssis`.
final class AzurermDataFactoryIntegrationRuntimeAzureSsis extends Resource {
  static const String tfType =
      'azurerm_data_factory_integration_runtime_azure_ssis';

  AzurermDataFactoryIntegrationRuntimeAzureSsis(
    super.localName, {
    TfArg<String>? credentialName,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? edition,
    TfArg<String>? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxParallelExecutionsPerNode,
    required TfArg<String> name,
    required TfArg<String> nodeSize,
    TfArg<num>? numberOfNodes,
    DataFactoryIntegrationRuntimeAzureSsisCatalogInfo? catalogInfo,
    DataFactoryIntegrationRuntimeAzureSsisCopyComputeScale? copyComputeScale,
    DataFactoryIntegrationRuntimeAzureSsisCustomSetupScript? customSetupScript,
    DataFactoryIntegrationRuntimeAzureSsisExpressCustomSetup?
    expressCustomSetup,
    DataFactoryIntegrationRuntimeAzureSsisExpressVnetIntegration?
    expressVnetIntegration,
    List<DataFactoryIntegrationRuntimeAzureSsisPackageStore>? packageStore,
    DataFactoryIntegrationRuntimeAzureSsisPipelineExternalComputeScale?
    pipelineExternalComputeScale,
    DataFactoryIntegrationRuntimeAzureSsisProxy? proxy,
    DataFactoryIntegrationRuntimeAzureSsisVnetIntegration? vnetIntegration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'credential_name': ?credentialName,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'edition': ?edition,
           'license_type': ?licenseType,
           'location': location,
           'max_parallel_executions_per_node': ?maxParallelExecutionsPerNode,
           'name': name,
           'node_size': nodeSize,
           'number_of_nodes': ?numberOfNodes,
           if (catalogInfo != null)
             'catalog_info': TfArg.literal(catalogInfo.encode()),
           if (copyComputeScale != null)
             'copy_compute_scale': TfArg.literal(copyComputeScale.encode()),
           if (customSetupScript != null)
             'custom_setup_script': TfArg.literal(customSetupScript.encode()),
           if (expressCustomSetup != null)
             'express_custom_setup': TfArg.literal(expressCustomSetup.encode()),
           if (expressVnetIntegration != null)
             'express_vnet_integration': TfArg.literal(
               expressVnetIntegration.encode(),
             ),
           if (packageStore != null)
             'package_store': TfArg.literal([
               for (final e in packageStore) e.encode(),
             ]),
           if (pipelineExternalComputeScale != null)
             'pipeline_external_compute_scale': TfArg.literal(
               pipelineExternalComputeScale.encode(),
             ),
           if (proxy != null) 'proxy': TfArg.literal(proxy.encode()),
           if (vnetIntegration != null)
             'vnet_integration': TfArg.literal(vnetIntegration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryIntegrationRuntimeAzureSsisSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryIntegrationRuntimeAzureSsis>`.
  RefTo<AzurermDataFactoryIntegrationRuntimeAzureSsis> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `credential_name` attribute.
  TfRef<String> get credentialName =>
      TfRef.attribute<String>(this, 'credential_name');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_parallel_executions_per_node` attribute.
  TfRef<num> get maxParallelExecutionsPerNode =>
      TfRef.attribute<num>(this, 'max_parallel_executions_per_node');

  /// Reference to `node_size` attribute.
  TfRef<String> get nodeSize => TfRef.attribute<String>(this, 'node_size');

  /// Reference to `number_of_nodes` attribute.
  TfRef<num> get numberOfNodes => TfRef.attribute<num>(this, 'number_of_nodes');
}
