// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddomains_registration`.
const Set<String> _googleClouddomainsRegistrationSensitive = <String>{};

/// Typed helper for the `contact_settings` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettings {
  const ClouddomainsRegistrationContactSettings({
    required this.privacy,
    required this.adminContact,
    required this.registrantContact,
    required this.technicalContact,
  });

  final TfArg<String> privacy;

  final ClouddomainsRegistrationContactSettingsAdminContact adminContact;

  final ClouddomainsRegistrationContactSettingsRegistrantContact
  registrantContact;

  final ClouddomainsRegistrationContactSettingsTechnicalContact
  technicalContact;

  Map<String, Object?> encode() => {
    'privacy': privacy.toTfJson(),
    'admin_contact': adminContact.encode(),
    'registrant_contact': registrantContact.encode(),
    'technical_contact': technicalContact.encode(),
  };
}

/// Typed helper for the `contact_settings.admin_contact` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsAdminContact {
  const ClouddomainsRegistrationContactSettingsAdminContact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  final TfArg<String> email;

  final TfArg<String>? faxNumber;

  final TfArg<String> phoneNumber;

  final ClouddomainsRegistrationContactSettingsAdminContactPostalAddress
  postalAddress;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    if (faxNumber != null) 'fax_number': faxNumber!.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
    'postal_address': postalAddress.encode(),
  };
}

/// Typed helper for the `contact_settings.admin_contact.postal_address` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsAdminContactPostalAddress {
  const ClouddomainsRegistrationContactSettingsAdminContactPostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    required this.regionCode,
  });

  final TfArg<List<Object?>>? addressLines;

  final TfArg<String>? administrativeArea;

  final TfArg<String>? locality;

  final TfArg<String>? organization;

  final TfArg<String>? postalCode;

  final TfArg<List<Object?>>? recipients;

  final TfArg<String> regionCode;

  Map<String, Object?> encode() => {
    if (addressLines != null) 'address_lines': addressLines!.toTfJson(),
    if (administrativeArea != null)
      'administrative_area': administrativeArea!.toTfJson(),
    if (locality != null) 'locality': locality!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (recipients != null) 'recipients': recipients!.toTfJson(),
    'region_code': regionCode.toTfJson(),
  };
}

/// Typed helper for the `contact_settings.registrant_contact` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsRegistrantContact {
  const ClouddomainsRegistrationContactSettingsRegistrantContact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  final TfArg<String> email;

  final TfArg<String>? faxNumber;

  final TfArg<String> phoneNumber;

  final ClouddomainsRegistrationContactSettingsRegistrantContactPostalAddress
  postalAddress;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    if (faxNumber != null) 'fax_number': faxNumber!.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
    'postal_address': postalAddress.encode(),
  };
}

/// Typed helper for the `contact_settings.registrant_contact.postal_address` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsRegistrantContactPostalAddress {
  const ClouddomainsRegistrationContactSettingsRegistrantContactPostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    required this.regionCode,
  });

  final TfArg<List<Object?>>? addressLines;

  final TfArg<String>? administrativeArea;

  final TfArg<String>? locality;

  final TfArg<String>? organization;

  final TfArg<String>? postalCode;

  final TfArg<List<Object?>>? recipients;

  final TfArg<String> regionCode;

  Map<String, Object?> encode() => {
    if (addressLines != null) 'address_lines': addressLines!.toTfJson(),
    if (administrativeArea != null)
      'administrative_area': administrativeArea!.toTfJson(),
    if (locality != null) 'locality': locality!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (recipients != null) 'recipients': recipients!.toTfJson(),
    'region_code': regionCode.toTfJson(),
  };
}

/// Typed helper for the `contact_settings.technical_contact` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsTechnicalContact {
  const ClouddomainsRegistrationContactSettingsTechnicalContact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  final TfArg<String> email;

  final TfArg<String>? faxNumber;

  final TfArg<String> phoneNumber;

  final ClouddomainsRegistrationContactSettingsTechnicalContactPostalAddress
  postalAddress;

  Map<String, Object?> encode() => {
    'email': email.toTfJson(),
    if (faxNumber != null) 'fax_number': faxNumber!.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
    'postal_address': postalAddress.encode(),
  };
}

/// Typed helper for the `contact_settings.technical_contact.postal_address` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationContactSettingsTechnicalContactPostalAddress {
  const ClouddomainsRegistrationContactSettingsTechnicalContactPostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    required this.regionCode,
  });

  final TfArg<List<Object?>>? addressLines;

  final TfArg<String>? administrativeArea;

  final TfArg<String>? locality;

  final TfArg<String>? organization;

  final TfArg<String>? postalCode;

  final TfArg<List<Object?>>? recipients;

  final TfArg<String> regionCode;

  Map<String, Object?> encode() => {
    if (addressLines != null) 'address_lines': addressLines!.toTfJson(),
    if (administrativeArea != null)
      'administrative_area': administrativeArea!.toTfJson(),
    if (locality != null) 'locality': locality!.toTfJson(),
    if (organization != null) 'organization': organization!.toTfJson(),
    if (postalCode != null) 'postal_code': postalCode!.toTfJson(),
    if (recipients != null) 'recipients': recipients!.toTfJson(),
    'region_code': regionCode.toTfJson(),
  };
}

/// Typed helper for the `dns_settings` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationDnsSettings {
  const ClouddomainsRegistrationDnsSettings({this.customDns, this.glueRecords});

  final ClouddomainsRegistrationDnsSettingsCustomDns? customDns;

  final List<ClouddomainsRegistrationDnsSettingsGlueRecords>? glueRecords;

  Map<String, Object?> encode() => {
    if (customDns != null) 'custom_dns': customDns!.encode(),
    if (glueRecords != null)
      'glue_records': [for (final e in glueRecords!) e.encode()],
  };
}

/// Typed helper for the `dns_settings.custom_dns` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationDnsSettingsCustomDns {
  const ClouddomainsRegistrationDnsSettingsCustomDns({
    required this.nameServers,
    this.dsRecords,
  });

  final TfArg<List<Object?>> nameServers;

  final List<ClouddomainsRegistrationDnsSettingsCustomDnsDsRecords>? dsRecords;

  Map<String, Object?> encode() => {
    'name_servers': nameServers.toTfJson(),
    if (dsRecords != null)
      'ds_records': [for (final e in dsRecords!) e.encode()],
  };
}

/// Typed helper for the `dns_settings.custom_dns.ds_records` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationDnsSettingsCustomDnsDsRecords {
  const ClouddomainsRegistrationDnsSettingsCustomDnsDsRecords({
    this.algorithm,
    this.digest,
    this.digestType,
    this.keyTag,
  });

  final TfArg<String>? algorithm;

  final TfArg<String>? digest;

  final TfArg<String>? digestType;

  final TfArg<num>? keyTag;

  Map<String, Object?> encode() => {
    if (algorithm != null) 'algorithm': algorithm!.toTfJson(),
    if (digest != null) 'digest': digest!.toTfJson(),
    if (digestType != null) 'digest_type': digestType!.toTfJson(),
    if (keyTag != null) 'key_tag': keyTag!.toTfJson(),
  };
}

/// Typed helper for the `dns_settings.glue_records` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationDnsSettingsGlueRecords {
  const ClouddomainsRegistrationDnsSettingsGlueRecords({
    required this.hostName,
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  final TfArg<String> hostName;

  final TfArg<List<Object?>>? ipv4Addresses;

  final TfArg<List<Object?>>? ipv6Addresses;

  Map<String, Object?> encode() => {
    'host_name': hostName.toTfJson(),
    if (ipv4Addresses != null) 'ipv4_addresses': ipv4Addresses!.toTfJson(),
    if (ipv6Addresses != null) 'ipv6_addresses': ipv6Addresses!.toTfJson(),
  };
}

/// Typed helper for the `management_settings` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationManagementSettings {
  const ClouddomainsRegistrationManagementSettings({
    this.preferredRenewalMethod,
    this.transferLockState,
  });

  final TfArg<String>? preferredRenewalMethod;

  final TfArg<String>? transferLockState;

  Map<String, Object?> encode() => {
    if (preferredRenewalMethod != null)
      'preferred_renewal_method': preferredRenewalMethod!.toTfJson(),
    if (transferLockState != null)
      'transfer_lock_state': transferLockState!.toTfJson(),
  };
}

/// Typed helper for the `yearly_price` block of
/// `google_clouddomains_registration` (derived from provider schema).
@immutable
final class ClouddomainsRegistrationYearlyPrice {
  const ClouddomainsRegistrationYearlyPrice({this.currencyCode, this.units});

  final TfArg<String>? currencyCode;

  final TfArg<String>? units;

  Map<String, Object?> encode() => {
    if (currencyCode != null) 'currency_code': currencyCode!.toTfJson(),
    if (units != null) 'units': units!.toTfJson(),
  };
}

/// Factory wrapper for `google_clouddomains_registration`.
///
/// Registers a new domain name and creates a corresponding Registration
/// resource.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleClouddomainsRegistration extends Resource {
  static const String tfType = 'google_clouddomains_registration';

  GoogleClouddomainsRegistration({
    required super.localName,
    TfArg<List<String>>? contactNotices,
    required TfArg<String> domainName,
    TfArg<List<String>>? domainNotices,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required ClouddomainsRegistrationContactSettings contactSettings,
    ClouddomainsRegistrationDnsSettings? dnsSettings,
    ClouddomainsRegistrationManagementSettings? managementSettings,
    required ClouddomainsRegistrationYearlyPrice yearlyPrice,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (contactNotices != null) 'contact_notices': contactNotices,
           'domain_name': domainName,
           if (domainNotices != null) 'domain_notices': domainNotices,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           'contact_settings': TfArg.literal(contactSettings.encode()),
           if (dnsSettings != null)
             'dns_settings': TfArg.literal(dnsSettings.encode()),
           if (managementSettings != null)
             'management_settings': TfArg.literal(managementSettings.encode()),
           'yearly_price': TfArg.literal(yearlyPrice.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddomainsRegistrationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `issues` attribute.
  TfRef<List<String>> get issues =>
      TfRef.attribute<List<String>>(this, 'issues');

  /// Reference to `register_failure_reason` attribute.
  TfRef<String> get registerFailureReason =>
      TfRef.attribute<String>(this, 'register_failure_reason');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `supported_privacy` attribute.
  TfRef<List<String>> get supportedPrivacy =>
      TfRef.attribute<List<String>>(this, 'supported_privacy');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
