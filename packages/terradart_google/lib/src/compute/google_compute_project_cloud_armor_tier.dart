// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_cloud_armor_tier`.
const Set<String> _googleComputeProjectCloudArmorTierSensitive = <String>{};

/// Cloud Armor managed protection tier for the project.
/// Prefer [caStandard] in smoke stacks — Enterprise Annual bills ~$3000/mo.
extension type const ComputeProjectCloudArmorTier._(TfArg<String> _)
    implements TfArg<String> {
  ComputeProjectCloudArmorTier.variable(String name)
    : this._(TfArg.variable(name));
  ComputeProjectCloudArmorTier.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeProjectCloudArmorTier.arg(TfArg<String> arg) : this._(arg);

  static const caStandard = ComputeProjectCloudArmorTier._(
    TfArgLiteral('CA_STANDARD'),
  );
  static const caEnterprisePaygo = ComputeProjectCloudArmorTier._(
    TfArgLiteral('CA_ENTERPRISE_PAYGO'),
  );
  static const caEnterpriseAnnual = ComputeProjectCloudArmorTier._(
    TfArgLiteral('CA_ENTERPRISE_ANNUAL'),
  );

  static const List<ComputeProjectCloudArmorTier> values = [
    caStandard,
    caEnterprisePaygo,
    caEnterpriseAnnual,
  ];
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
///   'armor_tier',
///   cloudArmorTier: ComputeProjectCloudArmorTier.caStandard,
/// );
/// ```
final class GoogleComputeProjectCloudArmorTier extends Resource {
  static const String tfType = 'google_compute_project_cloud_armor_tier';

  GoogleComputeProjectCloudArmorTier(
    super.localName, {
    required ComputeProjectCloudArmorTier cloudArmorTier,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_armor_tier': cloudArmorTier,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeProjectCloudArmorTierSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeProjectCloudArmorTier>`.
  RefTo<GoogleComputeProjectCloudArmorTier> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_armor_tier` attribute.
  TfRef<String> get cloudArmorTier =>
      TfRef.attribute<String>(this, 'cloud_armor_tier');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
