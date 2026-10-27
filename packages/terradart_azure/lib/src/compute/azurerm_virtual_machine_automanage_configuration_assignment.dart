// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_automanage_configuration_assignment`.
const Set<String>
_azurermVirtualMachineAutomanageConfigurationAssignmentSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_machine_automanage_configuration_assignment`.
final class AzurermVirtualMachineAutomanageConfigurationAssignment
    extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_automanage_configuration_assignment';

  AzurermVirtualMachineAutomanageConfigurationAssignment(
    super.localName, {
    required TfArg<String> configurationId,
    required TfArg<String> virtualMachineId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_id': configurationId,
           'virtual_machine_id': virtualMachineId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineAutomanageConfigurationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineAutomanageConfigurationAssignment>`.
  RefTo<AzurermVirtualMachineAutomanageConfigurationAssignment> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_id` attribute.
  TfRef<String> get configurationId =>
      TfRef.attribute<String>(this, 'configuration_id');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
