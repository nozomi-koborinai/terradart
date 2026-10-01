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
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'extra_params': ?extraParams?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
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
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'extra_params': ?extraParams?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
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

  final TfArg<List<String>>? glueIps;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'glue_ips': ?glueIps?.toTfJson(),
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
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'extra_params': ?extraParams?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
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
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'extra_params': ?extraParams?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
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
           'admin_privacy': ?adminPrivacy,
           'auto_renew': ?autoRenew,
           'billing_privacy': ?billingPrivacy,
           'domain_name': domainName,
           'registrant_privacy': ?registrantPrivacy,
           'tags': ?tags,
           'tech_privacy': ?techPrivacy,
           'transfer_lock': ?transferLock,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53domainsRegisteredDomain>`.
  RefTo<AwsRoute53domainsRegisteredDomain> get ref => RefTo.of(this);

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

  /// Reference to `admin_privacy` attribute.
  TfRef<bool> get adminPrivacy => TfRef.attribute<bool>(this, 'admin_privacy');

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenew => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `billing_privacy` attribute.
  TfRef<bool> get billingPrivacy =>
      TfRef.attribute<bool>(this, 'billing_privacy');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `registrant_privacy` attribute.
  TfRef<bool> get registrantPrivacy =>
      TfRef.attribute<bool>(this, 'registrant_privacy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tech_privacy` attribute.
  TfRef<bool> get techPrivacy => TfRef.attribute<bool>(this, 'tech_privacy');

  /// Reference to `transfer_lock` attribute.
  TfRef<bool> get transferLock => TfRef.attribute<bool>(this, 'transfer_lock');
}
