// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../filestore/google_filestore_instance.dart'
    show GoogleFilestoreInstance;

/// Sensitive field paths for `google_filestore_snapshot`.
const Set<String> _googleFilestoreSnapshotSensitive = <String>{};

/// Factory wrapper for `google_filestore_snapshot`.
///
/// A Google Cloud Filestore snapshot.
///
/// Cloud Filestore snapshot — lightweight share snapshot.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: snapshot ID (unique within the instance).
/// - [location]: region matching the source instance.
/// - [instance]: parent instance — `TfArg.ref(nfs.id)`.
///
/// Example:
/// ```dart
/// GoogleFilestoreSnapshot(
///   localName: 'share_snap',
///   name: TfArg.literal('share-snap-1'),
///   location: TfArg.literal('asia-northeast1'),
///   instance: nfs.ref,
/// );
/// ```
final class GoogleFilestoreSnapshot extends Resource {
  static const String tfType = 'google_filestore_snapshot';

  GoogleFilestoreSnapshot({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleFilestoreInstance> instance,
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
           'instance': instance.encodeAs('name'),
           'description': ?description,
           'labels': ?labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFilestoreSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFilestoreSnapshot>`.
  RefTo<GoogleFilestoreSnapshot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `filesystem_used_bytes` attribute.
  TfRef<String> get filesystemUsedBytes =>
      TfRef.attribute<String>(this, 'filesystem_used_bytes');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
