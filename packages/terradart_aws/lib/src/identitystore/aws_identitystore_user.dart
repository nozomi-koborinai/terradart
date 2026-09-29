// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_user`.
const Set<String> _awsIdentitystoreUserSensitive = <String>{};

/// Typed helper for the `addresses` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class IdentitystoreUserAddresses {
  const IdentitystoreUserAddresses({
    this.country,
    this.formatted,
    this.locality,
    this.postalCode,
    this.primary,
    this.region,
    this.streetAddress,
    this.type,
  });

  final TfArg<String>? country;

  final TfArg<String>? formatted;

  final TfArg<String>? locality;

  final TfArg<String>? postalCode;

  final TfArg<bool>? primary;

  final TfArg<String>? region;

  final TfArg<String>? streetAddress;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'country': ?country?.toTfJson(),
    'formatted': ?formatted?.toTfJson(),
    'locality': ?locality?.toTfJson(),
    'postal_code': ?postalCode?.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'region': ?region?.toTfJson(),
    'street_address': ?streetAddress?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `emails` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class IdentitystoreUserEmails {
  const IdentitystoreUserEmails({this.primary, this.type, this.value});

  final TfArg<bool>? primary;

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'primary': ?primary?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `name` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class IdentitystoreUserName {
  const IdentitystoreUserName({
    required this.familyName,
    this.formatted,
    required this.givenName,
    this.honorificPrefix,
    this.honorificSuffix,
    this.middleName,
  });

  final TfArg<String> familyName;

  final TfArg<String>? formatted;

  final TfArg<String> givenName;

  final TfArg<String>? honorificPrefix;

  final TfArg<String>? honorificSuffix;

  final TfArg<String>? middleName;

  Map<String, Object?> encode() => {
    'family_name': familyName.toTfJson(),
    'formatted': ?formatted?.toTfJson(),
    'given_name': givenName.toTfJson(),
    'honorific_prefix': ?honorificPrefix?.toTfJson(),
    'honorific_suffix': ?honorificSuffix?.toTfJson(),
    'middle_name': ?middleName?.toTfJson(),
  };
}

/// Typed helper for the `phone_numbers` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class IdentitystoreUserPhoneNumbers {
  const IdentitystoreUserPhoneNumbers({this.primary, this.type, this.value});

  final TfArg<bool>? primary;

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'primary': ?primary?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `aws_identitystore_user`.
final class AwsIdentitystoreUser extends Resource {
  static const String tfType = 'aws_identitystore_user';

  AwsIdentitystoreUser({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> identityStoreId,
    TfArg<String>? locale,
    TfArg<String>? nickname,
    TfArg<String>? preferredLanguage,
    TfArg<String>? profileUrl,
    TfArg<String>? region,
    TfArg<String>? timezone,
    TfArg<String>? title,
    required TfArg<String> userName,
    TfArg<String>? userType,
    IdentitystoreUserAddresses? addresses,
    IdentitystoreUserEmails? emails,
    required IdentitystoreUserName name,
    IdentitystoreUserPhoneNumbers? phoneNumbers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'identity_store_id': identityStoreId,
           'locale': ?locale,
           'nickname': ?nickname,
           'preferred_language': ?preferredLanguage,
           'profile_url': ?profileUrl,
           'region': ?region,
           'timezone': ?timezone,
           'title': ?title,
           'user_name': userName,
           'user_type': ?userType,
           if (addresses != null)
             'addresses': TfArg.literal(addresses.encode()),
           if (emails != null) 'emails': TfArg.literal(emails.encode()),
           'name': TfArg.literal(name.encode()),
           if (phoneNumbers != null)
             'phone_numbers': TfArg.literal(phoneNumbers.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIdentitystoreUser>`.
  RefTo<AwsIdentitystoreUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `external_ids` attribute.
  TfRef<List<Map<String, Object?>>> get externalIds =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'external_ids');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `user_status` attribute.
  TfRef<String> get userStatus => TfRef.attribute<String>(this, 'user_status');
}
