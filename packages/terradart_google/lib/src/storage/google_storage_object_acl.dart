// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_object_acl`.
const Set<String> _googleStorageObjectAclSensitive = <String>{};

/// Factory wrapper for `google_storage_object_acl`.
///
/// Authoritative **object ACL** (the full role/entity list or a canned
/// [predefinedAcl]). Requires uniform bucket-level access **disabled**.
/// Prefer IAM on modern buckets. Do not mix with
/// [GoogleStorageObjectAccessControl] on the same object — this resource
/// replaces the whole ACL.
///
/// **Cost:** gcp-cost: Cloud Storage `95FF-2EF5-5EA1` list_skus
/// keyword=ACL → 0; Class A ops `4DBF-185F-A415` **$0.005/count after
/// 5k**. billing-behavior: ACL metadata — not existence-billed.
///
/// Example:
/// ```dart
/// GoogleStorageObjectAcl(
///   localName: 'legacy_object_acl',
///   bucket: TfArg.ref(legacy.nameRef),
///   object: TfArg.literal('acl-marker.txt'),
///   predefinedAcl: TfArg.literal('private'),
/// );
/// ```
final class GoogleStorageObjectAcl extends Resource {
  static const String tfType = 'google_storage_object_acl';

  GoogleStorageObjectAcl({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> object,
    TfArg<String>? predefinedAcl,
    TfArg<List<String>>? roleEntity,
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
           'predefined_acl': ?predefinedAcl,
           'role_entity': ?roleEntity,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageObjectAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageObjectAcl>`.
  RefTo<GoogleStorageObjectAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
