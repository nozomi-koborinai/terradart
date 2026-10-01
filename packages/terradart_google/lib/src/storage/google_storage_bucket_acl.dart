// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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
///   bucket: legacy.ref,
///   predefinedAcl: TfArg.literal('private'),
/// );
/// ```
final class GoogleStorageBucketAcl extends Resource {
  static const String tfType = 'google_storage_bucket_acl';

  GoogleStorageBucketAcl({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    TfArg<String>? predefinedAcl,
    TfArg<List<String>>? roleEntity,
    TfArg<String>? defaultAcl,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'predefined_acl': ?predefinedAcl,
           'role_entity': ?roleEntity,
           'default_acl': ?defaultAcl,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucketAcl>`.
  RefTo<GoogleStorageBucketAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `default_acl` attribute.
  TfRef<String> get defaultAcl => TfRef.attribute<String>(this, 'default_acl');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `predefined_acl` attribute.
  TfRef<String> get predefinedAcl =>
      TfRef.attribute<String>(this, 'predefined_acl');

  /// Reference to `role_entity` attribute.
  TfRef<List<String>> get roleEntity =>
      TfRef.attribute<List<String>>(this, 'role_entity');
}
