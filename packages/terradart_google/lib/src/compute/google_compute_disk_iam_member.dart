// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_disk_iam_member`.
const Set<String> _googleComputeDiskIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_disk_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a single Persistent
/// Disk** — i.e. who can read its bytes, take a snapshot, or attach it to
/// another VM. Disk-scoped IAM is the right granularity for cases like
/// "let this backup SA snapshot exactly these data disks" or "share one
/// disk with a partner project's VM without granting them project-wide
/// `roles/compute.storageAdmin`". For broader access patterns prefer the
/// project-level IAM resources.
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
///   on this persistent disk.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the disk's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: the target disk's `name` attribute (the short disk name in
///   the same project + zone). Pass `TfArg.ref(disk.nameRef)`.
/// - `role`: role name, e.g. `'roles/compute.storageAdmin'` (full disk
///   admin: snapshot, attach, resize) or a narrower custom role scoped
///   to the operations you need.
/// - `member`: principal in IAM v1 string form.
///
/// `zone` is optional and defaults to the provider zone; `project` is
/// optional and defaults to the provider project.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleComputeDiskIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_disk_iam_member';

  GoogleComputeDiskIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeDiskIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
