// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_iothub_data_connection`.
const Set<String> _azurermKustoIothubDataConnectionSensitive = <String>{};

/// Kusto Iothub Data Connection Data enum for `data_format`.
extension type const KustoIothubDataConnectionDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  KustoIothubDataConnectionDataFormat.variable(String name)
    : this._(TfArg.variable(name));
  KustoIothubDataConnectionDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const KustoIothubDataConnectionDataFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const apacheavro = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('APACHEAVRO'),
  );
  static const avro = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('AVRO'),
  );
  static const csv = KustoIothubDataConnectionDataFormat._(TfArgLiteral('CSV'));
  static const json = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('JSON'),
  );
  static const multijson = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('MULTIJSON'),
  );
  static const orc = KustoIothubDataConnectionDataFormat._(TfArgLiteral('ORC'));
  static const parquet = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('PARQUET'),
  );
  static const psv = KustoIothubDataConnectionDataFormat._(TfArgLiteral('PSV'));
  static const raw = KustoIothubDataConnectionDataFormat._(TfArgLiteral('RAW'));
  static const scsv = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('SCSV'),
  );
  static const singlejson = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('SINGLEJSON'),
  );
  static const sohsv = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('SOHSV'),
  );
  static const tsv = KustoIothubDataConnectionDataFormat._(TfArgLiteral('TSV'));
  static const tsve = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('TSVE'),
  );
  static const txt = KustoIothubDataConnectionDataFormat._(TfArgLiteral('TXT'));
  static const w3clogfile = KustoIothubDataConnectionDataFormat._(
    TfArgLiteral('W3CLOGFILE'),
  );

  static const List<KustoIothubDataConnectionDataFormat> values = [
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

/// Kusto Iothub Data Connection Database Routing enum for `database_routing_type`.
extension type const KustoIothubDataConnectionDatabaseRoutingType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoIothubDataConnectionDatabaseRoutingType.variable(String name)
    : this._(TfArg.variable(name));
  KustoIothubDataConnectionDatabaseRoutingType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoIothubDataConnectionDatabaseRoutingType.arg(TfArg<String> arg)
    : this._(arg);

  static const multi = KustoIothubDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Multi'),
  );
  static const single = KustoIothubDataConnectionDatabaseRoutingType._(
    TfArgLiteral('Single'),
  );

  static const List<KustoIothubDataConnectionDatabaseRoutingType> values = [
    multi,
    single,
  ];
}

/// Factory wrapper for `azurerm_kusto_iothub_data_connection`.
final class AzurermKustoIothubDataConnection extends Resource {
  static const String tfType = 'azurerm_kusto_iothub_data_connection';

  AzurermKustoIothubDataConnection(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> consumerGroup,
    KustoIothubDataConnectionDataFormat? dataFormat,
    required TfArg<String> databaseName,
    KustoIothubDataConnectionDatabaseRoutingType? databaseRoutingType,
    TfArg<List<String>>? eventSystemProperties,
    required TfArg<String> iothubId,
    required TfArg<String> location,
    TfArg<String>? mappingRuleName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? retrievalStartDate,
    required TfArg<String> sharedAccessPolicyName,
    TfArg<String>? tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'consumer_group': consumerGroup,
           'data_format': ?dataFormat,
           'database_name': databaseName,
           'database_routing_type': ?databaseRoutingType,
           'event_system_properties': ?eventSystemProperties,
           'iothub_id': iothubId,
           'location': location,
           'mapping_rule_name': ?mappingRuleName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retrieval_start_date': ?retrievalStartDate,
           'shared_access_policy_name': sharedAccessPolicyName,
           'table_name': ?tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKustoIothubDataConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoIothubDataConnection>`.
  RefTo<AzurermKustoIothubDataConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

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

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

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

  /// Reference to `shared_access_policy_name` attribute.
  TfRef<String> get sharedAccessPolicyName =>
      TfRef.attribute<String>(this, 'shared_access_policy_name');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
