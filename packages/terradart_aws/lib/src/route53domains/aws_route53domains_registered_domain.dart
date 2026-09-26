// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53domains_registered_domain`.
const Set<String> _awsRoute53domainsRegisteredDomainSensitive = <String>{};

/// Typed helper for the `admin_contact` block of
/// `aws_route53domains_registered_domain` (derived from provider schema).
@immutable
final class Route53domainsRegisteredDomainAdminContact {
  const Route53domainsRegisteredDomainAdminContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.extraParams,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<Map<String, String>>? extraParams;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (extraParams != null) 'extra_params': extraParams!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
  };
}

/// Typed helper for the `billing_contact` block of
/// `aws_route53domains_registered_domain` (derived from provider schema).
@immutable
final class Route53domainsRegisteredDomainBillingContact {
  const Route53domainsRegisteredDomainBillingContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.extraParams,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<Map<String, String>>? extraParams;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (extraParams != null) 'extra_params': extraParams!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
  };
}

/// Typed helper for the `name_server` block of
/// `aws_route53domains_registered_domain` (derived from provider schema).
@immutable
final class Route53domainsRegisteredDomainNameServer {
  const Route53domainsRegisteredDomainNameServer({
    this.glueIps,
    required this.name,
  });

  final TfArg<List<Object?>>? glueIps;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (glueIps != null) 'glue_ips': glueIps!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `registrant_contact` block of
/// `aws_route53domains_registered_domain` (derived from provider schema).
@immutable
final class Route53domainsRegisteredDomainRegistrantContact {
  const Route53domainsRegisteredDomainRegistrantContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.extraParams,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<Map<String, String>>? extraParams;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (extraParams != null) 'extra_params': extraParams!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
  };
}

/// Typed helper for the `tech_contact` block of
/// `aws_route53domains_registered_domain` (derived from provider schema).
@immutable
final class Route53domainsRegisteredDomainTechContact {
  const Route53domainsRegisteredDomainTechContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.extraParams,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<Map<String, String>>? extraParams;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (extraParams != null) 'extra_params': extraParams!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53domains_registered_domain`.
final class AwsRoute53domainsRegisteredDomain extends Resource {
  static const String tfType = 'aws_route53domains_registered_domain';

  AwsRoute53domainsRegisteredDomain({
    required super.localName,
    TfArg<bool>? adminPrivacy,
    TfArg<bool>? autoRenew,
    TfArg<bool>? billingPrivacy,
    required TfArg<String> domainName,
    TfArg<bool>? registrantPrivacy,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? techPrivacy,
    TfArg<bool>? transferLock,
    Route53domainsRegisteredDomainAdminContact? adminContact,
    Route53domainsRegisteredDomainBillingContact? billingContact,
    List<Route53domainsRegisteredDomainNameServer>? nameServer,
    Route53domainsRegisteredDomainRegistrantContact? registrantContact,
    Route53domainsRegisteredDomainTechContact? techContact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (adminPrivacy != null) 'admin_privacy': adminPrivacy,
           if (autoRenew != null) 'auto_renew': autoRenew,
           if (billingPrivacy != null) 'billing_privacy': billingPrivacy,
           'domain_name': domainName,
           if (registrantPrivacy != null)
             'registrant_privacy': registrantPrivacy,
           if (tags != null) 'tags': tags,
           if (techPrivacy != null) 'tech_privacy': techPrivacy,
           if (transferLock != null) 'transfer_lock': transferLock,
           if (adminContact != null)
             'admin_contact': TfArg.literal(adminContact.encode()),
           if (billingContact != null)
             'billing_contact': TfArg.literal(billingContact.encode()),
           if (nameServer != null)
             'name_server': TfArg.literal([
               for (final e in nameServer) e.encode(),
             ]),
           if (registrantContact != null)
             'registrant_contact': TfArg.literal(registrantContact.encode()),
           if (techContact != null)
             'tech_contact': TfArg.literal(techContact.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53domainsRegisteredDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `abuse_contact_email` attribute.
  TfRef<String> get abuseContactEmail =>
      TfRef.attribute<String>(this, 'abuse_contact_email');

  /// Reference to `abuse_contact_phone` attribute.
  TfRef<String> get abuseContactPhone =>
      TfRef.attribute<String>(this, 'abuse_contact_phone');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `registrar_name` attribute.
  TfRef<String> get registrarName =>
      TfRef.attribute<String>(this, 'registrar_name');

  /// Reference to `registrar_url` attribute.
  TfRef<String> get registrarUrl =>
      TfRef.attribute<String>(this, 'registrar_url');

  /// Reference to `reseller` attribute.
  TfRef<String> get reseller => TfRef.attribute<String>(this, 'reseller');

  /// Reference to `status_list` attribute.
  TfRef<List<String>> get statusList =>
      TfRef.attribute<List<String>>(this, 'status_list');

  /// Reference to `updated_date` attribute.
  TfRef<String> get updatedDate =>
      TfRef.attribute<String>(this, 'updated_date');

  /// Reference to `whois_server` attribute.
  TfRef<String> get whoisServer =>
      TfRef.attribute<String>(this, 'whois_server');
}
