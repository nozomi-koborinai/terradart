// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_output_cosmosdb`.
const Set<String> _azurermStreamAnalyticsOutputCosmosdbSensitive = <String>{
  'cosmosdb_account_key',
};

/// Stream Analytics Output Cosmosdb Authentication enum for `authentication_mode`.
extension type const StreamAnalyticsOutputCosmosdbAuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsOutputCosmosdbAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsOutputCosmosdbAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsOutputCosmosdbAuthenticationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const connectionstring =
      StreamAnalyticsOutputCosmosdbAuthenticationMode._(
        TfArgLiteral('ConnectionString'),
      );
  static const msi = StreamAnalyticsOutputCosmosdbAuthenticationMode._(
    TfArgLiteral('Msi'),
  );

  static const List<StreamAnalyticsOutputCosmosdbAuthenticationMode> values = [
    connectionstring,
    msi,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_output_cosmosdb`.
final class AzurermStreamAnalyticsOutputCosmosdb extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_cosmosdb';

  AzurermStreamAnalyticsOutputCosmosdb(
    super.localName, {
    StreamAnalyticsOutputCosmosdbAuthenticationMode? authenticationMode,
    required TfArg<String> containerName,
    required Sensitive<String> cosmosdbAccountKey,
    required TfArg<String> cosmosdbSqlDatabaseId,
    TfArg<String>? documentId,
    required TfArg<String> name,
    TfArg<String>? partitionKey,
    required TfArg<String> streamAnalyticsJobId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
           'container_name': containerName,
           'cosmosdb_account_key': cosmosdbAccountKey,
           'cosmosdb_sql_database_id': cosmosdbSqlDatabaseId,
           'document_id': ?documentId,
           'name': name,
           'partition_key': ?partitionKey,
           'stream_analytics_job_id': streamAnalyticsJobId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputCosmosdbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputCosmosdb>`.
  RefTo<AzurermStreamAnalyticsOutputCosmosdb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `cosmosdb_account_key` attribute.
  TfRef<String> get cosmosdbAccountKey =>
      TfRef.attribute<String>(this, 'cosmosdb_account_key');

  /// Reference to `cosmosdb_sql_database_id` attribute.
  TfRef<String> get cosmosdbSqlDatabaseId =>
      TfRef.attribute<String>(this, 'cosmosdb_sql_database_id');

  /// Reference to `document_id` attribute.
  TfRef<String> get documentId => TfRef.attribute<String>(this, 'document_id');

  /// Reference to `partition_key` attribute.
  TfRef<String> get partitionKey =>
      TfRef.attribute<String>(this, 'partition_key');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');
}
