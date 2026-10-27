// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_pipeline`.
const Set<String> _azurermDataFactoryPipelineSensitive = <String>{};

/// Factory wrapper for `azurerm_data_factory_pipeline`.
final class AzurermDataFactoryPipeline extends Resource {
  static const String tfType = 'azurerm_data_factory_pipeline';

  AzurermDataFactoryPipeline(
    super.localName, {
    TfArg<String>? activitiesJson,
    TfArg<List<String>>? annotations,
    TfArg<num>? concurrency,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? folder,
    TfArg<String>? monitorMetricsAfterDuration,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<Map<String, String>>? variables,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activities_json': ?activitiesJson,
           'annotations': ?annotations,
           'concurrency': ?concurrency,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'folder': ?folder,
           'monitor_metrics_after_duration': ?monitorMetricsAfterDuration,
           'name': name,
           'parameters': ?parameters,
           'variables': ?variables,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactoryPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryPipeline>`.
  RefTo<AzurermDataFactoryPipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activities_json` attribute.
  TfRef<String> get activitiesJson =>
      TfRef.attribute<String>(this, 'activities_json');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `concurrency` attribute.
  TfRef<num> get concurrency => TfRef.attribute<num>(this, 'concurrency');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `folder` attribute.
  TfRef<String> get folder => TfRef.attribute<String>(this, 'folder');

  /// Reference to `monitor_metrics_after_duration` attribute.
  TfRef<String> get monitorMetricsAfterDuration =>
      TfRef.attribute<String>(this, 'monitor_metrics_after_duration');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `variables` attribute.
  TfRef<Map<String, String>> get variables =>
      TfRef.attribute<Map<String, String>>(this, 'variables');
}
