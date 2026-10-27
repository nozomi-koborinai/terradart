// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../playwright/azurerm_playwright_workspace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_playwright_workspace`.
const Set<String> _azurermPlaywrightWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_playwright_workspace`.
final class DataAzurermPlaywrightWorkspace extends Data {
  static const String tfType = 'azurerm_playwright_workspace';

  DataAzurermPlaywrightWorkspace(
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
  Set<String> get sensitiveFields => _azurermPlaywrightWorkspaceSensitive;

  /// A reference to the `azurerm_playwright_workspace` this data source reads, for
  /// arguments typed `RefTo<AzurermPlaywrightWorkspace>`.
  RefTo<AzurermPlaywrightWorkspace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dataplane_uri` attribute.
  TfRef<String> get dataplaneUri =>
      TfRef.attribute<String>(this, 'dataplane_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
