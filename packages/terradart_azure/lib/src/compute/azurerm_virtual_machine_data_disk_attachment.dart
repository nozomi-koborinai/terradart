// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_data_disk_attachment`.
const Set<String> _azurermVirtualMachineDataDiskAttachmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_virtual_machine_data_disk_attachment`.
final class AzurermVirtualMachineDataDiskAttachment extends Resource {
  static const String tfType = 'azurerm_virtual_machine_data_disk_attachment';

  AzurermVirtualMachineDataDiskAttachment(
    super.localName, {
    required TfArg<String> caching,
    TfArg<String>? createOption,
    required TfArg<num> lun,
    required TfArg<String> managedDiskId,
    required TfArg<String> virtualMachineId,
    TfArg<bool>? writeAcceleratorEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'caching': caching,
           'create_option': ?createOption,
           'lun': lun,
           'managed_disk_id': managedDiskId,
           'virtual_machine_id': virtualMachineId,
           'write_accelerator_enabled': ?writeAcceleratorEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineDataDiskAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineDataDiskAttachment>`.
  RefTo<AzurermVirtualMachineDataDiskAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `caching` attribute.
  TfRef<String> get caching => TfRef.attribute<String>(this, 'caching');

  /// Reference to `create_option` attribute.
  TfRef<String> get createOption =>
      TfRef.attribute<String>(this, 'create_option');

  /// Reference to `lun` attribute.
  TfRef<num> get lun => TfRef.attribute<num>(this, 'lun');

  /// Reference to `managed_disk_id` attribute.
  TfRef<String> get managedDiskId =>
      TfRef.attribute<String>(this, 'managed_disk_id');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');

  /// Reference to `write_accelerator_enabled` attribute.
  TfRef<bool> get writeAcceleratorEnabled =>
      TfRef.attribute<bool>(this, 'write_accelerator_enabled');
}
