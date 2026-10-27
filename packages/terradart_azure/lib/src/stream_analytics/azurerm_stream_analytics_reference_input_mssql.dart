// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_reference_input_mssql`.
const Set<String> _azurermStreamAnalyticsReferenceInputMssqlSensitive =
    <String>{'password'};

/// Stream Analytics Reference Input Mssql Refresh enum for `refresh_type`.
extension type const StreamAnalyticsReferenceInputMssqlRefreshType._(
  TfArg<String> _
) implements TfArg<String> {
  StreamAnalyticsReferenceInputMssqlRefreshType.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsReferenceInputMssqlRefreshType.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsReferenceInputMssqlRefreshType.arg(TfArg<String> arg)
    : this._(arg);

  static const static = StreamAnalyticsReferenceInputMssqlRefreshType._(
    TfArgLiteral('Static'),
  );
  static const refreshperiodicallywithfull =
      StreamAnalyticsReferenceInputMssqlRefreshType._(
        TfArgLiteral('RefreshPeriodicallyWithFull'),
      );
  static const refreshperiodicallywithdelta =
      StreamAnalyticsReferenceInputMssqlRefreshType._(
        TfArgLiteral('RefreshPeriodicallyWithDelta'),
      );

  static const List<StreamAnalyticsReferenceInputMssqlRefreshType> values = [
    static,
    refreshperiodicallywithfull,
    refreshperiodicallywithdelta,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_reference_input_mssql`.
final class AzurermStreamAnalyticsReferenceInputMssql extends Resource {
  static const String tfType = 'azurerm_stream_analytics_reference_input_mssql';

  AzurermStreamAnalyticsReferenceInputMssql(
    super.localName, {
    required TfArg<String> database,
    TfArg<String>? deltaSnapshotQuery,
    required TfArg<String> fullSnapshotQuery,
    required TfArg<String> name,
    required Sensitive<String> password,
    TfArg<String>? refreshIntervalDuration,
    required StreamAnalyticsReferenceInputMssqlRefreshType refreshType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> server,
    required TfArg<String> streamAnalyticsJobName,
    TfArg<String>? table,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database': database,
           'delta_snapshot_query': ?deltaSnapshotQuery,
           'full_snapshot_query': fullSnapshotQuery,
           'name': name,
           'password': password,
           'refresh_interval_duration': ?refreshIntervalDuration,
           'refresh_type': refreshType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server': server,
           'stream_analytics_job_name': streamAnalyticsJobName,
           'table': ?table,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsReferenceInputMssqlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsReferenceInputMssql>`.
  RefTo<AzurermStreamAnalyticsReferenceInputMssql> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `delta_snapshot_query` attribute.
  TfRef<String> get deltaSnapshotQuery =>
      TfRef.attribute<String>(this, 'delta_snapshot_query');

  /// Reference to `full_snapshot_query` attribute.
  TfRef<String> get fullSnapshotQuery =>
      TfRef.attribute<String>(this, 'full_snapshot_query');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `refresh_interval_duration` attribute.
  TfRef<String> get refreshIntervalDuration =>
      TfRef.attribute<String>(this, 'refresh_interval_duration');

  /// Reference to `refresh_type` attribute.
  TfRef<String> get refreshType =>
      TfRef.attribute<String>(this, 'refresh_type');

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

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
