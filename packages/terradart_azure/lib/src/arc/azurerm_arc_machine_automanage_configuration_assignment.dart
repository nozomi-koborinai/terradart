// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_arc_machine_automanage_configuration_assignment`.
const Set<String> _azurermArcMachineAutomanageConfigurationAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_arc_machine_automanage_configuration_assignment`.
final class AzurermArcMachineAutomanageConfigurationAssignment
    extends Resource {
  static const String tfType =
      'azurerm_arc_machine_automanage_configuration_assignment';

  AzurermArcMachineAutomanageConfigurationAssignment(
    super.localName, {
    required TfArg<String> arcMachineId,
    required TfArg<String> configurationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_machine_id': arcMachineId,
           'configuration_id': configurationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermArcMachineAutomanageConfigurationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcMachineAutomanageConfigurationAssignment>`.
  RefTo<AzurermArcMachineAutomanageConfigurationAssignment> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arc_machine_id` attribute.
  TfRef<String> get arcMachineId =>
      TfRef.attribute<String>(this, 'arc_machine_id');

  /// Reference to `configuration_id` attribute.
  TfRef<String> get configurationId =>
      TfRef.attribute<String>(this, 'configuration_id');
}
