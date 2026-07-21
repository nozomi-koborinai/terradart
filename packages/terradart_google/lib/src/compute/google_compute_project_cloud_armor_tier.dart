// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_cloud_armor_tier`.
const Set<String> _googleComputeProjectCloudArmorTierSensitive = <String>{};

/// Cloud Armor managed protection tier for the project.
/// Prefer [caStandard] in smoke stacks — Enterprise Annual bills ~$3000/mo.
enum ComputeProjectCloudArmorTier implements TerraformEnum {
  caStandard('CA_STANDARD'),
  caEnterprisePaygo('CA_ENTERPRISE_PAYGO'),
  caEnterpriseAnnual('CA_ENTERPRISE_ANNUAL');

  const ComputeProjectCloudArmorTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_project_cloud_armor_tier`.
///
/// Sets the Cloud Armor tier of the project.
///
/// Project-level **Cloud Armor managed protection tier** — a singleton that
/// sets `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, or `CA_ENTERPRISE_ANNUAL`.
///
/// Prefer [ComputeProjectCloudArmorTier.caStandard] in smoke stacks.
/// Do **not** set Enterprise tiers in apply-smoke: Cloud Armor Enterprise
/// Annual bills ~$3000/mo (SKU EFB7-4299-A2EC). `CA_STANDARD` is the free
/// / pay-as-you-go security-policy tier (no Enterprise subscription SKU).
///
/// Terraform create/update call `setCloudArmorTier`; destroy is state-only
/// (`only_remove_from_state` upstream) and leaves the GCP tier in place.
///
/// Enable `compute.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleComputeProjectCloudArmorTier(
///   localName: 'armor_tier',
///   cloudArmorTier: TfArg.literal(
///     ComputeProjectCloudArmorTier.caStandard,
///   ),
/// );
/// ```
final class GoogleComputeProjectCloudArmorTier extends Resource {
  static const String tfType = 'google_compute_project_cloud_armor_tier';

  GoogleComputeProjectCloudArmorTier({
    required super.localName,
    required TfArg<ComputeProjectCloudArmorTier> cloudArmorTier,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_armor_tier': cloudArmorTier,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeProjectCloudArmorTierSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
