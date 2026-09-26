// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_grant`.
const Set<String> _awsLicensemanagerGrantSensitive = <String>{};

/// Factory wrapper for `aws_licensemanager_grant`.
final class AwsLicensemanagerGrant extends Resource {
  static const String tfType = 'aws_licensemanager_grant';

  AwsLicensemanagerGrant({
    required super.localName,
    required TfArg<List<String>> allowedOperations,
    required TfArg<String> licenseArn,
    required TfArg<String> name,
    required TfArg<String> principal,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_operations': allowedOperations,
           'license_arn': licenseArn,
           'name': name,
           'principal': principal,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerGrantSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

  /// Reference to `parent_arn` attribute.
  TfRef<String> get parentArn => TfRef.attribute<String>(this, 'parent_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
