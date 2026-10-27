// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_data_collection_endpoint`.
const Set<String> _azurermMonitorDataCollectionEndpointSensitive = <String>{};

/// Monitor Data Collection Endpoint enum for `kind`.
extension type const MonitorDataCollectionEndpointKind._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionEndpointKind.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionEndpointKind.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionEndpointKind.arg(TfArg<String> arg) : this._(arg);

  static const linux = MonitorDataCollectionEndpointKind._(
    TfArgLiteral('Linux'),
  );
  static const windows = MonitorDataCollectionEndpointKind._(
    TfArgLiteral('Windows'),
  );

  static const List<MonitorDataCollectionEndpointKind> values = [
    linux,
    windows,
  ];
}

/// Factory wrapper for `azurerm_monitor_data_collection_endpoint`.
final class AzurermMonitorDataCollectionEndpoint extends Resource {
  static const String tfType = 'azurerm_monitor_data_collection_endpoint';

  AzurermMonitorDataCollectionEndpoint(
    super.localName, {
    TfArg<String>? description,
    MonitorDataCollectionEndpointKind? kind,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'kind': ?kind,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorDataCollectionEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorDataCollectionEndpoint>`.
  RefTo<AzurermMonitorDataCollectionEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_access_endpoint` attribute.
  TfRef<String> get configurationAccessEndpoint =>
      TfRef.attribute<String>(this, 'configuration_access_endpoint');

  /// Reference to `immutable_id` attribute.
  TfRef<String> get immutableId =>
      TfRef.attribute<String>(this, 'immutable_id');

  /// Reference to `logs_ingestion_endpoint` attribute.
  TfRef<String> get logsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'logs_ingestion_endpoint');

  /// Reference to `metrics_ingestion_endpoint` attribute.
  TfRef<String> get metricsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'metrics_ingestion_endpoint');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
