// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_secret_manager_regional_secret`.
const Set<String> _googleSecretManagerRegionalSecretSensitive = <String>{};

/// Typed helper for the `customer_managed_encryption` block of
/// `google_secret_manager_regional_secret` (derived from provider schema).
@immutable
final class SecretManagerRegionalSecretCustomerManagedEncryption {
  const SecretManagerRegionalSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `rotation` block of
/// `google_secret_manager_regional_secret` (derived from provider schema).
@immutable
final class SecretManagerRegionalSecretRotation {
  const SecretManagerRegionalSecretRotation({
    this.nextRotationTime,
    this.rotationPeriod,
  });

  final TfArg<String>? nextRotationTime;

  final TfArg<String>? rotationPeriod;

  Map<String, Object?> encode() => {
    'next_rotation_time': ?nextRotationTime?.toTfJson(),
    'rotation_period': ?rotationPeriod?.toTfJson(),
  };
}

/// Typed helper for the `topics` block of
/// `google_secret_manager_regional_secret` (derived from provider schema).
@immutable
final class SecretManagerRegionalSecretTopics {
  const SecretManagerRegionalSecretTopics({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_secret_manager_regional_secret`.
///
/// A Regional Secret is a logical secret whose value and versions can be
/// created and accessed within a region only.
final class GoogleSecretManagerRegionalSecret extends Resource {
  static const String tfType = 'google_secret_manager_regional_secret';

  GoogleSecretManagerRegionalSecret(
    super.localName, {
    required TfArg<String> secretId,
    required TfArg<String> location,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? versionAliases,
    TfArg<String>? versionDestroyTtl,
    TfArg<String>? expireTime,
    TfArg<String>? ttl,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    TfArg<String>? secretType,
    SecretManagerRegionalSecretCustomerManagedEncryption?
    customerManagedEncryption,
    SecretManagerRegionalSecretRotation? rotation,
    List<SecretManagerRegionalSecretTopics>? topics,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           'location': location,
           'labels': ?labels,
           'annotations': ?annotations,
           'version_aliases': ?versionAliases,
           'version_destroy_ttl': ?versionDestroyTtl,
           'expire_time': ?expireTime,
           'ttl': ?ttl,
           'tags': ?tags,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
           'secret_type': ?secretType,
           if (customerManagedEncryption != null)
             'customer_managed_encryption': TfArg.literal(
               customerManagedEncryption.encode(),
             ),
           if (rotation != null) 'rotation': TfArg.literal(rotation.encode()),
           if (topics != null)
             'topics': TfArg.literal([for (final e in topics) e.encode()]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerRegionalSecret>`.
  RefTo<GoogleSecretManagerRegionalSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `secret_type` attribute.
  TfRef<String> get secretType => TfRef.attribute<String>(this, 'secret_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');

  /// Reference to `version_aliases` attribute.
  TfRef<Map<String, String>> get versionAliases =>
      TfRef.attribute<Map<String, String>>(this, 'version_aliases');

  /// Reference to `version_destroy_ttl` attribute.
  TfRef<String> get versionDestroyTtl =>
      TfRef.attribute<String>(this, 'version_destroy_ttl');
}
