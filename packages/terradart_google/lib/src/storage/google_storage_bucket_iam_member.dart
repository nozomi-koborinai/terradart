// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_iam_member`.
const Set<String> _googleStorageBucketIamMemberSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a GCS bucket** —
/// i.e. who can read, write, or administer objects in this bucket. The
/// typical reader pattern is `roles/storage.objectViewer` for a SA that
/// only needs to fetch objects.
///
/// Picking the right `*_iam_*` variant:
///
/// - `*_iam_member` (this resource) — **additive**: grants ONE
///   (role, member) tuple. Does not touch other principals' bindings.
///   Safe in 95% of cases; prefer this unless you have a concrete reason
///   to use one of the authoritative variants below.
/// - `*_iam_binding` — **authoritative per role**: takes a list of
///   members and *replaces* the entire member list for that role. Will
///   silently erase any other principal previously bound to that role
///   on this storage bucket.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the bucket's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `bucket`: the target GCS bucket's `name` attribute (the bare
///   bucket name, e.g. `'my-app-assets-prod'`). Pass
///   `TfArg.ref(bucket.nameRef)`.
/// - `role`: role name, e.g. `'roles/storage.objectViewer'` (read-only
///   object access) or `'roles/storage.objectAdmin'` (full object CRUD).
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
///
/// Note: bucket-level IAM operates on object-grade roles only. The
/// legacy ACL world (`roles/storage.legacyBucketOwner`) is supported
/// but discouraged in favour of Uniform Bucket-Level Access.
final class GoogleStorageBucketIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_storage_bucket_iam_member';

  GoogleStorageBucketIamMember({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'bucket': bucket,
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleStorageBucketIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
