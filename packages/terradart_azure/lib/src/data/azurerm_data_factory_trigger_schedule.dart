// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_factory/azurerm_data_factory_trigger_schedule.dart';

/// Sensitive field paths for `azurerm_data_factory_trigger_schedule`.
const Set<String> _azurermDataFactoryTriggerScheduleSensitive = <String>{};

/// Factory wrapper for `azurerm_data_factory_trigger_schedule`.
final class DataAzurermDataFactoryTriggerSchedule extends Data {
  static const String tfType = 'azurerm_data_factory_trigger_schedule';

  DataAzurermDataFactoryTriggerSchedule(
    super.localName, {
    required TfArg<String> dataFactoryId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'data_factory_id': dataFactoryId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerScheduleSensitive;

  /// A reference to the `azurerm_data_factory_trigger_schedule` this data source reads, for
  /// arguments typed `RefTo<AzurermDataFactoryTriggerSchedule>`.
  RefTo<AzurermDataFactoryTriggerSchedule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activated => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `pipeline_name` attribute.
  TfRef<String> get pipelineName =>
      TfRef.attribute<String>(this, 'pipeline_name');

  /// Reference to `schedule` attribute.
  TfRef<List<Map<String, Object?>>> get schedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schedule');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');
}
