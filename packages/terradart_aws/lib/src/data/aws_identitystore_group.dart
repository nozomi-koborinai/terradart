// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_group`.
const Set<String> _awsIdentitystoreGroupSensitive = <String>{};

/// Typed helper for the `alternate_identifier` block of
/// `aws_identitystore_group` (derived from provider schema).
@immutable
final class DataIdentitystoreGroupAlternateIdentifier {
  const DataIdentitystoreGroupAlternateIdentifier({
    this.externalId,
    this.uniqueAttribute,
  });

  final DataIdentitystoreGroupAlternateIdentifierExternalId? externalId;

  final DataIdentitystoreGroupAlternateIdentifierUniqueAttribute?
  uniqueAttribute;

  Map<String, Object?> encode() => {
    if (externalId != null) 'external_id': externalId!.encode(),
    if (uniqueAttribute != null) 'unique_attribute': uniqueAttribute!.encode(),
  };
}

/// Typed helper for the `alternate_identifier.external_id` block of
/// `aws_identitystore_group` (derived from provider schema).
@immutable
final class DataIdentitystoreGroupAlternateIdentifierExternalId {
  const DataIdentitystoreGroupAlternateIdentifierExternalId({
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
/// `aws_identitystore_group` (derived from provider schema).
@immutable
final class DataIdentitystoreGroupAlternateIdentifierUniqueAttribute {
  const DataIdentitystoreGroupAlternateIdentifierUniqueAttribute({
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

/// Factory wrapper for `aws_identitystore_group`.
final class DataAwsIdentitystoreGroup extends Data {
  static const String tfType = 'aws_identitystore_group';

  DataAwsIdentitystoreGroup({
    required super.localName,
    TfArg<String>? groupId,
    required TfArg<String> identityStoreId,
    TfArg<String>? region,
    DataIdentitystoreGroupAlternateIdentifier? alternateIdentifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (groupId != null) 'group_id': groupId,
           'identity_store_id': identityStoreId,
           if (region != null) 'region': region,
           if (alternateIdentifier != null)
             'alternate_identifier': TfArg.literal(
               alternateIdentifier.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `external_ids` attribute.
  TfRef<List<Map<String, Object?>>> get externalIds =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'external_ids');
}
