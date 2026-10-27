// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_trigger_tumbling_window`.
const Set<String> _azurermDataFactoryTriggerTumblingWindowSensitive =
    <String>{};

/// Typed helper for the `pipeline` block of
/// `azurerm_data_factory_trigger_tumbling_window` (derived from provider schema).
@immutable
final class DataFactoryTriggerTumblingWindowPipeline {
  const DataFactoryTriggerTumblingWindowPipeline({
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

/// Typed helper for the `retry` block of
/// `azurerm_data_factory_trigger_tumbling_window` (derived from provider schema).
@immutable
final class DataFactoryTriggerTumblingWindowRetry {
  const DataFactoryTriggerTumblingWindowRetry({
    required this.count,
    this.interval,
  });

  final TfArg<num> count;

  final TfArg<num>? interval;

  @internal
  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'interval': ?interval?.toTfJson(),
  };
}

/// Typed helper for the `trigger_dependency` block of
/// `azurerm_data_factory_trigger_tumbling_window` (derived from provider schema).
@immutable
final class DataFactoryTriggerTumblingWindowTriggerDependency {
  const DataFactoryTriggerTumblingWindowTriggerDependency({
    this.offset,
    this.size,
    this.triggerName,
  });

  final TfArg<String>? offset;

  final TfArg<String>? size;

  final TfArg<String>? triggerName;

  @internal
  Map<String, Object?> encode() => {
    'offset': ?offset?.toTfJson(),
    'size': ?size?.toTfJson(),
    'trigger_name': ?triggerName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_trigger_tumbling_window`.
final class AzurermDataFactoryTriggerTumblingWindow extends Resource {
  static const String tfType = 'azurerm_data_factory_trigger_tumbling_window';

  AzurermDataFactoryTriggerTumblingWindow(
    super.localName, {
    TfArg<bool>? activated,
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? delay,
    TfArg<String>? description,
    TfArg<String>? endTime,
    required TfArg<String> frequency,
    required TfArg<num> interval,
    TfArg<num>? maxConcurrency,
    required TfArg<String> name,
    required TfArg<String> startTime,
    required DataFactoryTriggerTumblingWindowPipeline pipeline,
    DataFactoryTriggerTumblingWindowRetry? retry,
    List<DataFactoryTriggerTumblingWindowTriggerDependency>? triggerDependency,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activated': ?activated,
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'delay': ?delay,
           'description': ?description,
           'end_time': ?endTime,
           'frequency': frequency,
           'interval': interval,
           'max_concurrency': ?maxConcurrency,
           'name': name,
           'start_time': startTime,
           'pipeline': TfArg.literal(pipeline.encode()),
           if (retry != null) 'retry': TfArg.literal(retry.encode()),
           if (triggerDependency != null)
             'trigger_dependency': TfArg.literal([
               for (final e in triggerDependency) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerTumblingWindowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryTriggerTumblingWindow>`.
  RefTo<AzurermDataFactoryTriggerTumblingWindow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activated => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `delay` attribute.
  TfRef<String> get delay => TfRef.attribute<String>(this, 'delay');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `max_concurrency` attribute.
  TfRef<num> get maxConcurrency =>
      TfRef.attribute<num>(this, 'max_concurrency');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');
}
