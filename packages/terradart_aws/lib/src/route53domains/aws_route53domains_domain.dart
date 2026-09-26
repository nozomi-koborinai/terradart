// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53domains_domain`.
const Set<String> _awsRoute53domainsDomainSensitive = <String>{};

/// Typed helper for the `admin_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainAdminContact {
  const Route53domainsDomainAdminContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainAdminContactExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// Typed helper for the `admin_contact.extra_param` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainAdminContactExtraParam {
  const Route53domainsDomainAdminContactExtraParam({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `registrant_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainRegistrantContact {
  const Route53domainsDomainRegistrantContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainRegistrantContactExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// Typed helper for the `registrant_contact.extra_param` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainRegistrantContactExtraParam {
  const Route53domainsDomainRegistrantContactExtraParam({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `tech_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainTechContact {
  const Route53domainsDomainTechContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<String>? contactType;

  final TfArg<String>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainTechContactExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    if (addressLine1 != null) 'address_line_1': addressLine1!.toTfJson(),
    if (addressLine2 != null) 'address_line_2': addressLine2!.toTfJson(),
    if (city != null) 'city': city!.toTfJson(),
    if (contactType != null) 'contact_type': contactType!.toTfJson(),
    if (countryCode != null) 'country_code': countryCode!.toTfJson(),
    if (email != null) 'email': email!.toTfJson(),
    if (fax != null) 'fax': fax!.toTfJson(),
    if (firstName != null) 'first_name': firstName!.toTfJson(),
    if (lastName != null) 'last_name': lastName!.toTfJson(),
    if (organizationName != null)
      'organization_name': organizationName!.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (zipCode != null) 'zip_code': zipCode!.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// Typed helper for the `tech_contact.extra_param` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainTechContactExtraParam {
  const Route53domainsDomainTechContactExtraParam({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53domains_domain`.
final class AwsRoute53domainsDomain extends Resource {
  static const String tfType = 'aws_route53domains_domain';

  AwsRoute53domainsDomain({
    required super.localName,
    TfArg<bool>? adminPrivacy,
    TfArg<bool>? autoRenew,
    TfArg<List<Map<String, Object?>>>? billingContact,
    TfArg<bool>? billingPrivacy,
    required TfArg<String> domainName,
    TfArg<num>? durationInYears,
    TfArg<List<Map<String, Object?>>>? nameServer,
    TfArg<bool>? registrantPrivacy,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? techPrivacy,
    TfArg<bool>? transferLock,
    List<Route53domainsDomainAdminContact>? adminContact,
    List<Route53domainsDomainRegistrantContact>? registrantContact,
    List<Route53domainsDomainTechContact>? techContact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (adminPrivacy != null) 'admin_privacy': adminPrivacy,
           if (autoRenew != null) 'auto_renew': autoRenew,
           if (billingContact != null) 'billing_contact': billingContact,
           if (billingPrivacy != null) 'billing_privacy': billingPrivacy,
           'domain_name': domainName,
           if (durationInYears != null) 'duration_in_years': durationInYears,
           if (nameServer != null) 'name_server': nameServer,
           if (registrantPrivacy != null)
             'registrant_privacy': registrantPrivacy,
           if (tags != null) 'tags': tags,
           if (techPrivacy != null) 'tech_privacy': techPrivacy,
           if (transferLock != null) 'transfer_lock': transferLock,
           if (adminContact != null)
             'admin_contact': TfArg.literal([
               for (final e in adminContact) e.encode(),
             ]),
           if (registrantContact != null)
             'registrant_contact': TfArg.literal([
               for (final e in registrantContact) e.encode(),
             ]),
           if (techContact != null)
             'tech_contact': TfArg.literal([
               for (final e in techContact) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53domainsDomainSensitive;

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

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `registrar_name` attribute.
  TfRef<String> get registrarName =>
      TfRef.attribute<String>(this, 'registrar_name');

  /// Reference to `registrar_url` attribute.
  TfRef<String> get registrarUrl =>
      TfRef.attribute<String>(this, 'registrar_url');

  /// Reference to `status_list` attribute.
  TfRef<List<String>> get statusList =>
      TfRef.attribute<List<String>>(this, 'status_list');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_date` attribute.
  TfRef<String> get updatedDate =>
      TfRef.attribute<String>(this, 'updated_date');

  /// Reference to `whois_server` attribute.
  TfRef<String> get whoisServer =>
      TfRef.attribute<String>(this, 'whois_server');
}
