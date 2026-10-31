// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image`.
const Set<String> _azurermSharedImageSensitive = <String>{};

/// Shared Image enum for `architecture`.
extension type const SharedImageArchitecture._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageArchitecture.variable(String name) : this._(TfArg.variable(name));
  SharedImageArchitecture.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageArchitecture.arg(TfArg<String> arg) : this._(arg);

  static const arm64 = SharedImageArchitecture._(TfArgLiteral('Arm64'));
  static const x64 = SharedImageArchitecture._(TfArgLiteral('x64'));

  static const List<SharedImageArchitecture> values = [arm64, x64];
}

/// Shared Image Disk Types Not enum for `disk_types_not_allowed`.
extension type const SharedImageDiskTypesNotAllowed._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageDiskTypesNotAllowed.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageDiskTypesNotAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageDiskTypesNotAllowed.arg(TfArg<String> arg) : this._(arg);

  static const standardLrs = SharedImageDiskTypesNotAllowed._(
    TfArgLiteral('Standard_LRS'),
  );
  static const premiumLrs = SharedImageDiskTypesNotAllowed._(
    TfArgLiteral('Premium_LRS'),
  );

  static const List<SharedImageDiskTypesNotAllowed> values = [
    standardLrs,
    premiumLrs,
  ];
}

/// Shared Image Hyper V enum for `hyper_v_generation`.
extension type const SharedImageHyperVGeneration._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageHyperVGeneration.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageHyperVGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageHyperVGeneration.arg(TfArg<String> arg) : this._(arg);

  static const v1 = SharedImageHyperVGeneration._(TfArgLiteral('V1'));
  static const v2 = SharedImageHyperVGeneration._(TfArgLiteral('V2'));

  static const List<SharedImageHyperVGeneration> values = [v1, v2];
}

/// Shared Image Os enum for `os_type`.
extension type const SharedImageOsType._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageOsType.variable(String name) : this._(TfArg.variable(name));
  SharedImageOsType.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = SharedImageOsType._(TfArgLiteral('Linux'));
  static const windows = SharedImageOsType._(TfArgLiteral('Windows'));

  static const List<SharedImageOsType> values = [linux, windows];
}

/// At most one of `confidential_vm_enabled`, `confidential_vm_supported`, `trusted_launch_enabled`, `trusted_launch_supported` on `azurerm_shared_image`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.confidentialVmEnabled(...)`.
sealed class SharedImageSecurityType {
  const SharedImageSecurityType();

  /// Sets `confidential_vm_enabled`.
  const factory SharedImageSecurityType.confidentialVmEnabled(
    TfArg<bool> confidentialVmEnabled,
  ) = SharedImageSecurityTypeConfidentialVmEnabled;

  /// Sets `confidential_vm_supported`.
  const factory SharedImageSecurityType.confidentialVmSupported(
    TfArg<bool> confidentialVmSupported,
  ) = SharedImageSecurityTypeConfidentialVmSupported;

  /// Sets `trusted_launch_enabled`.
  const factory SharedImageSecurityType.trustedLaunchEnabled(
    TfArg<bool> trustedLaunchEnabled,
  ) = SharedImageSecurityTypeTrustedLaunchEnabled;

  /// Sets `trusted_launch_supported`.
  const factory SharedImageSecurityType.trustedLaunchSupported(
    TfArg<bool> trustedLaunchSupported,
  ) = SharedImageSecurityTypeTrustedLaunchSupported;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SharedImageSecurityType.confidentialVmEnabled] choice: sets `confidential_vm_enabled`.
final class SharedImageSecurityTypeConfidentialVmEnabled
    extends SharedImageSecurityType {
  const SharedImageSecurityTypeConfidentialVmEnabled(
    this.confidentialVmEnabled,
  );

  final TfArg<bool> confidentialVmEnabled;

  @internal
  @override
  String get blockKey => 'confidential_vm_enabled';

  @internal
  @override
  Map<String, Object?> encode() => {
    'confidential_vm_enabled': confidentialVmEnabled.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'confidential_vm_enabled': confidentialVmEnabled,
  };
}

/// The [SharedImageSecurityType.confidentialVmSupported] choice: sets `confidential_vm_supported`.
final class SharedImageSecurityTypeConfidentialVmSupported
    extends SharedImageSecurityType {
  const SharedImageSecurityTypeConfidentialVmSupported(
    this.confidentialVmSupported,
  );

  final TfArg<bool> confidentialVmSupported;

  @internal
  @override
  String get blockKey => 'confidential_vm_supported';

  @internal
  @override
  Map<String, Object?> encode() => {
    'confidential_vm_supported': confidentialVmSupported.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'confidential_vm_supported': confidentialVmSupported,
  };
}

/// The [SharedImageSecurityType.trustedLaunchEnabled] choice: sets `trusted_launch_enabled`.
final class SharedImageSecurityTypeTrustedLaunchEnabled
    extends SharedImageSecurityType {
  const SharedImageSecurityTypeTrustedLaunchEnabled(this.trustedLaunchEnabled);

  final TfArg<bool> trustedLaunchEnabled;

  @internal
  @override
  String get blockKey => 'trusted_launch_enabled';

  @internal
  @override
  Map<String, Object?> encode() => {
    'trusted_launch_enabled': trustedLaunchEnabled.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'trusted_launch_enabled': trustedLaunchEnabled,
  };
}

/// The [SharedImageSecurityType.trustedLaunchSupported] choice: sets `trusted_launch_supported`.
final class SharedImageSecurityTypeTrustedLaunchSupported
    extends SharedImageSecurityType {
  const SharedImageSecurityTypeTrustedLaunchSupported(
    this.trustedLaunchSupported,
  );

  final TfArg<bool> trustedLaunchSupported;

  @internal
  @override
  String get blockKey => 'trusted_launch_supported';

  @internal
  @override
  Map<String, Object?> encode() => {
    'trusted_launch_supported': trustedLaunchSupported.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'trusted_launch_supported': trustedLaunchSupported,
  };
}

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
    SharedImageArchitecture? architecture,
    SharedImageSecurityType? securityType,
    TfArg<String>? description,
    TfArg<bool>? diskControllerTypeNvmeEnabled,
    List<SharedImageDiskTypesNotAllowed>? diskTypesNotAllowed,
    TfArg<String>? endOfLifeDate,
    TfArg<String>? eula,
    required TfArg<String> galleryName,
    TfArg<bool>? hibernationEnabled,
    SharedImageHyperVGeneration? hyperVGeneration,
    required TfArg<String> location,
    TfArg<num>? maxRecommendedMemoryInGb,
    TfArg<num>? maxRecommendedVcpuCount,
    TfArg<num>? minRecommendedMemoryInGb,
    TfArg<num>? minRecommendedVcpuCount,
    required TfArg<String> name,
    required SharedImageOsType osType,
    TfArg<String>? privacyStatementUri,
    TfArg<String>? releaseNoteUri,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? specialized,
    TfArg<Map<String, String>>? tags,
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
           ...?securityType?.argMap,
           'description': ?description,
           'disk_controller_type_nvme_enabled': ?diskControllerTypeNvmeEnabled,
           if (diskTypesNotAllowed != null)
             'disk_types_not_allowed': TfArg.literal([
               for (final e in diskTypesNotAllowed) e.toTfJson(),
             ]),
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
