// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_image.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_image`.
const Set<String> _azurermImageSensitive = <String>{};

/// Factory wrapper for `azurerm_image`.
final class DataAzurermImage extends Data {
  static const String tfType = 'azurerm_image';

  DataAzurermImage(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? nameRegex,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? sortDescending,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'name_regex': ?nameRegex,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sort_descending': ?sortDescending,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermImageSensitive;

  /// A reference to the `azurerm_image` this data source reads, for
  /// arguments typed `RefTo<AzurermImage>`.
  RefTo<AzurermImage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_disk` attribute.
  TfRef<List<Map<String, Object?>>> get dataDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'data_disk');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `os_disk` attribute.
  TfRef<List<Map<String, Object?>>> get osDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'os_disk');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_resilient` attribute.
  TfRef<bool> get zoneResilient =>
      TfRef.attribute<bool>(this, 'zone_resilient');

  /// Reference to `name_regex` attribute.
  TfRef<String> get nameRegex => TfRef.attribute<String>(this, 'name_regex');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sort_descending` attribute.
  TfRef<bool> get sortDescending =>
      TfRef.attribute<bool>(this, 'sort_descending');
}
