// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_grant_accepter`.
const Set<String> _awsLicensemanagerGrantAccepterSensitive = <String>{};

/// Factory wrapper for `aws_licensemanager_grant_accepter`.
final class AwsLicensemanagerGrantAccepter extends Resource {
  static const String tfType = 'aws_licensemanager_grant_accepter';

  AwsLicensemanagerGrantAccepter({
    required super.localName,
    required TfArg<String> grantArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'grant_arn': grantArn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerGrantAccepterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_operations` attribute.
  TfRef<List<String>> get allowedOperations =>
      TfRef.attribute<List<String>>(this, 'allowed_operations');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

  /// Reference to `license_arn` attribute.
  TfRef<String> get licenseArn => TfRef.attribute<String>(this, 'license_arn');

  /// Reference to `parent_arn` attribute.
  TfRef<String> get parentArn => TfRef.attribute<String>(this, 'parent_arn');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
