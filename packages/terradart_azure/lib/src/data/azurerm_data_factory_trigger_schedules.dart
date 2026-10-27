// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_trigger_schedules`.
const Set<String> _azurermDataFactoryTriggerSchedulesSensitive = <String>{};

/// Factory wrapper for `azurerm_data_factory_trigger_schedules`.
final class DataAzurermDataFactoryTriggerSchedules extends Data {
  static const String tfType = 'azurerm_data_factory_trigger_schedules';

  DataAzurermDataFactoryTriggerSchedules(
    super.localName, {
    required TfArg<String> dataFactoryId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'data_factory_id': dataFactoryId});

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerSchedulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `items` attribute.
  TfRef<List<String>> get items => TfRef.attribute<List<String>>(this, 'items');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');
}
