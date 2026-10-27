// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_mover_agent`.
const Set<String> _azurermStorageMoverAgentSensitive = <String>{};

/// Factory wrapper for `azurerm_storage_mover_agent`.
final class AzurermStorageMoverAgent extends Resource {
  static const String tfType = 'azurerm_storage_mover_agent';

  AzurermStorageMoverAgent(
    super.localName, {
    required TfArg<String> arcVirtualMachineId,
    required TfArg<String> arcVirtualMachineUuid,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> storageMoverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arc_virtual_machine_id': arcVirtualMachineId,
           'arc_virtual_machine_uuid': arcVirtualMachineUuid,
           'description': ?description,
           'name': name,
           'storage_mover_id': storageMoverId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageMoverAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageMoverAgent>`.
  RefTo<AzurermStorageMoverAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arc_virtual_machine_id` attribute.
  TfRef<String> get arcVirtualMachineId =>
      TfRef.attribute<String>(this, 'arc_virtual_machine_id');

  /// Reference to `arc_virtual_machine_uuid` attribute.
  TfRef<String> get arcVirtualMachineUuid =>
      TfRef.attribute<String>(this, 'arc_virtual_machine_uuid');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `storage_mover_id` attribute.
  TfRef<String> get storageMoverId =>
      TfRef.attribute<String>(this, 'storage_mover_id');
}
