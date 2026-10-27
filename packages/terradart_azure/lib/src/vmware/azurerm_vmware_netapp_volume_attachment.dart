// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_vmware_netapp_volume_attachment`.
const Set<String> _azurermVmwareNetappVolumeAttachmentSensitive = <String>{};

/// Factory wrapper for `azurerm_vmware_netapp_volume_attachment`.
final class AzurermVmwareNetappVolumeAttachment extends Resource {
  static const String tfType = 'azurerm_vmware_netapp_volume_attachment';

  AzurermVmwareNetappVolumeAttachment(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> netappVolumeId,
    required TfArg<String> vmwareClusterId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'netapp_volume_id': netappVolumeId,
           'vmware_cluster_id': vmwareClusterId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVmwareNetappVolumeAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVmwareNetappVolumeAttachment>`.
  RefTo<AzurermVmwareNetappVolumeAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `netapp_volume_id` attribute.
  TfRef<String> get netappVolumeId =>
      TfRef.attribute<String>(this, 'netapp_volume_id');

  /// Reference to `vmware_cluster_id` attribute.
  TfRef<String> get vmwareClusterId =>
      TfRef.attribute<String>(this, 'vmware_cluster_id');
}
