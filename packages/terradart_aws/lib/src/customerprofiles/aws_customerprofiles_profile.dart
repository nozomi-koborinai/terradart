// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_customerprofiles_profile`.
const Set<String> _awsCustomerprofilesProfileSensitive = <String>{};

/// Typed helper for the `address` block of
/// `aws_customerprofiles_profile` (derived from provider schema).
@immutable
final class CustomerprofilesProfileAddress {
  const CustomerprofilesProfileAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.city,
    this.country,
    this.county,
    this.postalCode,
    this.province,
    this.state,
  });

  final TfArg<String>? address1;

  final TfArg<String>? address2;

  final TfArg<String>? address3;

  final TfArg<String>? address4;

  final TfArg<String>? city;

  final TfArg<String>? country;

  final TfArg<String>? county;

  final TfArg<String>? postalCode;

  final TfArg<String>? province;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    'address_1': ?address1?.toTfJson(),
    'address_2': ?address2?.toTfJson(),
    'address_3': ?address3?.toTfJson(),
    'address_4': ?address4?.toTfJson(),
    'city': ?city?.toTfJson(),
    'country': ?country?.toTfJson(),
    'county': ?county?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'province': ?province?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// Typed helper for the `billing_address` block of
/// `aws_customerprofiles_profile` (derived from provider schema).
@immutable
final class CustomerprofilesProfileBillingAddress {
  const CustomerprofilesProfileBillingAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.city,
    this.country,
    this.county,
    this.postalCode,
    this.province,
    this.state,
  });

  final TfArg<String>? address1;

  final TfArg<String>? address2;

  final TfArg<String>? address3;

  final TfArg<String>? address4;

  final TfArg<String>? city;

  final TfArg<String>? country;

  final TfArg<String>? county;

  final TfArg<String>? postalCode;

  final TfArg<String>? province;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    'address_1': ?address1?.toTfJson(),
    'address_2': ?address2?.toTfJson(),
    'address_3': ?address3?.toTfJson(),
    'address_4': ?address4?.toTfJson(),
    'city': ?city?.toTfJson(),
    'country': ?country?.toTfJson(),
    'county': ?county?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'province': ?province?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// Typed helper for the `mailing_address` block of
/// `aws_customerprofiles_profile` (derived from provider schema).
@immutable
final class CustomerprofilesProfileMailingAddress {
  const CustomerprofilesProfileMailingAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.city,
    this.country,
    this.county,
    this.postalCode,
    this.province,
    this.state,
  });

  final TfArg<String>? address1;

  final TfArg<String>? address2;

  final TfArg<String>? address3;

  final TfArg<String>? address4;

  final TfArg<String>? city;

  final TfArg<String>? country;

  final TfArg<String>? county;

  final TfArg<String>? postalCode;

  final TfArg<String>? province;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    'address_1': ?address1?.toTfJson(),
    'address_2': ?address2?.toTfJson(),
    'address_3': ?address3?.toTfJson(),
    'address_4': ?address4?.toTfJson(),
    'city': ?city?.toTfJson(),
    'country': ?country?.toTfJson(),
    'county': ?county?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'province': ?province?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// Typed helper for the `shipping_address` block of
/// `aws_customerprofiles_profile` (derived from provider schema).
@immutable
final class CustomerprofilesProfileShippingAddress {
  const CustomerprofilesProfileShippingAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.city,
    this.country,
    this.county,
    this.postalCode,
    this.province,
    this.state,
  });

  final TfArg<String>? address1;

  final TfArg<String>? address2;

  final TfArg<String>? address3;

  final TfArg<String>? address4;

  final TfArg<String>? city;

  final TfArg<String>? country;

  final TfArg<String>? county;

  final TfArg<String>? postalCode;

  final TfArg<String>? province;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    'address_1': ?address1?.toTfJson(),
    'address_2': ?address2?.toTfJson(),
    'address_3': ?address3?.toTfJson(),
    'address_4': ?address4?.toTfJson(),
    'city': ?city?.toTfJson(),
    'country': ?country?.toTfJson(),
    'county': ?county?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'province': ?province?.toTfJson(),
    'state': ?state?.toTfJson(),
  };
}

/// Factory wrapper for `aws_customerprofiles_profile`.
final class AwsCustomerprofilesProfile extends Resource {
  static const String tfType = 'aws_customerprofiles_profile';

  AwsCustomerprofilesProfile(
    super.localName, {
    TfArg<String>? accountNumber,
    TfArg<String>? additionalInformation,
    TfArg<Map<String, String>>? attributes,
    TfArg<String>? birthDate,
    TfArg<String>? businessEmailAddress,
    TfArg<String>? businessName,
    TfArg<String>? businessPhoneNumber,
    required TfArg<String> domainName,
    TfArg<String>? emailAddress,
    TfArg<String>? firstName,
    TfArg<String>? genderString,
    TfArg<String>? homePhoneNumber,
    TfArg<String>? lastName,
    TfArg<String>? middleName,
    TfArg<String>? mobilePhoneNumber,
    TfArg<String>? partyTypeString,
    TfArg<String>? personalEmailAddress,
    TfArg<String>? phoneNumber,
    TfArg<String>? region,
    CustomerprofilesProfileAddress? address,
    CustomerprofilesProfileBillingAddress? billingAddress,
    CustomerprofilesProfileMailingAddress? mailingAddress,
    CustomerprofilesProfileShippingAddress? shippingAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_number': ?accountNumber,
           'additional_information': ?additionalInformation,
           'attributes': ?attributes,
           'birth_date': ?birthDate,
           'business_email_address': ?businessEmailAddress,
           'business_name': ?businessName,
           'business_phone_number': ?businessPhoneNumber,
           'domain_name': domainName,
           'email_address': ?emailAddress,
           'first_name': ?firstName,
           'gender_string': ?genderString,
           'home_phone_number': ?homePhoneNumber,
           'last_name': ?lastName,
           'middle_name': ?middleName,
           'mobile_phone_number': ?mobilePhoneNumber,
           'party_type_string': ?partyTypeString,
           'personal_email_address': ?personalEmailAddress,
           'phone_number': ?phoneNumber,
           'region': ?region,
           if (address != null) 'address': TfArg.literal(address.encode()),
           if (billingAddress != null)
             'billing_address': TfArg.literal(billingAddress.encode()),
           if (mailingAddress != null)
             'mailing_address': TfArg.literal(mailingAddress.encode()),
           if (shippingAddress != null)
             'shipping_address': TfArg.literal(shippingAddress.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCustomerprofilesProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCustomerprofilesProfile>`.
  RefTo<AwsCustomerprofilesProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_number` attribute.
  TfRef<String> get accountNumber =>
      TfRef.attribute<String>(this, 'account_number');

  /// Reference to `additional_information` attribute.
  TfRef<String> get additionalInformation =>
      TfRef.attribute<String>(this, 'additional_information');

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `birth_date` attribute.
  TfRef<String> get birthDate => TfRef.attribute<String>(this, 'birth_date');

  /// Reference to `business_email_address` attribute.
  TfRef<String> get businessEmailAddress =>
      TfRef.attribute<String>(this, 'business_email_address');

  /// Reference to `business_name` attribute.
  TfRef<String> get businessName =>
      TfRef.attribute<String>(this, 'business_name');

  /// Reference to `business_phone_number` attribute.
  TfRef<String> get businessPhoneNumber =>
      TfRef.attribute<String>(this, 'business_phone_number');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstName => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `gender_string` attribute.
  TfRef<String> get genderString =>
      TfRef.attribute<String>(this, 'gender_string');

  /// Reference to `home_phone_number` attribute.
  TfRef<String> get homePhoneNumber =>
      TfRef.attribute<String>(this, 'home_phone_number');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastName => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `middle_name` attribute.
  TfRef<String> get middleName => TfRef.attribute<String>(this, 'middle_name');

  /// Reference to `mobile_phone_number` attribute.
  TfRef<String> get mobilePhoneNumber =>
      TfRef.attribute<String>(this, 'mobile_phone_number');

  /// Reference to `party_type_string` attribute.
  TfRef<String> get partyTypeString =>
      TfRef.attribute<String>(this, 'party_type_string');

  /// Reference to `personal_email_address` attribute.
  TfRef<String> get personalEmailAddress =>
      TfRef.attribute<String>(this, 'personal_email_address');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumber =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
