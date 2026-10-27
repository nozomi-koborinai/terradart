// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_virtual_machine_gallery_application_assignment`.
const Set<String> _azurermVirtualMachineGalleryApplicationAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_virtual_machine_gallery_application_assignment`.
final class AzurermVirtualMachineGalleryApplicationAssignment extends Resource {
  static const String tfType =
      'azurerm_virtual_machine_gallery_application_assignment';

  AzurermVirtualMachineGalleryApplicationAssignment(
    super.localName, {
    TfArg<String>? configurationBlobUri,
    required TfArg<String> galleryApplicationVersionId,
    TfArg<num>? order,
    TfArg<String>? tag,
    required TfArg<String> virtualMachineId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_blob_uri': ?configurationBlobUri,
           'gallery_application_version_id': galleryApplicationVersionId,
           'order': ?order,
           'tag': ?tag,
           'virtual_machine_id': virtualMachineId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermVirtualMachineGalleryApplicationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineGalleryApplicationAssignment>`.
  RefTo<AzurermVirtualMachineGalleryApplicationAssignment> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_blob_uri` attribute.
  TfRef<String> get configurationBlobUri =>
      TfRef.attribute<String>(this, 'configuration_blob_uri');

  /// Reference to `gallery_application_version_id` attribute.
  TfRef<String> get galleryApplicationVersionId =>
      TfRef.attribute<String>(this, 'gallery_application_version_id');

  /// Reference to `order` attribute.
  TfRef<num> get order => TfRef.attribute<num>(this, 'order');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
