// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image`.
const Set<String> _azurermSharedImageSensitive = <String>{};

/// Typed helper for the `identifier` block of
/// `azurerm_shared_image` (derived from provider schema).
@immutable
final class SharedImageIdentifier {
  const SharedImageIdentifier({
    required this.offer,
    required this.publisher,
    required this.sku,
  });

  final TfArg<String> offer;

  final TfArg<String> publisher;

  final TfArg<String> sku;

  @internal
  Map<String, Object?> encode() => {
    'offer': offer.toTfJson(),
    'publisher': publisher.toTfJson(),
    'sku': sku.toTfJson(),
  };
}

/// Typed helper for the `purchase_plan` block of
/// `azurerm_shared_image` (derived from provider schema).
@immutable
final class SharedImagePurchasePlan {
  const SharedImagePurchasePlan({
    required this.name,
    this.product,
    this.publisher,
  });

  final TfArg<String> name;

  final TfArg<String>? product;

  final TfArg<String>? publisher;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'product': ?product?.toTfJson(),
    'publisher': ?publisher?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_shared_image`.
final class AzurermSharedImage extends Resource {
  static const String tfType = 'azurerm_shared_image';

  AzurermSharedImage(
    super.localName, {
    TfArg<bool>? acceleratedNetworkSupportEnabled,
    TfArg<String>? architecture,
    TfArg<bool>? confidentialVmEnabled,
    TfArg<bool>? confidentialVmSupported,
    TfArg<String>? description,
    TfArg<bool>? diskControllerTypeNvmeEnabled,
    TfArg<List<String>>? diskTypesNotAllowed,
    TfArg<String>? endOfLifeDate,
    TfArg<String>? eula,
    required TfArg<String> galleryName,
    TfArg<bool>? hibernationEnabled,
    TfArg<String>? hyperVGeneration,
    required TfArg<String> location,
    TfArg<num>? maxRecommendedMemoryInGb,
    TfArg<num>? maxRecommendedVcpuCount,
    TfArg<num>? minRecommendedMemoryInGb,
    TfArg<num>? minRecommendedVcpuCount,
    required TfArg<String> name,
    required TfArg<String> osType,
    TfArg<String>? privacyStatementUri,
    TfArg<String>? releaseNoteUri,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? specialized,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? trustedLaunchEnabled,
    TfArg<bool>? trustedLaunchSupported,
    required SharedImageIdentifier identifier,
    SharedImagePurchasePlan? purchasePlan,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accelerated_network_support_enabled':
               ?acceleratedNetworkSupportEnabled,
           'architecture': ?architecture,
           'confidential_vm_enabled': ?confidentialVmEnabled,
           'confidential_vm_supported': ?confidentialVmSupported,
           'description': ?description,
           'disk_controller_type_nvme_enabled': ?diskControllerTypeNvmeEnabled,
           'disk_types_not_allowed': ?diskTypesNotAllowed,
           'end_of_life_date': ?endOfLifeDate,
           'eula': ?eula,
           'gallery_name': galleryName,
           'hibernation_enabled': ?hibernationEnabled,
           'hyper_v_generation': ?hyperVGeneration,
           'location': location,
           'max_recommended_memory_in_gb': ?maxRecommendedMemoryInGb,
           'max_recommended_vcpu_count': ?maxRecommendedVcpuCount,
           'min_recommended_memory_in_gb': ?minRecommendedMemoryInGb,
           'min_recommended_vcpu_count': ?minRecommendedVcpuCount,
           'name': name,
           'os_type': osType,
           'privacy_statement_uri': ?privacyStatementUri,
           'release_note_uri': ?releaseNoteUri,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'specialized': ?specialized,
           'tags': ?tags,
           'trusted_launch_enabled': ?trustedLaunchEnabled,
           'trusted_launch_supported': ?trustedLaunchSupported,
           'identifier': TfArg.literal(identifier.encode()),
           if (purchasePlan != null)
             'purchase_plan': TfArg.literal(purchasePlan.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSharedImage>`.
  RefTo<AzurermSharedImage> get ref => RefTo.of(this);

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

  /// Reference to `disk_controller_type_nvme_enabled` attribute.
  TfRef<bool> get diskControllerTypeNvmeEnabled =>
      TfRef.attribute<bool>(this, 'disk_controller_type_nvme_enabled');

  /// Reference to `disk_types_not_allowed` attribute.
  TfRef<List<String>> get diskTypesNotAllowed =>
      TfRef.attribute<List<String>>(this, 'disk_types_not_allowed');

  /// Reference to `end_of_life_date` attribute.
  TfRef<String> get endOfLifeDate =>
      TfRef.attribute<String>(this, 'end_of_life_date');

  /// Reference to `eula` attribute.
  TfRef<String> get eula => TfRef.attribute<String>(this, 'eula');

  /// Reference to `gallery_name` attribute.
  TfRef<String> get galleryName =>
      TfRef.attribute<String>(this, 'gallery_name');

  /// Reference to `hibernation_enabled` attribute.
  TfRef<bool> get hibernationEnabled =>
      TfRef.attribute<bool>(this, 'hibernation_enabled');

  /// Reference to `hyper_v_generation` attribute.
  TfRef<String> get hyperVGeneration =>
      TfRef.attribute<String>(this, 'hyper_v_generation');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_recommended_memory_in_gb` attribute.
  TfRef<num> get maxRecommendedMemoryInGb =>
      TfRef.attribute<num>(this, 'max_recommended_memory_in_gb');

  /// Reference to `max_recommended_vcpu_count` attribute.
  TfRef<num> get maxRecommendedVcpuCount =>
      TfRef.attribute<num>(this, 'max_recommended_vcpu_count');

  /// Reference to `min_recommended_memory_in_gb` attribute.
  TfRef<num> get minRecommendedMemoryInGb =>
      TfRef.attribute<num>(this, 'min_recommended_memory_in_gb');

  /// Reference to `min_recommended_vcpu_count` attribute.
  TfRef<num> get minRecommendedVcpuCount =>
      TfRef.attribute<num>(this, 'min_recommended_vcpu_count');

  /// Reference to `os_type` attribute.
  TfRef<String> get osType => TfRef.attribute<String>(this, 'os_type');

  /// Reference to `privacy_statement_uri` attribute.
  TfRef<String> get privacyStatementUri =>
      TfRef.attribute<String>(this, 'privacy_statement_uri');

  /// Reference to `release_note_uri` attribute.
  TfRef<String> get releaseNoteUri =>
      TfRef.attribute<String>(this, 'release_note_uri');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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
}
