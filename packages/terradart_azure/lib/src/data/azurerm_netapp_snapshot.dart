// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_snapshot.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_snapshot`.
const Set<String> _azurermNetappSnapshotSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_snapshot`.
final class DataAzurermNetappSnapshot extends Data {
  static const String tfType = 'azurerm_netapp_snapshot';

  DataAzurermNetappSnapshot(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required TfArg<String> poolName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> volumeName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'pool_name': poolName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'volume_name': volumeName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappSnapshotSensitive;

  /// A reference to the `azurerm_netapp_snapshot` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappSnapshot>`.
  RefTo<AzurermNetappSnapshot> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `volume_name` attribute.
  TfRef<String> get volumeName => TfRef.attribute<String>(this, 'volume_name');
}
