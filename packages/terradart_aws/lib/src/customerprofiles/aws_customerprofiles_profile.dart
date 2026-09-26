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
    if (address1 != null) 'address_1': address1!.toTfJson(),
    if (address2 != null) 'address_2': address2!.toTfJson(),
    if (address3 != null) 'address_3': address3!.toTfJson(),
    if (address4 != null) 'address_4': address4!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (county != null) 'county': county!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (province != null) 'province': province!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
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
    if (address1 != null) 'address_1': address1!.toTfJson(),
    if (address2 != null) 'address_2': address2!.toTfJson(),
    if (address3 != null) 'address_3': address3!.toTfJson(),
    if (address4 != null) 'address_4': address4!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (county != null) 'county': county!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (province != null) 'province': province!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
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
    if (address1 != null) 'address_1': address1!.toTfJson(),
    if (address2 != null) 'address_2': address2!.toTfJson(),
    if (address3 != null) 'address_3': address3!.toTfJson(),
    if (address4 != null) 'address_4': address4!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (county != null) 'county': county!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (province != null) 'province': province!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
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
    if (address1 != null) 'address_1': address1!.toTfJson(),
    if (address2 != null) 'address_2': address2!.toTfJson(),
    if (address3 != null) 'address_3': address3!.toTfJson(),
    if (address4 != null) 'address_4': address4!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (country != null) 'country': country!.toTfJson(),
    if (county != null) 'county': county!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (province != null) 'province': province!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
  };
}

/// Factory wrapper for `aws_customerprofiles_profile`.
final class AwsCustomerprofilesProfile extends Resource {
  static const String tfType = 'aws_customerprofiles_profile';

  AwsCustomerprofilesProfile({
    required super.localName,
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
           if (accountNumber != null) 'account_number': accountNumber,
           if (additionalInformation != null)
             'additional_information': additionalInformation,
           if (attributes != null) 'attributes': attributes,
           if (birthDate != null) 'birth_date': birthDate,
           if (businessEmailAddress != null)
             'business_email_address': businessEmailAddress,
           if (businessName != null) 'business_name': businessName,
           if (businessPhoneNumber != null)
             'business_phone_number': businessPhoneNumber,
           'domain_name': domainName,
           if (emailAddress != null) 'email_address': emailAddress,
           if (firstName != null) 'first_name': firstName,
           if (genderString != null) 'gender_string': genderString,
           if (homePhoneNumber != null) 'home_phone_number': homePhoneNumber,
           if (lastName != null) 'last_name': lastName,
           if (middleName != null) 'middle_name': middleName,
           if (mobilePhoneNumber != null)
             'mobile_phone_number': mobilePhoneNumber,
           if (partyTypeString != null) 'party_type_string': partyTypeString,
           if (personalEmailAddress != null)
             'personal_email_address': personalEmailAddress,
           if (phoneNumber != null) 'phone_number': phoneNumber,
           if (region != null) 'region': region,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
