// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_sql_pool_workload_group`.
const Set<String> _azurermSynapseSqlPoolWorkloadGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_sql_pool_workload_group`.
final class AzurermSynapseSqlPoolWorkloadGroup extends Resource {
  static const String tfType = 'azurerm_synapse_sql_pool_workload_group';

  AzurermSynapseSqlPoolWorkloadGroup(
    super.localName, {
    TfArg<String>? importance,
    required TfArg<num> maxResourcePercent,
    TfArg<num>? maxResourcePercentPerRequest,
    required TfArg<num> minResourcePercent,
    TfArg<num>? minResourcePercentPerRequest,
    required TfArg<String> name,
    TfArg<num>? queryExecutionTimeoutInSeconds,
    required TfArg<String> sqlPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'importance': ?importance,
           'max_resource_percent': maxResourcePercent,
           'max_resource_percent_per_request': ?maxResourcePercentPerRequest,
           'min_resource_percent': minResourcePercent,
           'min_resource_percent_per_request': ?minResourcePercentPerRequest,
           'name': name,
           'query_execution_timeout_in_seconds':
               ?queryExecutionTimeoutInSeconds,
           'sql_pool_id': sqlPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseSqlPoolWorkloadGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseSqlPoolWorkloadGroup>`.
  RefTo<AzurermSynapseSqlPoolWorkloadGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `importance` attribute.
  TfRef<String> get importance => TfRef.attribute<String>(this, 'importance');

  /// Reference to `max_resource_percent` attribute.
  TfRef<num> get maxResourcePercent =>
      TfRef.attribute<num>(this, 'max_resource_percent');

  /// Reference to `max_resource_percent_per_request` attribute.
  TfRef<num> get maxResourcePercentPerRequest =>
      TfRef.attribute<num>(this, 'max_resource_percent_per_request');

  /// Reference to `min_resource_percent` attribute.
  TfRef<num> get minResourcePercent =>
      TfRef.attribute<num>(this, 'min_resource_percent');

  /// Reference to `min_resource_percent_per_request` attribute.
  TfRef<num> get minResourcePercentPerRequest =>
      TfRef.attribute<num>(this, 'min_resource_percent_per_request');

  /// Reference to `query_execution_timeout_in_seconds` attribute.
  TfRef<num> get queryExecutionTimeoutInSeconds =>
      TfRef.attribute<num>(this, 'query_execution_timeout_in_seconds');

  /// Reference to `sql_pool_id` attribute.
  TfRef<String> get sqlPoolId => TfRef.attribute<String>(this, 'sql_pool_id');
}
