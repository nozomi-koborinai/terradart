// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_acl`.
const Set<String> _googleStorageBucketAclSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_acl`.
///
/// Authoritative **bucket ACL** (the full role/entity list or a canned
/// [predefinedAcl]). Requires uniform bucket-level access **disabled**.
/// Prefer IAM ([GoogleStorageBucketIamMember]) on modern buckets. Do not
/// mix with [GoogleStorageBucketAccessControl] on the same bucket —
/// this resource replaces the whole ACL.
///
/// **Cost:** gcp-cost: Cloud Storage `95FF-2EF5-5EA1` list_skus
/// keyword=ACL → 0; Class A ops `4DBF-185F-A415` **$0.005/count after
/// 5k**. billing-behavior: ACL metadata — not existence-billed.
///
/// Example:
/// ```dart
/// GoogleStorageBucketAcl(
///   localName: 'legacy_acl',
///   bucket: TfArg.ref(legacy.nameRef),
///   predefinedAcl: TfArg.literal('private'),
/// );
/// ```
final class GoogleStorageBucketAcl extends Resource {
  static const String tfType = 'google_storage_bucket_acl';

  GoogleStorageBucketAcl({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? predefinedAcl,
    TfArg<List<String>>? roleEntity,
    TfArg<String>? defaultAcl,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (predefinedAcl != null) 'predefined_acl': predefinedAcl,
           if (roleEntity != null) 'role_entity': roleEntity,
           if (defaultAcl != null) 'default_acl': defaultAcl,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketAclSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
