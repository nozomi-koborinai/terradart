// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_shared_image.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image`.
const Set<String> _azurermSharedImageSensitive = <String>{};

/// Factory wrapper for `azurerm_shared_image`.
final class DataAzurermSharedImage extends Data {
  static const String tfType = 'azurerm_shared_image';

  DataAzurermSharedImage(
    super.localName, {
    required TfArg<String> galleryName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'gallery_name': galleryName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageSensitive;

  /// A reference to the `azurerm_shared_image` this data source reads, for
  /// arguments typed `RefTo<AzurermSharedImage>`.
  RefTo<AzurermSharedImage> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accelerated_network_support_enabled` attribute.
  TfRef<bool> get acceleratedNetworkSupportEnabled =>
      TfRef.attribute<bool>(this, 'accelerated_network_support_enabled');

  /// Reference to `architecture` attribute.
  TfRef<String> get architecture =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `confidential_vm_enabled` attribute.
  TfRef<bool> get confidentialVmEnabled =>
      TfRef.attribute<bool>(this, 'confidential_vm_enabled');

  /// Reference to `confidential_vm_supported` attribute.
  TfRef<bool> get confidentialVmSupported =>
      TfRef.attribute<bool>(this, 'confidential_vm_supported');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `eula` attribute.
  TfRef<String> get eula => TfRef.attribute<String>(this, 'eula');

  /// Reference to `hibernation_enabled` attribute.
  TfRef<bool> get hibernationEnabled =>
      TfRef.attribute<bool>(this, 'hibernation_enabled');

  /// Reference to `hyper_v_generation` attribute.
  TfRef<String> get hyperVGeneration =>
      TfRef.attribute<String>(this, 'hyper_v_generation');

  /// Reference to `identifier` attribute.
  TfRef<List<Map<String, Object?>>> get identifier =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identifier');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `privacy_statement_uri` attribute.
  TfRef<String> get privacyStatementUri =>
      TfRef.attribute<String>(this, 'privacy_statement_uri');

  /// Reference to `purchase_plan` attribute.
  TfRef<List<Map<String, Object?>>> get purchasePlan =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'purchase_plan');

  /// Reference to `release_note_uri` attribute.
  TfRef<String> get releaseNoteUri =>
      TfRef.attribute<String>(this, 'release_note_uri');

  /// Reference to `specialized` attribute.
  TfRef<bool> get specialized => TfRef.attribute<bool>(this, 'specialized');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `trusted_launch_enabled` attribute.
  TfRef<bool> get trustedLaunchEnabled =>
      TfRef.attribute<bool>(this, 'trusted_launch_enabled');

  /// Reference to `trusted_launch_supported` attribute.
  TfRef<bool> get trustedLaunchSupported =>
      TfRef.attribute<bool>(this, 'trusted_launch_supported');

  /// Reference to `gallery_name` attribute.
  TfRef<String> get galleryName =>
      TfRef.attribute<String>(this, 'gallery_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
