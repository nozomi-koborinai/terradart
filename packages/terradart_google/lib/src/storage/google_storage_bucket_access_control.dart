// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_access_control`.
const Set<String> _googleStorageBucketAccessControlSensitive = <String>{};

/// Storage Bucket Access Control enum for `role`.
enum StorageBucketAccessControlRole implements TerraformEnum {
  owner('OWNER'),
  reader('READER'),
  writer('WRITER');

  const StorageBucketAccessControlRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_bucket_access_control`.
///
/// Bucket ACLs can be managed authoritatively using the
/// [`storage_bucket_acl`](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_acl)
/// resource. Do not use these two resources in conjunction to manage the same
/// bucket.
///
/// The BucketAccessControls resource manages the Access Control List (ACLs) for
/// a single entity/role pairing on a bucket. ACLs let you specify who has
/// access to your data and to what extent.
///
/// There are three roles that can be assigned to an entity:
///
/// READERs can get the bucket, though no acl property will be returned, and
/// list the bucket's objects. WRITERs are READERs, and they can insert objects
/// into the bucket and delete the bucket's objects. OWNERs are WRITERs, and
/// they can get the acl property of a bucket, update a bucket, and call all
/// BucketAccessControls methods on the bucket. For more information, see Access
/// Control, with the caveat that this API uses READER, WRITER, and OWNER
/// instead of READ, WRITE, and FULL_CONTROL.
///
/// Fine-grained **bucket ACL** entry (one entity + optional role). Requires a
/// bucket with uniform bucket-level access **disabled** — HNS buckets cannot
/// use this resource. Prefer IAM ([GoogleStorageBucketIamMember]) on modern
/// buckets.
///
/// Example:
/// ```dart
/// GoogleStorageBucketAccessControl(
///   localName: 'legacy_reader',
///   bucket: TfArg.ref(legacy.nameRef),
///   entity: TfArg.ref(reader.iamMember),
///   role: TfArg.literal(StorageBucketAccessControlRole.reader),
/// );
/// ```
final class GoogleStorageBucketAccessControl extends Resource {
  static const String tfType = 'google_storage_bucket_access_control';

  GoogleStorageBucketAccessControl({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> entity,
    TfArg<StorageBucketAccessControlRole>? role,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'entity': entity,
           if (role != null) 'role': role,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketAccessControlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');
}
