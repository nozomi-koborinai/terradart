// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_maintenance_assignment_virtual_machine_scale_set`.
const Set<String> _azurermMaintenanceAssignmentVirtualMachineScaleSetSensitive =
    <String>{};

/// Factory wrapper for `azurerm_maintenance_assignment_virtual_machine_scale_set`.
final class AzurermMaintenanceAssignmentVirtualMachineScaleSet
    extends Resource {
  static const String tfType =
      'azurerm_maintenance_assignment_virtual_machine_scale_set';

  AzurermMaintenanceAssignmentVirtualMachineScaleSet(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> maintenanceConfigurationId,
    required TfArg<String> virtualMachineScaleSetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'maintenance_configuration_id': maintenanceConfigurationId,
           'virtual_machine_scale_set_id': virtualMachineScaleSetId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMaintenanceAssignmentVirtualMachineScaleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMaintenanceAssignmentVirtualMachineScaleSet>`.
  RefTo<AzurermMaintenanceAssignmentVirtualMachineScaleSet> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_configuration_id` attribute.
  TfRef<String> get maintenanceConfigurationId =>
      TfRef.attribute<String>(this, 'maintenance_configuration_id');

  /// Reference to `virtual_machine_scale_set_id` attribute.
  TfRef<String> get virtualMachineScaleSetId =>
      TfRef.attribute<String>(this, 'virtual_machine_scale_set_id');
}
