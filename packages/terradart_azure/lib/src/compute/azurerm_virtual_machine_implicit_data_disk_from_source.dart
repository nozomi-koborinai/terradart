// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_implicit_data_disk_from_source`.
const Set<String> _azurermVirtualMachineImplicitDataDiskFromSourceSensitive =
    <String>{};

/// Factory wrapper for `azurerm_virtual_machine_implicit_data_disk_from_source`.
final class AzurermVirtualMachineImplicitDataDiskFromSource extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_implicit_data_disk_from_source';

  AzurermVirtualMachineImplicitDataDiskFromSource(
    super.localName, {
    TfArg<String>? caching,
    required TfArg<String> createOption,
    required TfArg<num> diskSizeGb,
    required TfArg<num> lun,
    required TfArg<String> name,
    required TfArg<String> sourceResourceId,
    required TfArg<String> virtualMachineId,
    TfArg<bool>? writeAcceleratorEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'caching': ?caching,
           'create_option': createOption,
           'disk_size_gb': diskSizeGb,
           'lun': lun,
           'name': name,
           'source_resource_id': sourceResourceId,
           'virtual_machine_id': virtualMachineId,
           'write_accelerator_enabled': ?writeAcceleratorEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineImplicitDataDiskFromSourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineImplicitDataDiskFromSource>`.
  RefTo<AzurermVirtualMachineImplicitDataDiskFromSource> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `caching` attribute.
  TfRef<String> get caching => TfRef.attribute<String>(this, 'caching');

  /// Reference to `create_option` attribute.
  TfRef<String> get createOption =>
      TfRef.attribute<String>(this, 'create_option');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `lun` attribute.
  TfRef<num> get lun => TfRef.attribute<num>(this, 'lun');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');

  /// Reference to `write_accelerator_enabled` attribute.
  TfRef<bool> get writeAcceleratorEnabled =>
      TfRef.attribute<bool>(this, 'write_accelerator_enabled');
}
