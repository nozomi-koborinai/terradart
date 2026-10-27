// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_volume_group_sap_hana.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_volume_group_sap_hana`.
const Set<String> _azurermNetappVolumeGroupSapHanaSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_volume_group_sap_hana`.
final class DataAzurermNetappVolumeGroupSapHana extends Data {
  static const String tfType = 'azurerm_netapp_volume_group_sap_hana';

  DataAzurermNetappVolumeGroupSapHana(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeGroupSapHanaSensitive;

  /// A reference to the `azurerm_netapp_volume_group_sap_hana` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappVolumeGroupSapHana>`.
  RefTo<AzurermNetappVolumeGroupSapHana> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_identifier` attribute.
  TfRef<String> get applicationIdentifier =>
      TfRef.attribute<String>(this, 'application_identifier');

  /// Reference to `group_description` attribute.
  TfRef<String> get groupDescription =>
      TfRef.attribute<String>(this, 'group_description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `volume` attribute.
  TfRef<List<Map<String, Object?>>> get volume =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'volume');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
