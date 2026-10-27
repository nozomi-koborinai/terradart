// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_eventhub_data_connection`.
const Set<String> _azurermKustoEventhubDataConnectionSensitive = <String>{};

/// Kusto Eventhub Data Connection enum for `compression`.
extension type const KustoEventhubDataConnectionCompression._(TfArg<String> _)
    implements TfArg<String> {
  KustoEventhubDataConnectionCompression.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventhubDataConnectionCompression.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventhubDataConnectionCompression.arg(TfArg<String> arg)
    : this._(arg);

  static const gzip = KustoEventhubDataConnectionCompression._(
    TfArgLiteral('GZip'),
  );
  static const none = KustoEventhubDataConnectionCompression._(
    TfArgLiteral('None'),
  );

  static const List<KustoEventhubDataConnectionCompression> values = [
    gzip,
    none,
  ];
}

/// Kusto Eventhub Data Connection Data enum for `data_format`.
extension type const KustoEventhubDataConnectionDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  KustoEventhubDataConnectionDataFormat.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventhubDataConnectionDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventhubDataConnectionDataFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const apacheavro = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('APACHEAVRO'),
  );
  static const avro = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('AVRO'),
  );
  static const csv = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('CSV'),
  );
  static const json = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('JSON'),
  );
  static const multijson = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('MULTIJSON'),
  );
  static const orc = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('ORC'),
  );
  static const parquet = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('PARQUET'),
  );
  static const psv = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('PSV'),
  );
  static const raw = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('RAW'),
  );
  static const scsv = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('SCSV'),
  );
  static const singlejson = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('SINGLEJSON'),
  );
  static const sohsv = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('SOHSV'),
  );
  static const tsv = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('TSV'),
  );
  static const tsve = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('TSVE'),
  );
  static const txt = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('TXT'),
  );
  static const w3clogfile = KustoEventhubDataConnectionDataFormat._(
    TfArgLiteral('W3CLOGFILE'),
  );

  static const List<KustoEventhubDataConnectionDataFormat> values = [
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

/// Kusto Eventhub Data Connection Database Routing enum for `database_routing_type`.
extension type const KustoEventhubDataConnectionDatabaseRoutingType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoEventhubDataConnectionDatabaseRoutingType.variable(String name)
    : this._(TfArg.variable(name));
  KustoEventhubDataConnectionDatabaseRoutingType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoEventhubDataConnectionDatabaseRoutingType.arg(TfArg<String> arg)
    : this._(arg);

  static const multi = KustoEventhubDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Multi'),
  );
  static const single = KustoEventhubDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Single'),
  );

  static const List<KustoEventhubDataConnectionDatabaseRoutingType> values = [
    multi,
    single,
  ];
}

/// Factory wrapper for `azurerm_kusto_eventhub_data_connection`.
final class AzurermKustoEventhubDataConnection extends Resource {
  static const String tfType = 'azurerm_kusto_eventhub_data_connection';

  AzurermKustoEventhubDataConnection(
    super.localName, {
    required TfArg<String> clusterName,
    KustoEventhubDataConnectionCompression? compression,
    required TfArg<String> consumerGroup,
    KustoEventhubDataConnectionDataFormat? dataFormat,
    required TfArg<String> databaseName,
    KustoEventhubDataConnectionDatabaseRoutingType? databaseRoutingType,
    TfArg<List<String>>? eventSystemProperties,
    required TfArg<String> eventhubId,
    TfArg<String>? identityId,
    required TfArg<String> location,
    TfArg<String>? mappingRuleName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? retrievalStartDate,
    TfArg<String>? tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'compression': ?compression,
           'consumer_group': consumerGroup,
           'data_format': ?dataFormat,
           'database_name': databaseName,
           'database_routing_type': ?databaseRoutingType,
           'event_system_properties': ?eventSystemProperties,
           'eventhub_id': eventhubId,
           'identity_id': ?identityId,
           'location': location,
           'mapping_rule_name': ?mappingRuleName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retrieval_start_date': ?retrievalStartDate,
           'table_name': ?tableName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoEventhubDataConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoEventhubDataConnection>`.
  RefTo<AzurermKustoEventhubDataConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `compression` attribute.
  TfRef<String> get compression => TfRef.attribute<String>(this, 'compression');

  /// Reference to `consumer_group` attribute.
  TfRef<String> get consumerGroup =>
      TfRef.attribute<String>(this, 'consumer_group');

  /// Reference to `data_format` attribute.
  TfRef<String> get dataFormat => TfRef.attribute<String>(this, 'data_format');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `database_routing_type` attribute.
  TfRef<String> get databaseRoutingType =>
      TfRef.attribute<String>(this, 'database_routing_type');

  /// Reference to `event_system_properties` attribute.
  TfRef<List<String>> get eventSystemProperties =>
      TfRef.attribute<List<String>>(this, 'event_system_properties');

  /// Reference to `eventhub_id` attribute.
  TfRef<String> get eventhubId => TfRef.attribute<String>(this, 'eventhub_id');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mapping_rule_name` attribute.
  TfRef<String> get mappingRuleName =>
      TfRef.attribute<String>(this, 'mapping_rule_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retrieval_start_date` attribute.
  TfRef<String> get retrievalStartDate =>
      TfRef.attribute<String>(this, 'retrieval_start_date');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
