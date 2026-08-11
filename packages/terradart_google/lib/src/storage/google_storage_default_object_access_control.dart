// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_default_object_access_control`.
const Set<String> _googleStorageDefaultObjectAccessControlSensitive =
    <String>{};

/// Storage Default Object Access Control enum for `role`.
enum StorageDefaultObjectAccessControlRole implements TerraformEnum {
  owner('OWNER'),
  reader('READER');

  const StorageDefaultObjectAccessControlRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_default_object_access_control`.
///
/// The DefaultObjectAccessControls resources represent the Access Control Lists
/// (ACLs) applied to a new object within a Google Cloud Storage bucket when no
/// ACL was provided for that object. ACLs let you specify who has access to
/// your bucket contents and to what extent.
///
/// There are two roles that can be assigned to an entity:
///
/// READERs can get an object, though the acl property will not be revealed.
/// OWNERs are READERs, and they can get the acl property, update an object, and
/// call all objectAccessControls methods on the object. The owner of an object
/// is always an OWNER. For more information, see Access Control, with the
/// caveat that this API uses READER and OWNER instead of READ and FULL_CONTROL.
///
/// Default **object ACL** applied to new objects in a bucket. Requires
/// uniform bucket-level access **disabled**. Prefer IAM on modern buckets.
///
/// Example:
/// ```dart
/// GoogleStorageDefaultObjectAccessControl(
///   localName: 'default_reader',
///   bucket: TfArg.ref(legacy.nameRef),
///   entity: TfArg.ref(reader.iamMember),
///   role: TfArg.literal(StorageDefaultObjectAccessControlRole.reader),
/// );
/// ```
final class GoogleStorageDefaultObjectAccessControl extends Resource {
  static const String tfType = 'google_storage_default_object_access_control';

  GoogleStorageDefaultObjectAccessControl({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> entity,
    required TfArg<StorageDefaultObjectAccessControlRole> role,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'entity': entity,
           'role': role,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageDefaultObjectAccessControlSensitive;

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
