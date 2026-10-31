// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_trigger_schedule`.
const Set<String> _azurermDataFactoryTriggerScheduleSensitive = <String>{};

/// Data Factory Trigger Schedule enum for `frequency`.
extension type const DataFactoryTriggerScheduleFrequency._(TfArg<String> _)
    implements TfArg<String> {
  DataFactoryTriggerScheduleFrequency.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryTriggerScheduleFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryTriggerScheduleFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const minute = DataFactoryTriggerScheduleFrequency._(
    TfArgLiteral('Minute'),
  );
  static const hour = DataFactoryTriggerScheduleFrequency._(
    TfArgLiteral('Hour'),
  );
  static const day = DataFactoryTriggerScheduleFrequency._(TfArgLiteral('Day'));
  static const week = DataFactoryTriggerScheduleFrequency._(
    TfArgLiteral('Week'),
  );
  static const month = DataFactoryTriggerScheduleFrequency._(
    TfArgLiteral('Month'),
  );

  static const List<DataFactoryTriggerScheduleFrequency> values = [
    minute,
    hour,
    day,
    week,
    month,
  ];
}

/// Exactly one of `pipeline`, `pipeline_name` on `azurerm_data_factory_trigger_schedule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pipeline(...)`.
sealed class DataFactoryTriggerSchedulePipelineTarget {
  const DataFactoryTriggerSchedulePipelineTarget();

  /// Sets `pipeline`.
  const factory DataFactoryTriggerSchedulePipelineTarget.pipeline(
    List<DataFactoryTriggerSchedulePipeline> pipeline,
  ) = DataFactoryTriggerSchedulePipelineTargetPipeline;

  /// Sets `pipeline_name`.
  const factory DataFactoryTriggerSchedulePipelineTarget.pipelineName(
    TfArg<String> pipelineName,
  ) = DataFactoryTriggerSchedulePipelineTargetPipelineName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryTriggerSchedulePipelineTarget.pipeline] choice: sets `pipeline`.
final class DataFactoryTriggerSchedulePipelineTargetPipeline
    extends DataFactoryTriggerSchedulePipelineTarget {
  const DataFactoryTriggerSchedulePipelineTargetPipeline(this.pipeline);

  final List<DataFactoryTriggerSchedulePipeline> pipeline;

  @internal
  @override
  String get blockKey => 'pipeline';

  @internal
  @override
  Map<String, Object?> encode() => {
    'pipeline': [for (final e in pipeline) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pipeline': TfArg.literal([for (final e in pipeline) e.encode()]),
  };
}

/// The [DataFactoryTriggerSchedulePipelineTarget.pipelineName] choice: sets `pipeline_name`.
final class DataFactoryTriggerSchedulePipelineTargetPipelineName
    extends DataFactoryTriggerSchedulePipelineTarget {
  const DataFactoryTriggerSchedulePipelineTargetPipelineName(this.pipelineName);

  final TfArg<String> pipelineName;

  @internal
  @override
  String get blockKey => 'pipeline_name';

  @internal
  @override
  Map<String, Object?> encode() => {'pipeline_name': pipelineName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'pipeline_name': pipelineName};
}

/// Typed helper for the `pipeline` block of
/// `azurerm_data_factory_trigger_schedule` (derived from provider schema).
@immutable
final class DataFactoryTriggerSchedulePipeline {
  const DataFactoryTriggerSchedulePipeline({
    required this.name,
    this.parameters,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `schedule` block of
/// `azurerm_data_factory_trigger_schedule` (derived from provider schema).
@immutable
final class DataFactoryTriggerSchedule {
  const DataFactoryTriggerSchedule({
    this.daysOfMonth,
    this.daysOfWeek,
    this.hours,
    this.minutes,
    this.monthly,
  });

  final TfArg<List<num>>? daysOfMonth;

  final TfArg<List<String>>? daysOfWeek;

  final TfArg<List<num>>? hours;

  final TfArg<List<num>>? minutes;

  final List<DataFactoryTriggerScheduleMonthly>? monthly;

  @internal
  Map<String, Object?> encode() => {
    'days_of_month': ?daysOfMonth?.toTfJson(),
    'days_of_week': ?daysOfWeek?.toTfJson(),
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    if (monthly != null) 'monthly': [for (final e in monthly!) e.encode()],
  };
}

/// Typed helper for the `schedule.monthly` block of
/// `azurerm_data_factory_trigger_schedule` (derived from provider schema).
@immutable
final class DataFactoryTriggerScheduleMonthly {
  const DataFactoryTriggerScheduleMonthly({this.week, required this.weekday});

  final TfArg<num>? week;

  final TfArg<String> weekday;

  @internal
  Map<String, Object?> encode() => {
    'week': ?week?.toTfJson(),
    'weekday': weekday.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_trigger_schedule`.
final class AzurermDataFactoryTriggerSchedule extends Resource {
  static const String tfType = 'azurerm_data_factory_trigger_schedule';

  AzurermDataFactoryTriggerSchedule(
    super.localName, {
    TfArg<bool>? activated,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? endTime,
    DataFactoryTriggerScheduleFrequency? frequency,
    TfArg<num>? interval,
    required TfArg<String> name,
    required DataFactoryTriggerSchedulePipelineTarget pipelineTarget,
    TfArg<Map<String, String>>? pipelineParameters,
    TfArg<String>? startTime,
    TfArg<String>? timeZone,
    DataFactoryTriggerSchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activated': ?activated,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'end_time': ?endTime,
           'frequency': ?frequency,
           'interval': ?interval,
           'name': name,
           ...pipelineTarget.argMap,
           'pipeline_parameters': ?pipelineParameters,
           'start_time': ?startTime,
           'time_zone': ?timeZone,
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryTriggerSchedule>`.
  RefTo<AzurermDataFactoryTriggerSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activated => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

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

  /// Reference to `pipeline_parameters` attribute.
  TfRef<Map<String, String>> get pipelineParameters =>
      TfRef.attribute<Map<String, String>>(this, 'pipeline_parameters');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
