// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_license_manager_configuration`.
const Set<String> _googleLicenseManagerConfigurationSensitive = <String>{};

/// Terraform `deletion_policy` for License Manager configurations.
enum LicenseManagerConfigurationDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const LicenseManagerConfigurationDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_license_manager_configuration`.
///
/// Configuration resource for License Manager
///
/// License Manager configuration for third-party software licenses (e.g. Office SPLA)
/// on Compute Engine workloads in a region.
///
/// Enable `licensemanager.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleLicenseManagerConfiguration(
///   localName: 'office_spla',
///   location: TfArg.literal('us-central1'),
///   configurationId: TfArg.literal('office-2021'),
///   product: TfArg.literal('Office2021ProfessionalPlus'),
///   licenseCount: TfArg.literal(10),
/// );
/// ```
final class GoogleLicenseManagerConfiguration extends Resource {
  static const String tfType = 'google_license_manager_configuration';

  GoogleLicenseManagerConfiguration({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> configurationId,
    required TfArg<String> product,
    required TfArg<num> licenseCount,
    TfArg<bool>? active,
    TfArg<Map<String, String>>? labels,
    TfArg<LicenseManagerConfigurationDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'configuration_id': configurationId,
           'product': product,
           'license_count': licenseCount,
           'active': ?active,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleLicenseManagerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLicenseManagerConfiguration>`.
  RefTo<GoogleLicenseManagerConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `configuration_id` attribute.
  TfRef<String> get configurationId =>
      TfRef.attribute<String>(this, 'configuration_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `license_count` attribute.
  TfRef<num> get licenseCount => TfRef.attribute<num>(this, 'license_count');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `product` attribute.
  TfRef<String> get product => TfRef.attribute<String>(this, 'product');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
