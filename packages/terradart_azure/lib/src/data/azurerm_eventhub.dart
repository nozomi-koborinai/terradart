// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventhub/azurerm_eventhub.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventhub`.
const Set<String> _azurermEventhubSensitive = <String>{};

/// Factory wrapper for `azurerm_eventhub`.
final class DataAzurermEventhub extends Data {
  static const String tfType = 'azurerm_eventhub';

  DataAzurermEventhub(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubSensitive;

  /// A reference to the `azurerm_eventhub` this data source reads, for
  /// arguments typed `RefTo<AzurermEventhub>`.
  RefTo<AzurermEventhub> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `partition_ids` attribute.
  TfRef<List<String>> get partitionIds =>
      TfRef.attribute<List<String>>(this, 'partition_ids');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
