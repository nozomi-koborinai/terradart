// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/aws_account_primary_contact.dart';

/// Sensitive field paths for `aws_account_primary_contact`.
const Set<String> _awsAccountPrimaryContactSensitive = <String>{};

/// Factory wrapper for `aws_account_primary_contact`.
final class DataAwsAccountPrimaryContact extends Data {
  static const String tfType = 'aws_account_primary_contact';

  DataAwsAccountPrimaryContact({
    required super.localName,
    TfArg<String>? accountId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'account_id': ?accountId});

  @override
  Set<String> get sensitiveFields => _awsAccountPrimaryContactSensitive;

  /// A reference to the `aws_account_primary_contact` this data source reads, for
  /// arguments typed `RefTo<AwsAccountPrimaryContact>`.
  RefTo<AwsAccountPrimaryContact> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
