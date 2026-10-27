// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventgrid/azurerm_eventgrid_system_topic.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_system_topic`.
const Set<String> _azurermEventgridSystemTopicSensitive = <String>{};

/// Factory wrapper for `azurerm_eventgrid_system_topic`.
final class DataAzurermEventgridSystemTopic extends Data {
  static const String tfType = 'azurerm_eventgrid_system_topic';

  DataAzurermEventgridSystemTopic(
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
  Set<String> get sensitiveFields => _azurermEventgridSystemTopicSensitive;

  /// A reference to the `azurerm_eventgrid_system_topic` this data source reads, for
  /// arguments typed `RefTo<AzurermEventgridSystemTopic>`.
  RefTo<AzurermEventgridSystemTopic> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metric_resource_id` attribute.
  TfRef<String> get metricResourceId =>
      TfRef.attribute<String>(this, 'metric_resource_id');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `topic_type` attribute.
  TfRef<String> get topicType => TfRef.attribute<String>(this, 'topic_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
