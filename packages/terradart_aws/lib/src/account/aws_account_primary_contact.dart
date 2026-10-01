// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_account_primary_contact`.
const Set<String> _awsAccountPrimaryContactSensitive = <String>{};

/// Factory wrapper for `aws_account_primary_contact`.
final class AwsAccountPrimaryContact extends Resource {
  static const String tfType = 'aws_account_primary_contact';

  AwsAccountPrimaryContact(
    super.localName, {
    TfArg<String>? accountId,
    required TfArg<String> addressLine1,
    TfArg<String>? addressLine2,
    TfArg<String>? addressLine3,
    required TfArg<String> city,
    TfArg<String>? companyName,
    required TfArg<String> countryCode,
    TfArg<String>? districtOrCounty,
    required TfArg<String> fullName,
    required TfArg<String> phoneNumber,
    required TfArg<String> postalCode,
    TfArg<String>? stateOrRegion,
    TfArg<String>? websiteUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'address_line_1': addressLine1,
           'address_line_2': ?addressLine2,
           'address_line_3': ?addressLine3,
           'city': city,
           'company_name': ?companyName,
           'country_code': countryCode,
           'district_or_county': ?districtOrCounty,
           'full_name': fullName,
           'phone_number': phoneNumber,
           'postal_code': postalCode,
           'state_or_region': ?stateOrRegion,
           'website_url': ?websiteUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountPrimaryContactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccountPrimaryContact>`.
  RefTo<AwsAccountPrimaryContact> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `address_line_1` attribute.
  TfRef<String> get addressLine1 =>
      TfRef.attribute<String>(this, 'address_line_1');

  /// Reference to `address_line_2` attribute.
  TfRef<String> get addressLine2 =>
      TfRef.attribute<String>(this, 'address_line_2');

  /// Reference to `address_line_3` attribute.
  TfRef<String> get addressLine3 =>
      TfRef.attribute<String>(this, 'address_line_3');

  /// Reference to `city` attribute.
  TfRef<String> get city => TfRef.attribute<String>(this, 'city');

  /// Reference to `company_name` attribute.
  TfRef<String> get companyName =>
      TfRef.attribute<String>(this, 'company_name');

  /// Reference to `country_code` attribute.
  TfRef<String> get countryCode =>
      TfRef.attribute<String>(this, 'country_code');

  /// Reference to `district_or_county` attribute.
  TfRef<String> get districtOrCounty =>
      TfRef.attribute<String>(this, 'district_or_county');

  /// Reference to `full_name` attribute.
  TfRef<String> get fullName => TfRef.attribute<String>(this, 'full_name');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumber =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `postal_code` attribute.
  TfRef<String> get postalCode => TfRef.attribute<String>(this, 'postal_code');

  /// Reference to `state_or_region` attribute.
  TfRef<String> get stateOrRegion =>
      TfRef.attribute<String>(this, 'state_or_region');

  /// Reference to `website_url` attribute.
  TfRef<String> get websiteUrl => TfRef.attribute<String>(this, 'website_url');
}
