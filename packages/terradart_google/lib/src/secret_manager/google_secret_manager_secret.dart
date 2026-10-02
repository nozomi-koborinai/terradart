// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_secret_manager_secret`.
const Set<String> _googleSecretManagerSecretSensitive = <String>{};

/// Exactly one of `user_managed`, `auto` on the `replication` block of `google_secret_manager_secret`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.userManaged(...)`.
sealed class SecretManagerSecretReplication {
  const SecretManagerSecretReplication();

  /// Sets `user_managed`.
  const factory SecretManagerSecretReplication.userManaged(
    SecretManagerSecretUserManaged userManaged,
  ) = SecretManagerSecretReplicationUserManaged;

  /// Sets `auto`.
  const factory SecretManagerSecretReplication.auto(
    SecretManagerSecretAuto auto,
  ) = SecretManagerSecretReplicationAuto;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SecretManagerSecretReplication.userManaged] choice: sets `user_managed`.
final class SecretManagerSecretReplicationUserManaged
    extends SecretManagerSecretReplication {
  const SecretManagerSecretReplicationUserManaged(this.userManaged);

  final SecretManagerSecretUserManaged userManaged;

  @internal
  @override
  String get blockKey => 'user_managed';

  @internal
  @override
  Map<String, Object?> encode() => {'user_managed': userManaged.encode()};
}

/// The [SecretManagerSecretReplication.auto] choice: sets `auto`.
final class SecretManagerSecretReplicationAuto
    extends SecretManagerSecretReplication {
  const SecretManagerSecretReplicationAuto(this.auto);

  final SecretManagerSecretAuto auto;

  @internal
  @override
  String get blockKey => 'auto';

  @internal
  @override
  Map<String, Object?> encode() => {'auto': auto.encode()};
}

/// Typed helper for the `replication.auto` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretAuto {
  const SecretManagerSecretAuto({this.customerManagedEncryption});

  final SecretManagerSecretCustomerManagedEncryption? customerManagedEncryption;

  @internal
  Map<String, Object?> encode() => {
    'customer_managed_encryption': ?customerManagedEncryption?.encode(),
  };
}

/// Typed helper for the `replication.auto.customer_managed_encryption` block of
/// `google_secret_manager_secret` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SecretManagerSecretCustomerManagedEncryption {
  const SecretManagerSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `replication.user_managed` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretUserManaged {
  const SecretManagerSecretUserManaged({required this.replicas});

  final List<SecretManagerSecretReplicas> replicas;

  @internal
  Map<String, Object?> encode() => {
    'replicas': [for (final e in replicas) e.encode()],
  };
}

/// Typed helper for the `replication.user_managed.replicas` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicas {
  const SecretManagerSecretReplicas({
    required this.location,
    this.customerManagedEncryption,
  });

  final TfArg<String> location;

  final SecretManagerSecretCustomerManagedEncryption? customerManagedEncryption;

  @internal
  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'customer_managed_encryption': ?customerManagedEncryption?.encode(),
  };
}

/// Typed helper for the `rotation` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretRotation {
  const SecretManagerSecretRotation({
    this.nextRotationTime,
    this.rotationPeriod,
  });

  final TfArg<String>? nextRotationTime;

  final TfArg<String>? rotationPeriod;

  @internal
  Map<String, Object?> encode() => {
    'next_rotation_time': ?nextRotationTime?.toTfJson(),
    'rotation_period': ?rotationPeriod?.toTfJson(),
  };
}

/// Typed helper for the `topics` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretTopics {
  const SecretManagerSecretTopics({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_secret_manager_secret`.
///
/// A Secret is a logical secret whose value and versions can be accessed.
final class GoogleSecretManagerSecret extends Resource {
  static const String tfType = 'google_secret_manager_secret';

  GoogleSecretManagerSecret(
    super.localName, {
    required TfArg<String> secretId,
    required SecretManagerSecretReplication replication,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? versionAliases,
    TfArg<String>? versionDestroyTtl,
    List<SecretManagerSecretTopics>? topics,
    TfArg<String>? expireTime,
    TfArg<String>? ttl,
    SecretManagerSecretRotation? rotation,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    TfArg<bool>? deletionProtection,
    TfArg<String>? secretType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           'replication': TfArg.literal(replication.encode()),
           'labels': ?labels,
           'annotations': ?annotations,
           'version_aliases': ?versionAliases,
           'version_destroy_ttl': ?versionDestroyTtl,
           if (topics != null)
             'topics': TfArg.literal([for (final e in topics) e.encode()]),
           'expire_time': ?expireTime,
           'ttl': ?ttl,
           if (rotation != null) 'rotation': TfArg.literal(rotation.encode()),
           'tags': ?tags,
           'project': ?project,
           'deletion_protection': ?deletionProtection,
           'secret_type': ?secretType,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecretManagerSecretSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecretManagerSecret>`.
  RefTo<GoogleSecretManagerSecret> get ref => RefTo.of(this);

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
