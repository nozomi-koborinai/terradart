// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_implicit_data_disk_from_source`.
const Set<String> _azurermVirtualMachineImplicitDataDiskFromSourceSensitive =
    <String>{};

/// Virtual Machine Implicit Data Disk From Source enum for `caching`.
extension type const VirtualMachineImplicitDataDiskFromSourceCaching._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualMachineImplicitDataDiskFromSourceCaching.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineImplicitDataDiskFromSourceCaching.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineImplicitDataDiskFromSourceCaching.arg(TfArg<String> arg)
    : this._(arg);

  static const readonly = VirtualMachineImplicitDataDiskFromSourceCaching._(
    TfArgLiteral('ReadOnly'),
  );
  static const readwrite = VirtualMachineImplicitDataDiskFromSourceCaching._(
    TfArgLiteral('ReadWrite'),
  );

  static const List<VirtualMachineImplicitDataDiskFromSourceCaching> values = [
    readonly,
    readwrite,
  ];
}

/// Virtual Machine Implicit Data Disk From Source Create enum for `create_option`.
extension type const VirtualMachineImplicitDataDiskFromSourceCreateOption._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualMachineImplicitDataDiskFromSourceCreateOption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineImplicitDataDiskFromSourceCreateOption.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VirtualMachineImplicitDataDiskFromSourceCreateOption.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const copy = VirtualMachineImplicitDataDiskFromSourceCreateOption._(
    TfArgLiteral('Copy'),
  );

  static const List<VirtualMachineImplicitDataDiskFromSourceCreateOption>
  values = [copy];
}

/// Factory wrapper for `azurerm_virtual_machine_implicit_data_disk_from_source`.
final class AzurermVirtualMachineImplicitDataDiskFromSource extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_implicit_data_disk_from_source';

  AzurermVirtualMachineImplicitDataDiskFromSource(
    super.localName, {
    VirtualMachineImplicitDataDiskFromSourceCaching? caching,
    required VirtualMachineImplicitDataDiskFromSourceCreateOption createOption,
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
