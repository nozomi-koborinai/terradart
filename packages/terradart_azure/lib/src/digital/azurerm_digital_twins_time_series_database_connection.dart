// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_digital_twins_time_series_database_connection`.
const Set<String> _azurermDigitalTwinsTimeSeriesDatabaseConnectionSensitive =
    <String>{};

/// Factory wrapper for `azurerm_digital_twins_time_series_database_connection`.
final class AzurermDigitalTwinsTimeSeriesDatabaseConnection extends Resource {
  static const String tfType =
      'azurerm_digital_twins_time_series_database_connection';

  AzurermDigitalTwinsTimeSeriesDatabaseConnection(
    super.localName, {
    required TfArg<String> digitalTwinsId,
    TfArg<String>? eventhubConsumerGroupName,
    required TfArg<String> eventhubName,
    required TfArg<String> eventhubNamespaceEndpointUri,
    required TfArg<String> eventhubNamespaceId,
    required TfArg<String> kustoClusterId,
    required TfArg<String> kustoClusterUri,
    required TfArg<String> kustoDatabaseName,
    TfArg<String>? kustoTableName,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'digital_twins_id': digitalTwinsId,
           'eventhub_consumer_group_name': ?eventhubConsumerGroupName,
           'eventhub_name': eventhubName,
           'eventhub_namespace_endpoint_uri': eventhubNamespaceEndpointUri,
           'eventhub_namespace_id': eventhubNamespaceId,
           'kusto_cluster_id': kustoClusterId,
           'kusto_cluster_uri': kustoClusterUri,
           'kusto_database_name': kustoDatabaseName,
           'kusto_table_name': ?kustoTableName,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDigitalTwinsTimeSeriesDatabaseConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDigitalTwinsTimeSeriesDatabaseConnection>`.
  RefTo<AzurermDigitalTwinsTimeSeriesDatabaseConnection> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `digital_twins_id` attribute.
  TfRef<String> get digitalTwinsId =>
      TfRef.attribute<String>(this, 'digital_twins_id');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `eventhub_namespace_endpoint_uri` attribute.
  TfRef<String> get eventhubNamespaceEndpointUri =>
      TfRef.attribute<String>(this, 'eventhub_namespace_endpoint_uri');

  /// Reference to `eventhub_namespace_id` attribute.
  TfRef<String> get eventhubNamespaceId =>
      TfRef.attribute<String>(this, 'eventhub_namespace_id');

  /// Reference to `kusto_cluster_id` attribute.
  TfRef<String> get kustoClusterId =>
      TfRef.attribute<String>(this, 'kusto_cluster_id');

  /// Reference to `kusto_cluster_uri` attribute.
  TfRef<String> get kustoClusterUri =>
      TfRef.attribute<String>(this, 'kusto_cluster_uri');

  /// Reference to `kusto_database_name` attribute.
  TfRef<String> get kustoDatabaseName =>
      TfRef.attribute<String>(this, 'kusto_database_name');

  /// Reference to `kusto_table_name` attribute.
  TfRef<String> get kustoTableName =>
      TfRef.attribute<String>(this, 'kusto_table_name');
}
