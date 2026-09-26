// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_field_level_encryption_profile`.
const Set<String> _awsCloudfrontFieldLevelEncryptionProfileSensitive =
    <String>{};

/// Typed helper for the `encryption_entities` block of
/// `aws_cloudfront_field_level_encryption_profile` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionProfileEncryptionEntities {
  const CloudfrontFieldLevelEncryptionProfileEncryptionEntities({this.items});

  final List<CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItems>?
  items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': [for (final e in items!) e.encode()],
  };
}

/// Typed helper for the `encryption_entities.items` block of
/// `aws_cloudfront_field_level_encryption_profile` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItems {
  const CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItems({
    required this.providerId,
    required this.publicKeyId,
    required this.fieldPatterns,
  });

  final TfArg<String> providerId;

  final TfArg<String> publicKeyId;

  final CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItemsFieldPatterns
  fieldPatterns;

  Map<String, Object?> encode() => {
    'provider_id': providerId.toTfJson(),
    'public_key_id': publicKeyId.toTfJson(),
    'field_patterns': fieldPatterns.encode(),
  };
}

/// Typed helper for the `encryption_entities.items.field_patterns` block of
/// `aws_cloudfront_field_level_encryption_profile` (derived from provider schema).
@immutable
final class CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItemsFieldPatterns {
  const CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItemsFieldPatterns({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_field_level_encryption_profile`.
final class AwsCloudfrontFieldLevelEncryptionProfile extends Resource {
  static const String tfType = 'aws_cloudfront_field_level_encryption_profile';

  AwsCloudfrontFieldLevelEncryptionProfile({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> name,
    required CloudfrontFieldLevelEncryptionProfileEncryptionEntities
    encryptionEntities,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'name': name,
           'encryption_entities': TfArg.literal(encryptionEntities.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontFieldLevelEncryptionProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
