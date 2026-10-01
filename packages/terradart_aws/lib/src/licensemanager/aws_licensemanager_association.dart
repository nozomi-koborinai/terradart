// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_association`.
const Set<String> _awsLicensemanagerAssociationSensitive = <String>{};

/// Factory wrapper for `aws_licensemanager_association`.
final class AwsLicensemanagerAssociation extends Resource {
  static const String tfType = 'aws_licensemanager_association';

  AwsLicensemanagerAssociation({
    required super.localName,
    required TfArg<String> licenseConfigurationArn,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'license_configuration_arn': licenseConfigurationArn,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLicensemanagerAssociation>`.
  RefTo<AwsLicensemanagerAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `license_configuration_arn` attribute.
  TfRef<String> get licenseConfigurationArn =>
      TfRef.attribute<String>(this, 'license_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
