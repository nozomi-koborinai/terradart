// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_filestore_backup`.
const Set<String> _googleFilestoreBackupSensitive = <String>{};

/// Factory wrapper for `google_filestore_backup`.
///
/// Cloud Filestore backup — point-in-time copy of a file share.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: backup ID (unique within the instance).
/// - [location]: region matching the source instance.
/// - [sourceInstance]: full instance name — `TfArg.ref(instance.id)`.
/// - [sourceFileShare]: export name from [GoogleFilestoreInstance].
///
/// Example:
/// ```dart
/// GoogleFilestoreBackup(
///   localName: 'share_backup',
///   name: TfArg.literal('share-backup-1'),
///   location: TfArg.literal('asia-northeast1'),
///   sourceInstance: TfArg.ref(nfs.id),
///   sourceFileShare: TfArg.literal('share1'),
/// );
/// ```
final class GoogleFilestoreBackup extends Resource {
  static const String tfType = 'google_filestore_backup';

  GoogleFilestoreBackup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> sourceInstance,
    required TfArg<String> sourceFileShare,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'source_instance': sourceInstance,
           'source_file_share': sourceFileShare,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFilestoreBackupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity_gb` attribute.
  TfRef<String> get capacityGb => TfRef.attribute<String>(this, 'capacity_gb');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `download_bytes` attribute.
  TfRef<String> get downloadBytes =>
      TfRef.attribute<String>(this, 'download_bytes');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `source_instance_tier` attribute.
  TfRef<String> get sourceInstanceTier =>
      TfRef.attribute<String>(this, 'source_instance_tier');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `storage_bytes` attribute.
  TfRef<String> get storageBytes =>
      TfRef.attribute<String>(this, 'storage_bytes');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
