// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_kusto_eventgrid_data_connection`.
const Set<String> _azurermKustoEventgridDataConnectionSensitive = <String>{};

/// Kusto Eventgrid Data Connection Blob Storage Event enum for `blob_storage_event_type`.
extension type const KustoEventgridDataConnectionBlobStorageEventType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoEventgridDataConnectionBlobStorageEventType.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventgridDataConnectionBlobStorageEventType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventgridDataConnectionBlobStorageEventType.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftStorageBlobcreated =
      KustoEventgridDataConnectionBlobStorageEventType._(
        TfArgLiteral('Microsoft.Storage.BlobCreated'),
      );
  static const microsoftStorageBlobrenamed =
      KustoEventgridDataConnectionBlobStorageEventType._(
        TfArgLiteral('Microsoft.Storage.BlobRenamed'),
      );

  static const List<KustoEventgridDataConnectionBlobStorageEventType> values = [
    microsoftStorageBlobcreated,
    microsoftStorageBlobrenamed,
  ];
}

/// Kusto Eventgrid Data Connection Data enum for `data_format`.
extension type const KustoEventgridDataConnectionDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  KustoEventgridDataConnectionDataFormat.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventgridDataConnectionDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventgridDataConnectionDataFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const apacheavro = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('APACHEAVRO'),
  );
  static const avro = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('AVRO'),
  );
  static const csv = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('CSV'),
  );
  static const json = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('JSON'),
  );
  static const multijson = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('MULTIJSON'),
  );
  static const orc = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('ORC'),
  );
  static const parquet = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('PARQUET'),
  );
  static const psv = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('PSV'),
  );
  static const raw = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('RAW'),
  );
  static const scsv = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('SCSV'),
  );
  static const singlejson = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('SINGLEJSON'),
  );
  static const sohsv = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('SOHSV'),
  );
  static const tsv = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('TSV'),
  );
  static const tsve = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('TSVE'),
  );
  static const txt = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('TXT'),
  );
  static const w3clogfile = KustoEventgridDataConnectionDataFormat._(
    TfArgLiteral('W3CLOGFILE'),
  );

  static const List<KustoEventgridDataConnectionDataFormat> values = [
    apacheavro,
    avro,
    csv,
    json,
    multijson,
    orc,
    parquet,
    psv,
    raw,
    scsv,
    singlejson,
    sohsv,
    tsv,
    tsve,
    txt,
    w3clogfile,
  ];
}

/// Kusto Eventgrid Data Connection Database Routing enum for `database_routing_type`.
extension type const KustoEventgridDataConnectionDatabaseRoutingType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoEventgridDataConnectionDatabaseRoutingType.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventgridDataConnectionDatabaseRoutingType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventgridDataConnectionDatabaseRoutingType.arg(TfArg<String> arg)
    : this._(arg);

  static const multi = KustoEventgridDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Multi'),
  );
  static const single = KustoEventgridDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Single'),
  );

  static const List<KustoEventgridDataConnectionDatabaseRoutingType> values = [
    multi,
    single,
  ];
}

/// Factory wrapper for `azurerm_kusto_eventgrid_data_connection`.
final class AzurermKustoEventgridDataConnection extends Resource {
  static const String tfType = 'azurerm_kusto_eventgrid_data_connection';

  AzurermKustoEventgridDataConnection(
    super.localName, {
    KustoEventgridDataConnectionBlobStorageEventType? blobStorageEventType,
    required TfArg<String> clusterName,
    KustoEventgridDataConnectionDataFormat? dataFormat,
    required TfArg<String> databaseName,
    KustoEventgridDataConnectionDatabaseRoutingType? databaseRoutingType,
    TfArg<String>? eventgridEventSubscriptionId,
    required TfArg<String> eventhubConsumerGroupName,
    required TfArg<String> eventhubId,
    required TfArg<String> location,
    TfArg<String>? managedIdentityId,
    TfArg<String>? mappingRuleName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? skipFirstRecord,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<String>? tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blob_storage_event_type': ?blobStorageEventType,
           'cluster_name': clusterName,
           'data_format': ?dataFormat,
           'database_name': databaseName,
           'database_routing_type': ?databaseRoutingType,
           'eventgrid_event_subscription_id': ?eventgridEventSubscriptionId,
           'eventhub_consumer_group_name': eventhubConsumerGroupName,
           'eventhub_id': eventhubId,
           'location': location,
           'managed_identity_id': ?managedIdentityId,
           'mapping_rule_name': ?mappingRuleName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'skip_first_record': ?skipFirstRecord,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'table_name': ?tableName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoEventgridDataConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoEventgridDataConnection>`.
  RefTo<AzurermKustoEventgridDataConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `blob_storage_event_type` attribute.
  TfRef<String> get blobStorageEventType =>
      TfRef.attribute<String>(this, 'blob_storage_event_type');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `data_format` attribute.
  TfRef<String> get dataFormat => TfRef.attribute<String>(this, 'data_format');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `database_routing_type` attribute.
  TfRef<String> get databaseRoutingType =>
      TfRef.attribute<String>(this, 'database_routing_type');

  /// Reference to `eventgrid_event_subscription_id` attribute.
  TfRef<String> get eventgridEventSubscriptionId =>
      TfRef.attribute<String>(this, 'eventgrid_event_subscription_id');

  /// Reference to `eventhub_consumer_group_name` attribute.
  TfRef<String> get eventhubConsumerGroupName =>
      TfRef.attribute<String>(this, 'eventhub_consumer_group_name');

  /// Reference to `eventhub_id` attribute.
  TfRef<String> get eventhubId => TfRef.attribute<String>(this, 'eventhub_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_identity_id` attribute.
  TfRef<String> get managedIdentityId =>
      TfRef.attribute<String>(this, 'managed_identity_id');

  /// Reference to `mapping_rule_name` attribute.
  TfRef<String> get mappingRuleName =>
      TfRef.attribute<String>(this, 'mapping_rule_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `skip_first_record` attribute.
  TfRef<bool> get skipFirstRecord =>
      TfRef.attribute<bool>(this, 'skip_first_record');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
