// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_restore_point`.
const Set<String> _azurermVirtualMachineRestorePointSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_machine_restore_point`.
final class AzurermVirtualMachineRestorePoint extends Resource {
  static const String tfType = 'azurerm_virtual_machine_restore_point';

  AzurermVirtualMachineRestorePoint(
    super.localName, {
    TfArg<bool>? crashConsistencyModeEnabled,
    TfArg<List<String>>? excludedDisks,
    required TfArg<String> name,
    required TfArg<String> virtualMachineRestorePointCollectionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'crash_consistency_mode_enabled': ?crashConsistencyModeEnabled,
           'excluded_disks': ?excludedDisks,
           'name': name,
           'virtual_machine_restore_point_collection_id':
               virtualMachineRestorePointCollectionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineRestorePointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineRestorePoint>`.
  RefTo<AzurermVirtualMachineRestorePoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `crash_consistency_mode_enabled` attribute.
  TfRef<bool> get crashConsistencyModeEnabled =>
      TfRef.attribute<bool>(this, 'crash_consistency_mode_enabled');

  /// Reference to `excluded_disks` attribute.
  TfRef<List<String>> get excludedDisks =>
      TfRef.attribute<List<String>>(this, 'excluded_disks');

  /// Reference to `virtual_machine_restore_point_collection_id` attribute.
  TfRef<String> get virtualMachineRestorePointCollectionId =>
      TfRef.attribute<String>(
        this,
        'virtual_machine_restore_point_collection_id',
      );
}
