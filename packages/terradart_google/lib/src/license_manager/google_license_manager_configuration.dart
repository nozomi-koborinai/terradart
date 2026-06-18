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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'configuration_id': configurationId,
           'product': product,
           'license_count': licenseCount,
           if (active != null) 'active': active,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleLicenseManagerConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
