// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_object_access_control`.
const Set<String> _googleStorageObjectAccessControlSensitive = <String>{};

/// Storage Object Access Control enum for `role`.
extension type const StorageObjectAccessControlRole._(TfArg<String> _)
    implements TfArg<String> {
  StorageObjectAccessControlRole.variable(String name)
    : this._(TfArg.variable(name));
  StorageObjectAccessControlRole.expression(String template)
    : this._(TfArg.expression(template));
  const StorageObjectAccessControlRole.arg(TfArg<String> arg) : this._(arg);

  static const owner = StorageObjectAccessControlRole._(TfArgLiteral('OWNER'));
  static const reader = StorageObjectAccessControlRole._(
    TfArgLiteral('READER'),
  );

  static const List<StorageObjectAccessControlRole> values = [owner, reader];
}

/// Factory wrapper for `google_storage_object_access_control`.
///
/// The ObjectAccessControls resources represent the Access Control Lists (ACLs)
/// for objects within Google Cloud Storage. ACLs let you specify who has access
/// to your data and to what extent.
///
/// There are two roles that can be assigned to an entity:
///
/// READERs can get an object, though the acl property will not be revealed.
/// OWNERs are READERs, and they can get the acl property, update an object, and
/// call all objectAccessControls methods on the object. The owner of an object
/// is always an OWNER. For more information, see Access Control, with the
/// caveat that this API uses READER and OWNER instead of READ and FULL_CONTROL.
///
/// Fine-grained **object ACL** entry on one object. Requires a bucket with
/// uniform bucket-level access **disabled**. Prefer IAM on modern buckets.
///
/// Example:
/// ```dart
/// GoogleStorageObjectAccessControl(
///   'object_reader',
///   bucket: legacy.ref,
///   object: TfArg.literal('config/app.json'),
///   entity: .literal('allAuthenticatedUsers'),
///   role: StorageObjectAccessControlRole.reader,
/// );
/// ```
final class GoogleStorageObjectAccessControl extends Resource {
  static const String tfType = 'google_storage_object_access_control';

  GoogleStorageObjectAccessControl(
    super.localName, {
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> object,
    required TfArg<String> entity,
    required StorageObjectAccessControlRole role,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'object': object,
           'entity': entity,
           'role': role,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageObjectAccessControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageObjectAccessControl>`.
  RefTo<GoogleStorageObjectAccessControl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `entity_id` attribute.
  TfRef<String> get entityId => TfRef.attribute<String>(this, 'entity_id');

  /// Reference to `generation` attribute.
  TfRef<num> get generation => TfRef.attribute<num>(this, 'generation');

  /// Reference to `project_team` attribute.
  TfRef<List<Map<String, Object?>>> get projectTeam =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'project_team');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `entity` attribute.
  TfRef<String> get entity => TfRef.attribute<String>(this, 'entity');

  /// Reference to `object` attribute.
  TfRef<String> get object => TfRef.attribute<String>(this, 'object');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
