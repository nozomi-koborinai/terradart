// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_default_object_acl`.
const Set<String> _googleStorageDefaultObjectAclSensitive = <String>{};

/// Factory wrapper for `google_storage_default_object_acl`.
///
/// Authoritative **default object ACL** for new objects in a bucket.
/// Requires uniform bucket-level access **disabled**. Prefer IAM on
/// modern buckets. Do not mix with
/// [GoogleStorageDefaultObjectAccessControl] on the same bucket.
///
/// **Cost:** gcp-cost: Cloud Storage `95FF-2EF5-5EA1` list_skus
/// keyword=ACL → 0; Class A ops `4DBF-185F-A415` **$0.005/count after
/// 5k**. billing-behavior: ACL metadata — not existence-billed.
///
/// Example:
/// ```dart
/// GoogleStorageDefaultObjectAcl(
///   localName: 'legacy_default',
///   bucket: TfArg.ref(legacy.nameRef),
///   roleEntity: TfArg.literal([
///     'OWNER:project-owners-\${current.number}',
///   ]),
/// );
/// ```
final class GoogleStorageDefaultObjectAcl extends Resource {
  static const String tfType = 'google_storage_default_object_acl';

  GoogleStorageDefaultObjectAcl({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<List<String>>? roleEntity,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (roleEntity != null) 'role_entity': roleEntity,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageDefaultObjectAclSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
