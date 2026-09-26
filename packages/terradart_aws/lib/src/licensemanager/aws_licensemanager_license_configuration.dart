// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_license_configuration`.
const Set<String> _awsLicensemanagerLicenseConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_licensemanager_license_configuration`.
final class AwsLicensemanagerLicenseConfiguration extends Resource {
  static const String tfType = 'aws_licensemanager_license_configuration';

  AwsLicensemanagerLicenseConfiguration({
    required super.localName,
    TfArg<String>? description,
    TfArg<num>? licenseCount,
    TfArg<bool>? licenseCountHardLimit,
    required TfArg<String> licenseCountingType,
    TfArg<List<String>>? licenseRules,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (licenseCount != null) 'license_count': licenseCount,
           if (licenseCountHardLimit != null)
             'license_count_hard_limit': licenseCountHardLimit,
           'license_counting_type': licenseCountingType,
           if (licenseRules != null) 'license_rules': licenseRules,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLicensemanagerLicenseConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');
}
