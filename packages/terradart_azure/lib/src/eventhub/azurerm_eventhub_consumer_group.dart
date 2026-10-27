// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_consumer_group`.
const Set<String> _azurermEventhubConsumerGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_eventhub_consumer_group`.
final class AzurermEventhubConsumerGroup extends Resource {
  static const String tfType = 'azurerm_eventhub_consumer_group';

  AzurermEventhubConsumerGroup(
    super.localName, {
    required TfArg<String> eventhubName,
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? userMetadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_name': eventhubName,
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'user_metadata': ?userMetadata,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubConsumerGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhubConsumerGroup>`.
  RefTo<AzurermEventhubConsumerGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `user_metadata` attribute.
  TfRef<String> get userMetadata =>
      TfRef.attribute<String>(this, 'user_metadata');
}
