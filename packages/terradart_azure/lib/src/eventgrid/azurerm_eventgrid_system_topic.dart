// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_system_topic`.
const Set<String> _azurermEventgridSystemTopicSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_eventgrid_system_topic` (derived from provider schema).
@immutable
final class EventgridSystemTopicIdentity {
  const EventgridSystemTopicIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventgrid_system_topic`.
final class AzurermEventgridSystemTopic extends Resource {
  static const String tfType = 'azurerm_eventgrid_system_topic';

  AzurermEventgridSystemTopic(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sourceResourceId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> topicType,
    EventgridSystemTopicIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_resource_id': sourceResourceId,
           'tags': ?tags,
           'topic_type': topicType,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventgridSystemTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridSystemTopic>`.
  RefTo<AzurermEventgridSystemTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `metric_resource_id` attribute.
  TfRef<String> get metricResourceId =>
      TfRef.attribute<String>(this, 'metric_resource_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `topic_type` attribute.
  TfRef<String> get topicType => TfRef.attribute<String>(this, 'topic_type');
}
