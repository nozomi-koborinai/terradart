// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_stream_analytics_job_schedule`.
const Set<String> _azurermStreamAnalyticsJobScheduleSensitive = <String>{};

/// Stream Analytics Job Schedule Start enum for `start_mode`.
extension type const StreamAnalyticsJobScheduleStartMode._(TfArg<String> _)
    implements TfArg<String> {
  StreamAnalyticsJobScheduleStartMode.variable(String name)
    : this._(TfArg.variable(name));
  StreamAnalyticsJobScheduleStartMode.expression(String template)
    : this._(TfArg.expression(template));
  const StreamAnalyticsJobScheduleStartMode.arg(TfArg<String> arg)
    : this._(arg);

  static const customtime = StreamAnalyticsJobScheduleStartMode._(
    TfArgLiteral('CustomTime'),
  );
  static const jobstarttime = StreamAnalyticsJobScheduleStartMode._(
    TfArgLiteral('JobStartTime'),
  );
  static const lastoutputeventtime = StreamAnalyticsJobScheduleStartMode._(
    TfArgLiteral('LastOutputEventTime'),
  );

  static const List<StreamAnalyticsJobScheduleStartMode> values = [
    customtime,
    jobstarttime,
    lastoutputeventtime,
  ];
}

/// Factory wrapper for `azurerm_stream_analytics_job_schedule`.
final class AzurermStreamAnalyticsJobSchedule extends Resource {
  static const String tfType = 'azurerm_stream_analytics_job_schedule';

  AzurermStreamAnalyticsJobSchedule(
    super.localName, {
    required StreamAnalyticsJobScheduleStartMode startMode,
    TfArg<String>? startTime,
    required TfArg<String> streamAnalyticsJobId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'start_mode': startMode,
           'start_time': ?startTime,
           'stream_analytics_job_id': streamAnalyticsJobId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStreamAnalyticsJobScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStreamAnalyticsJobSchedule>`.
  RefTo<AzurermStreamAnalyticsJobSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_output_time` attribute.
  TfRef<String> get lastOutputTime =>
      TfRef.attribute<String>(this, 'last_output_time');

  /// Reference to `start_mode` attribute.
  TfRef<String> get startMode => TfRef.attribute<String>(this, 'start_mode');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `stream_analytics_job_id` attribute.
  TfRef<String> get streamAnalyticsJobId =>
      TfRef.attribute<String>(this, 'stream_analytics_job_id');
}
