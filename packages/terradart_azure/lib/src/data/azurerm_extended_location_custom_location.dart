// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../extended/azurerm_extended_location_custom_location.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_extended_location_custom_location`.
const Set<String> _azurermExtendedLocationCustomLocationSensitive = <String>{};

/// Factory wrapper for `azurerm_extended_location_custom_location`.
final class DataAzurermExtendedLocationCustomLocation extends Data {
  static const String tfType = 'azurerm_extended_location_custom_location';

  DataAzurermExtendedLocationCustomLocation(
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
  Set<String> get sensitiveFields =>
      _azurermExtendedLocationCustomLocationSensitive;

  /// A reference to the `azurerm_extended_location_custom_location` this data source reads, for
  /// arguments typed `RefTo<AzurermExtendedLocationCustomLocation>`.
  RefTo<AzurermExtendedLocationCustomLocation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication` attribute.
  TfRef<List<Map<String, Object?>>> get authentication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authentication');

  /// Reference to `cluster_extension_ids` attribute.
  TfRef<List<String>> get clusterExtensionIds =>
      TfRef.attribute<List<String>>(this, 'cluster_extension_ids');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `host_resource_id` attribute.
  TfRef<String> get hostResourceId =>
      TfRef.attribute<String>(this, 'host_resource_id');

  /// Reference to `host_type` attribute.
  TfRef<String> get hostType => TfRef.attribute<String>(this, 'host_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
