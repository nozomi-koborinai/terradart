// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_output_mssql`.
const Set<String> _azurermStreamAnalyticsOutputMssqlSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_stream_analytics_output_mssql`.
final class AzurermStreamAnalyticsOutputMssql extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_mssql';

  AzurermStreamAnalyticsOutputMssql(
    super.localName, {
    TfArg<String>? authenticationMode,
    required TfArg<String> database,
    TfArg<num>? maxBatchCount,
    TfArg<num>? maxWriterCount,
    required TfArg<String> name,
    Sensitive<String>? password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> server,
    required TfArg<String> streamAnalyticsJobName,
    required TfArg<String> table,
    TfArg<String>? user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_mode': ?authenticationMode,
           'database': database,
           'max_batch_count': ?maxBatchCount,
           'max_writer_count': ?maxWriterCount,
           'name': name,
           'password': ?password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server': server,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'table': table,
           'user': ?user,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputMssqlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputMssql>`.
  RefTo<AzurermStreamAnalyticsOutputMssql> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_mode` attribute.
  TfRef<String> get authenticationMode =>
      TfRef.attribute<String>(this, 'authentication_mode');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `max_batch_count` attribute.
  TfRef<num> get maxBatchCount => TfRef.attribute<num>(this, 'max_batch_count');

  /// Reference to `max_writer_count` attribute.
  TfRef<num> get maxWriterCount =>
      TfRef.attribute<num>(this, 'max_writer_count');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server` attribute.
  TfRef<String> get server => TfRef.attribute<String>(this, 'server');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
