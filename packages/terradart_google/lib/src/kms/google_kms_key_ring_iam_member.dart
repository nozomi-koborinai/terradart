// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_iam_member`.
const Set<String> _googleKmsKeyRingIamMemberSensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a KMS key ring** —
/// i.e. who can manage the ring or create/list crypto keys under it.
/// Ring-scoped IAM is the right granularity when several keys share the
/// same operator group; bind a `roles/cloudkms.admin` here rather than
/// re-stating the same binding on every key in the ring. For runtime
/// encrypt/decrypt permissions, prefer the narrower
/// `google_kms_crypto_key_iam_member` on the individual key.
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
///   on this key ring.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the key ring's whole IAM policy. Will erase **all** existing
///   bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `keyRingId`: the target key ring's **fully-qualified resource path**,
///   i.e. `projects/{project}/locations/{location}/keyRings/{name}`.
///   Pass `TfArg.ref(keyRing.id)` rather than hand-formatting the string.
/// - `role`: role name, typically `'roles/cloudkms.admin'` (full ring
///   admin) or `'roles/cloudkms.viewer'` (read-only inventory).
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleKmsKeyRingIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_kms_key_ring_iam_member';

  GoogleKmsKeyRingIamMember({
    required super.localName,
    required TfArg<String> keyRingId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'key_ring_id': keyRingId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleKmsKeyRingIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
