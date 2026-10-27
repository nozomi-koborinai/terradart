// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_maintenance_assignment_dedicated_host`.
const Set<String> _azurermMaintenanceAssignmentDedicatedHostSensitive =
    <String>{};

/// Factory wrapper for `azurerm_maintenance_assignment_dedicated_host`.
final class AzurermMaintenanceAssignmentDedicatedHost extends Resource {
  static const String tfType = 'azurerm_maintenance_assignment_dedicated_host';

  AzurermMaintenanceAssignmentDedicatedHost(
    super.localName, {
    required TfArg<String> dedicatedHostId,
    required TfArg<String> location,
    required TfArg<String> maintenanceConfigurationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dedicated_host_id': dedicatedHostId,
           'location': location,
           'maintenance_configuration_id': maintenanceConfigurationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMaintenanceAssignmentDedicatedHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMaintenanceAssignmentDedicatedHost>`.
  RefTo<AzurermMaintenanceAssignmentDedicatedHost> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dedicated_host_id` attribute.
  TfRef<String> get dedicatedHostId =>
      TfRef.attribute<String>(this, 'dedicated_host_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_configuration_id` attribute.
  TfRef<String> get maintenanceConfigurationId =>
      TfRef.attribute<String>(this, 'maintenance_configuration_id');
}
