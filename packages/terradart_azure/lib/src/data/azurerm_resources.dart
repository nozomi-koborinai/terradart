// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_resources`.
const Set<String> _azurermResourcesSensitive = <String>{};

/// Factory wrapper for `azurerm_resources`.
final class DataAzurermResources extends Data {
  static const String tfType = 'azurerm_resources';

  DataAzurermResources(
    super.localName, {
    TfArg<String>? name,
    TfArg<Map<String, String>>? requiredTags,
    RefTo<AzurermResourceGroup>? resourceGroupName,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'required_tags': ?requiredTags,
           'resource_group_name': ?resourceGroupName?.encodeAs('name'),
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermResourcesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');

  /// Reference to `required_tags` attribute.
  TfRef<Map<String, String>> get requiredTags =>
      TfRef.attribute<Map<String, String>>(this, 'required_tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
