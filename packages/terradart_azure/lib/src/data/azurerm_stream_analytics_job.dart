// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream_analytics/azurerm_stream_analytics_job.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stream_analytics_job`.
const Set<String> _azurermStreamAnalyticsJobSensitive = <String>{};

/// Factory wrapper for `azurerm_stream_analytics_job`.
final class DataAzurermStreamAnalyticsJob extends Data {
  static const String tfType = 'azurerm_stream_analytics_job';

  DataAzurermStreamAnalyticsJob(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStreamAnalyticsJobSensitive;

  /// A reference to the `azurerm_stream_analytics_job` this data source reads, for
  /// arguments typed `RefTo<AzurermStreamAnalyticsJob>`.
  RefTo<AzurermStreamAnalyticsJob> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compatibility_level` attribute.
  TfRef<String> get compatibilityLevel =>
      TfRef.attribute<String>(this, 'compatibility_level');

  /// Reference to `data_locale` attribute.
  TfRef<String> get dataLocale => TfRef.attribute<String>(this, 'data_locale');

  /// Reference to `events_late_arrival_max_delay_in_seconds` attribute.
  TfRef<num> get eventsLateArrivalMaxDelayInSeconds =>
      TfRef.attribute<num>(this, 'events_late_arrival_max_delay_in_seconds');

  /// Reference to `events_out_of_order_max_delay_in_seconds` attribute.
  TfRef<num> get eventsOutOfOrderMaxDelayInSeconds =>
      TfRef.attribute<num>(this, 'events_out_of_order_max_delay_in_seconds');

  /// Reference to `events_out_of_order_policy` attribute.
  TfRef<String> get eventsOutOfOrderPolicy =>
      TfRef.attribute<String>(this, 'events_out_of_order_policy');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `last_output_time` attribute.
  TfRef<String> get lastOutputTime =>
      TfRef.attribute<String>(this, 'last_output_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `output_error_policy` attribute.
  TfRef<String> get outputErrorPolicy =>
      TfRef.attribute<String>(this, 'output_error_policy');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `start_mode` attribute.
  TfRef<String> get startMode => TfRef.attribute<String>(this, 'start_mode');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `streaming_units` attribute.
  TfRef<num> get streamingUnits =>
      TfRef.attribute<num>(this, 'streaming_units');

  /// Reference to `transformation_query` attribute.
  TfRef<String> get transformationQuery =>
      TfRef.attribute<String>(this, 'transformation_query');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
