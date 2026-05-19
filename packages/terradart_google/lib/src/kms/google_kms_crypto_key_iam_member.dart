// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key_iam_member`.
const Set<String> _googleKmsCryptoKeyIamMemberSensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a KMS crypto
/// key** — i.e. who can use this key for encryption/decryption or sign
/// operations. Typical use: bind `roles/cloudkms.cryptoKeyEncrypter` to
/// a workload SA so it can wrap/unwrap data via this key.
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
///   on this KMS crypto key.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the crypto key's whole IAM policy. Will erase **all** existing
///   bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `cryptoKeyId`: the target crypto key's **fully-qualified resource
///   path**, i.e.
///   `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{name}`.
///   Pass `TfArg.ref(cryptoKey.id)` rather than hand-formatting the
///   string.
/// - `role`: role name, typically
///   `'roles/cloudkms.cryptoKeyEncrypter'`,
///   `'roles/cloudkms.cryptoKeyDecrypter'`, or
///   `'roles/cloudkms.cryptoKeyEncrypterDecrypter'` (both).
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleKmsCryptoKeyIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_kms_crypto_key_iam_member';

  GoogleKmsCryptoKeyIamMember({
    required super.localName,
    required TfArg<String> cryptoKeyId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'crypto_key_id': cryptoKeyId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleKmsCryptoKeyIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
