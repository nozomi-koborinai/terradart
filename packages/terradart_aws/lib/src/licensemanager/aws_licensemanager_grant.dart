// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_licensemanager_grant`.
const Set<String> _awsLicensemanagerGrantSensitive = <String>{};

/// Licensemanager Grant Allowed enum for `allowed_operations`.
enum LicensemanagerGrantAllowedOperations implements TerraformEnum {
  creategrant('CreateGrant'),
  checkoutlicense('CheckoutLicense'),
  checkoutborrowlicense('CheckoutBorrowLicense'),
  checkinlicense('CheckInLicense'),
  extendconsumptionlicense('ExtendConsumptionLicense'),
  listpurchasedlicenses('ListPurchasedLicenses'),
  createtoken('CreateToken');

  const LicensemanagerGrantAllowedOperations(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_licensemanager_grant`.
final class AwsLicensemanagerGrant extends Resource {
  static const String tfType = 'aws_licensemanager_grant';

  AwsLicensemanagerGrant({
    required super.localName,
    required List<TfArg<LicensemanagerGrantAllowedOperations>>
    allowedOperations,
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
           'allowed_operations': TfArg.literal([
             for (final e in allowedOperations) e.toTfJson(),
           ]),
           'license_arn': licenseArn,
           'name': name,
           'principal': principal,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLicensemanagerGrantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLicensemanagerGrant>`.
  RefTo<AwsLicensemanagerGrant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `allowed_operations` attribute.
  TfRef<List<String>> get allowedOperations =>
      TfRef.attribute<List<String>>(this, 'allowed_operations');

  /// Reference to `license_arn` attribute.
  TfRef<String> get licenseArn => TfRef.attribute<String>(this, 'license_arn');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
