// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_databricks`.
const Set<String> _azurermDataFactoryLinkedServiceAzureDatabricksSensitive =
    <String>{'access_token'};

/// Typed helper for the `instance_pool` block of
/// `azurerm_data_factory_linked_service_azure_databricks` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureDatabricksInstancePool {
  const DataFactoryLinkedServiceAzureDatabricksInstancePool({
    required this.clusterVersion,
    required this.instancePoolId,
    this.maxNumberOfWorkers,
    this.minNumberOfWorkers,
  });

  final TfArg<String> clusterVersion;

  final TfArg<String> instancePoolId;

  final TfArg<num>? maxNumberOfWorkers;

  final TfArg<num>? minNumberOfWorkers;

  @internal
  Map<String, Object?> encode() => {
    'cluster_version': clusterVersion.toTfJson(),
    'instance_pool_id': instancePoolId.toTfJson(),
    'max_number_of_workers': ?maxNumberOfWorkers?.toTfJson(),
    'min_number_of_workers': ?minNumberOfWorkers?.toTfJson(),
  };
}

/// Typed helper for the `key_vault_password` block of
/// `azurerm_data_factory_linked_service_azure_databricks` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureDatabricksKeyVaultPassword {
  const DataFactoryLinkedServiceAzureDatabricksKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Typed helper for the `new_cluster_config` block of
/// `azurerm_data_factory_linked_service_azure_databricks` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureDatabricksNewClusterConfig {
  const DataFactoryLinkedServiceAzureDatabricksNewClusterConfig({
    required this.clusterVersion,
    this.customTags,
    this.driverNodeType,
    this.initScripts,
    this.logDestination,
    this.maxNumberOfWorkers,
    this.minNumberOfWorkers,
    required this.nodeType,
    this.sparkConfig,
    this.sparkEnvironmentVariables,
  });

  final TfArg<String> clusterVersion;

  final TfArg<Map<String, String>>? customTags;

  final TfArg<String>? driverNodeType;

  final TfArg<List<String>>? initScripts;

  final TfArg<String>? logDestination;

  final TfArg<num>? maxNumberOfWorkers;

  final TfArg<num>? minNumberOfWorkers;

  final TfArg<String> nodeType;

  final TfArg<Map<String, String>>? sparkConfig;

  final TfArg<Map<String, String>>? sparkEnvironmentVariables;

  @internal
  Map<String, Object?> encode() => {
    'cluster_version': clusterVersion.toTfJson(),
    'custom_tags': ?customTags?.toTfJson(),
    'driver_node_type': ?driverNodeType?.toTfJson(),
    'init_scripts': ?initScripts?.toTfJson(),
    'log_destination': ?logDestination?.toTfJson(),
    'max_number_of_workers': ?maxNumberOfWorkers?.toTfJson(),
    'min_number_of_workers': ?minNumberOfWorkers?.toTfJson(),
    'node_type': nodeType.toTfJson(),
    'spark_config': ?sparkConfig?.toTfJson(),
    'spark_environment_variables': ?sparkEnvironmentVariables?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_databricks`.
final class AzurermDataFactoryLinkedServiceAzureDatabricks extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_databricks';

  AzurermDataFactoryLinkedServiceAzureDatabricks(
    super.localName, {
    Sensitive<String>? accessToken,
    required TfArg<String> adbDomain,
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? existingClusterId,
    TfArg<String>? integrationRuntimeName,
    TfArg<String>? msiWorkspaceId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryLinkedServiceAzureDatabricksInstancePool? instancePool,
    DataFactoryLinkedServiceAzureDatabricksKeyVaultPassword? keyVaultPassword,
    DataFactoryLinkedServiceAzureDatabricksNewClusterConfig? newClusterConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_token': ?accessToken,
           'adb_domain': adbDomain,
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'existing_cluster_id': ?existingClusterId,
           'integration_runtime_name': ?integrationRuntimeName,
           'msi_workspace_id': ?msiWorkspaceId,
           'name': name,
           'parameters': ?parameters,
           if (instancePool != null)
             'instance_pool': TfArg.literal(instancePool.encode()),
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal(keyVaultPassword.encode()),
           if (newClusterConfig != null)
             'new_cluster_config': TfArg.literal(newClusterConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureDatabricksSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureDatabricks>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureDatabricks> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_token` attribute.
  TfRef<String> get accessToken =>
      TfRef.attribute<String>(this, 'access_token');

  /// Reference to `adb_domain` attribute.
  TfRef<String> get adbDomain => TfRef.attribute<String>(this, 'adb_domain');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `existing_cluster_id` attribute.
  TfRef<String> get existingClusterId =>
      TfRef.attribute<String>(this, 'existing_cluster_id');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `msi_workspace_id` attribute.
  TfRef<String> get msiWorkspaceId =>
      TfRef.attribute<String>(this, 'msi_workspace_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');
}
