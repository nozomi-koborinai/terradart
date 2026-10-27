// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_integration_runtime_azure`.
const Set<String> _azurermDataFactoryIntegrationRuntimeAzureSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_factory_integration_runtime_azure`.
final class AzurermDataFactoryIntegrationRuntimeAzure extends Resource {
  static const String tfType = 'azurerm_data_factory_integration_runtime_azure';

  AzurermDataFactoryIntegrationRuntimeAzure(
    super.localName, {
    TfArg<bool>? cleanupEnabled,
    TfArg<String>? computeType,
    TfArg<num>? coreCount,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<num>? interactiveAuthoringTimeToLiveInMinutes,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<num>? timeToLiveMin,
    TfArg<bool>? virtualNetworkEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cleanup_enabled': ?cleanupEnabled,
           'compute_type': ?computeType,
           'core_count': ?coreCount,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'interactive_authoring_time_to_live_in_minutes':
               ?interactiveAuthoringTimeToLiveInMinutes,
           'location': location,
           'name': name,
           'time_to_live_min': ?timeToLiveMin,
           'virtual_network_enabled': ?virtualNetworkEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryIntegrationRuntimeAzureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryIntegrationRuntimeAzure>`.
  RefTo<AzurermDataFactoryIntegrationRuntimeAzure> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cleanup_enabled` attribute.
  TfRef<bool> get cleanupEnabled =>
      TfRef.attribute<bool>(this, 'cleanup_enabled');

  /// Reference to `compute_type` attribute.
  TfRef<String> get computeType =>
      TfRef.attribute<String>(this, 'compute_type');

  /// Reference to `core_count` attribute.
  TfRef<num> get coreCount => TfRef.attribute<num>(this, 'core_count');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `interactive_authoring_time_to_live_in_minutes` attribute.
  TfRef<num> get interactiveAuthoringTimeToLiveInMinutes =>
      TfRef.attribute<num>(
        this,
        'interactive_authoring_time_to_live_in_minutes',
      );

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `time_to_live_min` attribute.
  TfRef<num> get timeToLiveMin =>
      TfRef.attribute<num>(this, 'time_to_live_min');

  /// Reference to `virtual_network_enabled` attribute.
  TfRef<bool> get virtualNetworkEnabled =>
      TfRef.attribute<bool>(this, 'virtual_network_enabled');
}
