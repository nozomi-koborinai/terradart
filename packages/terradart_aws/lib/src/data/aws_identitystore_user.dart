// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_user`.
const Set<String> _awsIdentitystoreUserSensitive = <String>{};

/// Typed helper for the `alternate_identifier` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class DataIdentitystoreUserAlternateIdentifier {
  const DataIdentitystoreUserAlternateIdentifier({
    this.externalId,
    this.uniqueAttribute,
  });

  final DataIdentitystoreUserAlternateIdentifierExternalId? externalId;

  final DataIdentitystoreUserAlternateIdentifierUniqueAttribute?
  uniqueAttribute;

  Map<String, Object?> encode() => {
    if (externalId != null) 'external_id': externalId!.encode(),
    if (uniqueAttribute != null) 'unique_attribute': uniqueAttribute!.encode(),
  };
}

/// Typed helper for the `alternate_identifier.external_id` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class DataIdentitystoreUserAlternateIdentifierExternalId {
  const DataIdentitystoreUserAlternateIdentifierExternalId({
    required this.id,
    required this.issuer,
  });

  final TfArg<String> id;

  final TfArg<String> issuer;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'issuer': issuer.toTfJson(),
  };
}

/// Typed helper for the `alternate_identifier.unique_attribute` block of
/// `aws_identitystore_user` (derived from provider schema).
@immutable
final class DataIdentitystoreUserAlternateIdentifierUniqueAttribute {
  const DataIdentitystoreUserAlternateIdentifierUniqueAttribute({
    required this.attributePath,
    required this.attributeValue,
  });

  final TfArg<String> attributePath;

  final TfArg<String> attributeValue;

  Map<String, Object?> encode() => {
    'attribute_path': attributePath.toTfJson(),
    'attribute_value': attributeValue.toTfJson(),
  };
}

/// Factory wrapper for `aws_identitystore_user`.
final class DataAwsIdentitystoreUser extends Data {
  static const String tfType = 'aws_identitystore_user';

  DataAwsIdentitystoreUser({
    required super.localName,
    required TfArg<String> identityStoreId,
    TfArg<String>? region,
    TfArg<String>? userId,
    DataIdentitystoreUserAlternateIdentifier? alternateIdentifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_store_id': identityStoreId,
           if (region != null) 'region': region,
           if (userId != null) 'user_id': userId,
           if (alternateIdentifier != null)
             'alternate_identifier': TfArg.literal(
               alternateIdentifier.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreUserSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addresses` attribute.
  TfRef<List<Map<String, Object?>>> get addresses =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'addresses');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `emails` attribute.
  TfRef<List<Map<String, Object?>>> get emails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'emails');

  /// Reference to `external_ids` attribute.
  TfRef<List<Map<String, Object?>>> get externalIds =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'external_ids');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `nickname` attribute.
  TfRef<String> get nickname => TfRef.attribute<String>(this, 'nickname');

  /// Reference to `phone_numbers` attribute.
  TfRef<List<Map<String, Object?>>> get phoneNumbers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'phone_numbers');

  /// Reference to `preferred_language` attribute.
  TfRef<String> get preferredLanguage =>
      TfRef.attribute<String>(this, 'preferred_language');

  /// Reference to `profile_url` attribute.
  TfRef<String> get profileUrl => TfRef.attribute<String>(this, 'profile_url');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');

  /// Reference to `user_status` attribute.
  TfRef<String> get userStatus => TfRef.attribute<String>(this, 'user_status');

  /// Reference to `user_type` attribute.
  TfRef<String> get userType => TfRef.attribute<String>(this, 'user_type');
}
