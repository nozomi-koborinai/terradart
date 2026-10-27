// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventhub/azurerm_eventhub_consumer_group.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub_consumer_group`.
const Set<String> _azurermEventhubConsumerGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_eventhub_consumer_group`.
final class DataAzurermEventhubConsumerGroup extends Data {
  static const String tfType = 'azurerm_eventhub_consumer_group';

  DataAzurermEventhubConsumerGroup(
    super.localName, {
    required TfArg<String> eventhubName,
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'eventhub_name': eventhubName,
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubConsumerGroupSensitive;

  /// A reference to the `azurerm_eventhub_consumer_group` this data source reads, for
  /// arguments typed `RefTo<AzurermEventhubConsumerGroup>`.
  RefTo<AzurermEventhubConsumerGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `user_metadata` attribute.
  TfRef<String> get userMetadata =>
      TfRef.attribute<String>(this, 'user_metadata');

  /// Reference to `eventhub_name` attribute.
  TfRef<String> get eventhubName =>
      TfRef.attribute<String>(this, 'eventhub_name');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
