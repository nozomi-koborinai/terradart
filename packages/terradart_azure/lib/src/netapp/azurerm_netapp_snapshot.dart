// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_snapshot`.
const Set<String> _azurermNetappSnapshotSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_snapshot`.
final class AzurermNetappSnapshot extends Resource {
  static const String tfType = 'azurerm_netapp_snapshot';

  AzurermNetappSnapshot(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> poolName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> volumeName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'location': location,
           'name': name,
           'pool_name': poolName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'volume_name': volumeName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappSnapshot>`.
  RefTo<AzurermNetappSnapshot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `volume_name` attribute.
  TfRef<String> get volumeName => TfRef.attribute<String>(this, 'volume_name');
}
