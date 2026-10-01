// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../filestore/google_filestore_instance.dart'
    show GoogleFilestoreInstance;

/// Sensitive field paths for `google_filestore_backup`.
const Set<String> _googleFilestoreBackupSensitive = <String>{};

/// Factory wrapper for `google_filestore_backup`.
///
/// A Google Cloud Filestore backup.
///
/// Cloud Filestore backup — point-in-time copy of a file share.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: backup ID (unique within the instance).
/// - [location]: region matching the source instance.
/// - [sourceInstance]: full instance name — `instance.id`.
/// - [sourceFileShare]: export name from [GoogleFilestoreInstance].
///
/// Example:
/// ```dart
/// GoogleFilestoreBackup(
///   'share_backup',
///   name: TfArg.literal('share-backup-1'),
///   location: TfArg.literal('asia-northeast1'),
///   sourceInstance: nfs.ref,
///   sourceFileShare: TfArg.literal('share1'),
/// );
/// ```
final class GoogleFilestoreBackup extends Resource {
  static const String tfType = 'google_filestore_backup';

  GoogleFilestoreBackup(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleFilestoreInstance> sourceInstance,
    required TfArg<String> sourceFileShare,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'source_instance': sourceInstance.encodeAs('id'),
           'source_file_share': sourceFileShare,
           'description': ?description,
           'labels': ?labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFilestoreBackupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFilestoreBackup>`.
  RefTo<GoogleFilestoreBackup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_file_share` attribute.
  TfRef<String> get sourceFileShare =>
      TfRef.attribute<String>(this, 'source_file_share');

  /// Reference to `source_instance` attribute.
  TfRef<String> get sourceInstance =>
      TfRef.attribute<String>(this, 'source_instance');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
