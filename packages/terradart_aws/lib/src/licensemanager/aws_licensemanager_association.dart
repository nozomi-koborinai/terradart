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
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
