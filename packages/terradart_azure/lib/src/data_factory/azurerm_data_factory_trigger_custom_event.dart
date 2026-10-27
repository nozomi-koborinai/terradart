// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_trigger_custom_event`.
const Set<String> _azurermDataFactoryTriggerCustomEventSensitive = <String>{};

/// Typed helper for the `pipeline` block of
/// `azurerm_data_factory_trigger_custom_event` (derived from provider schema).
@immutable
final class DataFactoryTriggerCustomEventPipeline {
  const DataFactoryTriggerCustomEventPipeline({
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

/// Factory wrapper for `azurerm_data_factory_trigger_custom_event`.
final class AzurermDataFactoryTriggerCustomEvent extends Resource {
  static const String tfType = 'azurerm_data_factory_trigger_custom_event';

  AzurermDataFactoryTriggerCustomEvent(
    super.localName, {
    TfArg<bool>? activated,
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> eventgridTopicId,
    required TfArg<List<String>> events,
    required TfArg<String> name,
    TfArg<String>? subjectBeginsWith,
    TfArg<String>? subjectEndsWith,
    required List<DataFactoryTriggerCustomEventPipeline> pipeline,
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
           'description': ?description,
           'eventgrid_topic_id': eventgridTopicId,
           'events': events,
           'name': name,
           'subject_begins_with': ?subjectBeginsWith,
           'subject_ends_with': ?subjectEndsWith,
           'pipeline': TfArg.literal([for (final e in pipeline) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryTriggerCustomEventSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryTriggerCustomEvent>`.
  RefTo<AzurermDataFactoryTriggerCustomEvent> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `eventgrid_topic_id` attribute.
  TfRef<String> get eventgridTopicId =>
      TfRef.attribute<String>(this, 'eventgrid_topic_id');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `subject_begins_with` attribute.
  TfRef<String> get subjectBeginsWith =>
      TfRef.attribute<String>(this, 'subject_begins_with');

  /// Reference to `subject_ends_with` attribute.
  TfRef<String> get subjectEndsWith =>
      TfRef.attribute<String>(this, 'subject_ends_with');
}
