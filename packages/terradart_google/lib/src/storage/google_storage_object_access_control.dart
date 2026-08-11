// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_object_access_control`.
const Set<String> _googleStorageObjectAccessControlSensitive = <String>{};

/// Storage Object Access Control enum for `role`.
enum StorageObjectAccessControlRole implements TerraformEnum {
  owner('OWNER'),
  reader('READER');

  const StorageObjectAccessControlRole(this.terraformValue);
  @override
  final String terraformValue;
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
///   localName: 'object_reader',
///   bucket: TfArg.ref(legacy.nameRef),
///   object: TfArg.literal('config/app.json'),
///   entity: TfArg.ref(reader.iamMember),
///   role: TfArg.literal(StorageObjectAccessControlRole.reader),
/// );
/// ```
final class GoogleStorageObjectAccessControl extends Resource {
  static const String tfType = 'google_storage_object_access_control';

  GoogleStorageObjectAccessControl({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> object,
    required TfArg<String> entity,
    required TfArg<StorageObjectAccessControlRole> role,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'object': object,
           'entity': entity,
           'role': role,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageObjectAccessControlSensitive;

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
}
