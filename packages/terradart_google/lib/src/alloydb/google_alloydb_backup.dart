// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_alloydb_backup`.
const Set<String> _googleAlloydbBackupSensitive = <String>{};

/// Typed helper for the `encryption_config` block of
/// `google_alloydb_backup` (derived from provider schema).
@immutable
final class AlloydbBackupEncryptionConfig {
  const AlloydbBackupEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_alloydb_backup`.
///
/// An AlloyDB Backup.
///
/// AlloyDB backup — on-demand or scheduled backup of a cluster.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [backupId]: short backup ID.
/// - [clusterName]: full cluster resource name — `TfArg.ref(cluster.id)`.
/// - [location]: region matching the cluster.
///
/// Example:
/// ```dart
/// GoogleAlloydbBackup(
///   localName: 'nightly',
///   backupId: TfArg.literal('nightly-backup'),
///   clusterName: TfArg.ref(alloyCluster.id),
///   location: TfArg.literal('asia-northeast1'),
/// );
/// ```
final class GoogleAlloydbBackup extends Resource {
  static const String tfType = 'google_alloydb_backup';

  GoogleAlloydbBackup({
    required super.localName,
    required TfArg<String> backupId,
    required TfArg<String> clusterName,
    required TfArg<String> location,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<String>? project,
    TfArg<String>? type,
    AlloydbBackupEncryptionConfig? encryptionConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_id': backupId,
           'cluster_name': clusterName,
           'location': location,
           'labels': ?labels,
           'annotations': ?annotations,
           'description': ?description,
           'display_name': ?displayName,
           'project': ?project,
           'type': ?type,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAlloydbBackup>`.
  RefTo<GoogleAlloydbBackup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_uid` attribute.
  TfRef<String> get clusterUid => TfRef.attribute<String>(this, 'cluster_uid');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_info` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_info');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expiry_quantity` attribute.
  TfRef<List<Map<String, Object?>>> get expiryQuantity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'expiry_quantity');

  /// Reference to `expiry_time` attribute.
  TfRef<String> get expiryTime => TfRef.attribute<String>(this, 'expiry_time');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `size_bytes` attribute.
  TfRef<String> get sizeBytes => TfRef.attribute<String>(this, 'size_bytes');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `backup_id` attribute.
  TfRef<String> get backupIdRef => TfRef.attribute<String>(this, 'backup_id');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterNameRef =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
