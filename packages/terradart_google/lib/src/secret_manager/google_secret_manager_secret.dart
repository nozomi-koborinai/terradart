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
    SecretManagerSecretReplicationUserManaged userManaged,
  ) = SecretManagerSecretReplicationUserManagedChoice;

  /// Sets `auto`.
  const factory SecretManagerSecretReplication.auto(
    SecretManagerSecretReplicationAuto auto,
  ) = SecretManagerSecretReplicationAutoChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SecretManagerSecretReplication.userManaged] choice: sets `user_managed`.
final class SecretManagerSecretReplicationUserManagedChoice
    extends SecretManagerSecretReplication {
  const SecretManagerSecretReplicationUserManagedChoice(this.userManaged);

  final SecretManagerSecretReplicationUserManaged userManaged;

  @override
  String get blockKey => 'user_managed';

  @override
  Map<String, Object?> encode() => {'user_managed': userManaged.encode()};
}

/// The [SecretManagerSecretReplication.auto] choice: sets `auto`.
final class SecretManagerSecretReplicationAutoChoice
    extends SecretManagerSecretReplication {
  const SecretManagerSecretReplicationAutoChoice(this.auto);

  final SecretManagerSecretReplicationAuto auto;

  @override
  String get blockKey => 'auto';

  @override
  Map<String, Object?> encode() => {'auto': auto.encode()};
}

/// Typed helper for the `replication.auto` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicationAuto {
  const SecretManagerSecretReplicationAuto({this.customerManagedEncryption});

  final SecretManagerSecretReplicationAutoCustomerManagedEncryption?
  customerManagedEncryption;

  Map<String, Object?> encode() => {
    'customer_managed_encryption': ?customerManagedEncryption?.encode(),
  };
}

/// Typed helper for the `replication.auto.customer_managed_encryption` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicationAutoCustomerManagedEncryption {
  const SecretManagerSecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `replication.user_managed` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicationUserManaged {
  const SecretManagerSecretReplicationUserManaged({required this.replicas});

  final List<SecretManagerSecretReplicationUserManagedReplicas> replicas;

  Map<String, Object?> encode() => {
    'replicas': [for (final e in replicas) e.encode()],
  };
}

/// Typed helper for the `replication.user_managed.replicas` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicationUserManagedReplicas {
  const SecretManagerSecretReplicationUserManagedReplicas({
    required this.location,
    this.customerManagedEncryption,
  });

  final TfArg<String> location;

  final SecretManagerSecretReplicationUserManagedReplicasCustomerManagedEncryption?
  customerManagedEncryption;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'customer_managed_encryption': ?customerManagedEncryption?.encode(),
  };
}

/// Typed helper for the `replication.user_managed.replicas.customer_managed_encryption` block of
/// `google_secret_manager_secret` (derived from provider schema).
@immutable
final class SecretManagerSecretReplicationUserManagedReplicasCustomerManagedEncryption {
  const SecretManagerSecretReplicationUserManagedReplicasCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
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

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_secret_manager_secret`.
///
/// A Secret is a logical secret whose value and versions can be accessed.
final class GoogleSecretManagerSecret extends Resource {
  static const String tfType = 'google_secret_manager_secret';

  GoogleSecretManagerSecret({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
}
