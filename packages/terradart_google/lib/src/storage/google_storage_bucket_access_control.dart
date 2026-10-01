// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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
///   bucket: legacy.ref,
///   entity: .literal('allAuthenticatedUsers'),
///   role: TfArg.literal(StorageBucketAccessControlRole.reader),
/// );
/// ```
final class GoogleStorageBucketAccessControl extends Resource {
  static const String tfType = 'google_storage_bucket_access_control';

  GoogleStorageBucketAccessControl({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> entity,
    TfArg<StorageBucketAccessControlRole>? role,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'entity': entity,
           'role': ?role,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketAccessControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucketAccessControl>`.
  RefTo<GoogleStorageBucketAccessControl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `entity` attribute.
  TfRef<String> get entityRef => TfRef.attribute<String>(this, 'entity');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
