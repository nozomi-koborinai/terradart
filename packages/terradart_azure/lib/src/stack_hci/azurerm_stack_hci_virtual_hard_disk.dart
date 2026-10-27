// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_virtual_hard_disk`.
const Set<String> _azurermStackHciVirtualHardDiskSensitive = <String>{};

/// Stack Hci Virtual Hard Disk File enum for `disk_file_format`.
extension type const StackHciVirtualHardDiskFileFormat._(TfArg<String> _)
    implements TfArg<String> {
  StackHciVirtualHardDiskFileFormat.variable(String name)
    : this._(TfArg.variable(name));
  StackHciVirtualHardDiskFileFormat.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciVirtualHardDiskFileFormat.arg(TfArg<String> arg) : this._(arg);

  static const vhd = StackHciVirtualHardDiskFileFormat._(TfArgLiteral('vhd'));
  static const vhdx = StackHciVirtualHardDiskFileFormat._(TfArgLiteral('vhdx'));

  static const List<StackHciVirtualHardDiskFileFormat> values = [vhd, vhdx];
}

/// Stack Hci Virtual Hard Disk Hyperv enum for `hyperv_generation`.
extension type const StackHciVirtualHardDiskHypervGeneration._(TfArg<String> _)
    implements TfArg<String> {
  StackHciVirtualHardDiskHypervGeneration.variable(String name)
    : this._(TfArg.variable(name));
  StackHciVirtualHardDiskHypervGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const StackHciVirtualHardDiskHypervGeneration.arg(TfArg<String> arg)
    : this._(arg);

  static const v1 = StackHciVirtualHardDiskHypervGeneration._(
    TfArgLiteral('V1'),
  );
  static const v2 = StackHciVirtualHardDiskHypervGeneration._(
    TfArgLiteral('V2'),
  );

  static const List<StackHciVirtualHardDiskHypervGeneration> values = [v1, v2];
}

/// Factory wrapper for `azurerm_stack_hci_virtual_hard_disk`.
final class AzurermStackHciVirtualHardDisk extends Resource {
  static const String tfType = 'azurerm_stack_hci_virtual_hard_disk';

  AzurermStackHciVirtualHardDisk(
    super.localName, {
    TfArg<num>? blockSizeInBytes,
    required TfArg<String> customLocationId,
    StackHciVirtualHardDiskFileFormat? diskFileFormat,
    required TfArg<num> diskSizeInGb,
    TfArg<bool>? dynamicEnabled,
    StackHciVirtualHardDiskHypervGeneration? hypervGeneration,
    required TfArg<String> location,
    TfArg<num>? logicalSectorInBytes,
    required TfArg<String> name,
    TfArg<num>? physicalSectorInBytes,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? storagePathId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'block_size_in_bytes': ?blockSizeInBytes,
           'custom_location_id': customLocationId,
           'disk_file_format': ?diskFileFormat,
           'disk_size_in_gb': diskSizeInGb,
           'dynamic_enabled': ?dynamicEnabled,
           'hyperv_generation': ?hypervGeneration,
           'location': location,
           'logical_sector_in_bytes': ?logicalSectorInBytes,
           'name': name,
           'physical_sector_in_bytes': ?physicalSectorInBytes,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_path_id': ?storagePathId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciVirtualHardDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciVirtualHardDisk>`.
  RefTo<AzurermStackHciVirtualHardDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_size_in_bytes` attribute.
  TfRef<num> get blockSizeInBytes =>
      TfRef.attribute<num>(this, 'block_size_in_bytes');

  /// Reference to `custom_location_id` attribute.
  TfRef<String> get customLocationId =>
      TfRef.attribute<String>(this, 'custom_location_id');

  /// Reference to `disk_file_format` attribute.
  TfRef<String> get diskFileFormat =>
      TfRef.attribute<String>(this, 'disk_file_format');

  /// Reference to `disk_size_in_gb` attribute.
  TfRef<num> get diskSizeInGb => TfRef.attribute<num>(this, 'disk_size_in_gb');

  /// Reference to `dynamic_enabled` attribute.
  TfRef<bool> get dynamicEnabled =>
      TfRef.attribute<bool>(this, 'dynamic_enabled');

  /// Reference to `hyperv_generation` attribute.
  TfRef<String> get hypervGeneration =>
      TfRef.attribute<String>(this, 'hyperv_generation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logical_sector_in_bytes` attribute.
  TfRef<num> get logicalSectorInBytes =>
      TfRef.attribute<num>(this, 'logical_sector_in_bytes');

  /// Reference to `physical_sector_in_bytes` attribute.
  TfRef<num> get physicalSectorInBytes =>
      TfRef.attribute<num>(this, 'physical_sector_in_bytes');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_path_id` attribute.
  TfRef<String> get storagePathId =>
      TfRef.attribute<String>(this, 'storage_path_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
