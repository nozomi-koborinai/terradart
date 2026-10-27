// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monitor/azurerm_monitor_data_collection_endpoint.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_data_collection_endpoint`.
const Set<String> _azurermMonitorDataCollectionEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_data_collection_endpoint`.
final class DataAzurermMonitorDataCollectionEndpoint extends Data {
  static const String tfType = 'azurerm_monitor_data_collection_endpoint';

  DataAzurermMonitorDataCollectionEndpoint(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorDataCollectionEndpointSensitive;

  /// A reference to the `azurerm_monitor_data_collection_endpoint` this data source reads, for
  /// arguments typed `RefTo<AzurermMonitorDataCollectionEndpoint>`.
  RefTo<AzurermMonitorDataCollectionEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_access_endpoint` attribute.
  TfRef<String> get configurationAccessEndpoint =>
      TfRef.attribute<String>(this, 'configuration_access_endpoint');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `immutable_id` attribute.
  TfRef<String> get immutableId =>
      TfRef.attribute<String>(this, 'immutable_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logs_ingestion_endpoint` attribute.
  TfRef<String> get logsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'logs_ingestion_endpoint');

  /// Reference to `metrics_ingestion_endpoint` attribute.
  TfRef<String> get metricsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'metrics_ingestion_endpoint');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
