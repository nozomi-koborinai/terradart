// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_data_disk_attachment`.
const Set<String> _azurermVirtualMachineDataDiskAttachmentSensitive =
    <String>{};

/// Virtual Machine Data Disk Attachment enum for `caching`.
extension type const VirtualMachineDataDiskAttachmentCaching._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineDataDiskAttachmentCaching.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineDataDiskAttachmentCaching.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineDataDiskAttachmentCaching.arg(TfArg<String> arg)
    : this._(arg);

  static const none = VirtualMachineDataDiskAttachmentCaching._(
    TfArgLiteral('None'),
  );
  static const readonly = VirtualMachineDataDiskAttachmentCaching._(
    TfArgLiteral('ReadOnly'),
  );
  static const readwrite = VirtualMachineDataDiskAttachmentCaching._(
    TfArgLiteral('ReadWrite'),
  );

  static const List<VirtualMachineDataDiskAttachmentCaching> values = [
    none,
    readonly,
    readwrite,
  ];
}

/// Virtual Machine Data Disk Attachment Create enum for `create_option`.
extension type const VirtualMachineDataDiskAttachmentCreateOption._(
  TfArg<String> _
) implements TfArg<String> {
  VirtualMachineDataDiskAttachmentCreateOption.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineDataDiskAttachmentCreateOption.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineDataDiskAttachmentCreateOption.arg(TfArg<String> arg)
    : this._(arg);

  static const attach = VirtualMachineDataDiskAttachmentCreateOption._(
    TfArgLiteral('Attach'),
  );
  static const empty = VirtualMachineDataDiskAttachmentCreateOption._(
    TfArgLiteral('Empty'),
  );

  static const List<VirtualMachineDataDiskAttachmentCreateOption> values = [
    attach,
    empty,
  ];
}

/// Factory wrapper for `azurerm_virtual_machine_data_disk_attachment`.
final class AzurermVirtualMachineDataDiskAttachment extends Resource {
  static const String tfType = 'azurerm_virtual_machine_data_disk_attachment';

  AzurermVirtualMachineDataDiskAttachment(
    super.localName, {
    required VirtualMachineDataDiskAttachmentCaching caching,
    VirtualMachineDataDiskAttachmentCreateOption? createOption,
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
