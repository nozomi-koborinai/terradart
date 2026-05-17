// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret`.
const Set<String> _googleSecretManagerSecretSensitive = <String>{};

// ===========================================================================
// Replication (sealed: Auto | UserManaged) + nested helpers
// ===========================================================================

/// `replication` block on `google_secret_manager_secret`. Sealed so the
/// constructor exposes only valid replication choices.
sealed class Replication {
  const Replication();

  /// Auto replication. Optionally pin a CMEK.
  factory Replication.auto({
    CustomerManagedEncryption? customerManagedEncryption,
  }) = _AutoReplication;

  /// User-managed replication across explicit replicas.
  factory Replication.userManaged(List<Replica> replicas) =
      _UserManagedReplication;

  Map<String, Object?> encode();
}

@immutable
final class _AutoReplication extends Replication {
  const _AutoReplication({this.customerManagedEncryption});

  final CustomerManagedEncryption? customerManagedEncryption;

  @override
  Map<String, Object?> encode() => {
        'auto': <String, Object?>{
          if (customerManagedEncryption != null)
            'customer_managed_encryption': customerManagedEncryption!.encode(),
        },
      };
}

@immutable
final class _UserManagedReplication extends Replication {
  const _UserManagedReplication(this.replicas);

  final List<Replica> replicas;

  @override
  Map<String, Object?> encode() => {
        'user_managed': <String, Object?>{
          'replicas': replicas.map((r) => r.encode()).toList(),
        },
      };
}

/// `customer_managed_encryption` nested block (CMEK).
@immutable
class CustomerManagedEncryption {
  const CustomerManagedEncryption({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// One entry in `user_managed.replicas`.
@immutable
class Replica {
  const Replica({required this.location, this.customerManagedEncryption});

  final TfArg<String> location;
  final CustomerManagedEncryption? customerManagedEncryption;

  Map<String, Object?> encode() => {
        'location': location.toTfJson(),
        if (customerManagedEncryption != null)
          'customer_managed_encryption': customerManagedEncryption!.encode(),
      };
}

/// Pub/Sub `topics` entry under `google_secret_manager_secret.topics`.
@immutable
class SecretTopic {
  const SecretTopic({required this.name});

  /// Topic resource path, e.g. `TfArg.ref(notifyTopic.id)`.
  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// `rotation` nested block.
@immutable
class Rotation {
  const Rotation({this.nextRotationTime, this.rotationPeriod});

  final TfArg<String>? nextRotationTime;
  final TfArg<String>? rotationPeriod;

  Map<String, Object?> encode() => {
        if (nextRotationTime != null)
          'next_rotation_time': nextRotationTime!.toTfJson(),
        if (rotationPeriod != null)
          'rotation_period': rotationPeriod!.toTfJson(),
      };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_secret_manager_secret`.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `secretId`: GCP secret ID.
/// - `replication`: sealed [Replication] (`Replication.auto()` or
///   `Replication.userManaged([...])`).
final class GoogleSecretManagerSecret extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_secret_manager_secret';

  GoogleSecretManagerSecret({
    required super.localName,
    required TfArg<String> secretId,
    required Replication replication,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? versionAliases,
    TfArg<String>? versionDestroyTtl,
    List<SecretTopic>? topics,
    TfArg<String>? expireTime,
    TfArg<String>? ttl,
    Rotation? rotation,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    TfArg<bool>? deletionProtection,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'secret_id': secretId,
            'replication': TfArg.literal(replication.encode()),
            if (labels != null) 'labels': labels,
            if (annotations != null) 'annotations': annotations,
            if (versionAliases != null) 'version_aliases': versionAliases,
            if (versionDestroyTtl != null)
              'version_destroy_ttl': versionDestroyTtl,
            if (topics != null)
              'topics': TfArg.literal(topics.map((t) => t.encode()).toList()),
            if (expireTime != null) 'expire_time': expireTime,
            if (ttl != null) 'ttl': ttl,
            if (rotation != null) 'rotation': TfArg.literal(rotation.encode()),
            if (tags != null) 'tags': tags,
            if (project != null) 'project': project,
            if (deletionProtection != null)
              'deletion_protection': deletionProtection,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleSecretManagerSecretSensitive;

  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
