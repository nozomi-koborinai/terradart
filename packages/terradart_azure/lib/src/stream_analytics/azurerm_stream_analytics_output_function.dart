// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_output_function`.
const Set<String> _azurermStreamAnalyticsOutputFunctionSensitive = <String>{
  'api_key',
};

/// Factory wrapper for `azurerm_stream_analytics_output_function`.
final class AzurermStreamAnalyticsOutputFunction extends Resource {
  static const String tfType = 'azurerm_stream_analytics_output_function';

  AzurermStreamAnalyticsOutputFunction(
    super.localName, {
    required Sensitive<String> apiKey,
    TfArg<num>? batchMaxCount,
    TfArg<num>? batchMaxInBytes,
    required TfArg<String> functionApp,
    required TfArg<String> functionName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> streamAnalyticsJobName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key': apiKey,
           'batch_max_count': ?batchMaxCount,
           'batch_max_in_bytes': ?batchMaxInBytes,
           'function_app': functionApp,
           'function_name': functionName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'stream_analytics_job_name': streamAnalyticsJobName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsOutputFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsOutputFunction>`.
  RefTo<AzurermStreamAnalyticsOutputFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `batch_max_count` attribute.
  TfRef<num> get batchMaxCount => TfRef.attribute<num>(this, 'batch_max_count');

  /// Reference to `batch_max_in_bytes` attribute.
  TfRef<num> get batchMaxInBytes =>
      TfRef.attribute<num>(this, 'batch_max_in_bytes');

  /// Reference to `function_app` attribute.
  TfRef<String> get functionApp =>
      TfRef.attribute<String>(this, 'function_app');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `stream_analytics_job_name` attribute.
  TfRef<String> get streamAnalyticsJobName =>
      TfRef.attribute<String>(this, 'stream_analytics_job_name');
}
