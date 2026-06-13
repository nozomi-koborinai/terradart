// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_backup`.
const Set<String> _googleAlloydbBackupSensitive = <String>{};

/// Factory wrapper for `google_alloydb_backup`.
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_id': backupId,
           'cluster_name': clusterName,
           'location': location,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbBackupSensitive;

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
}
