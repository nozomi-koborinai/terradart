// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_iam_member`.
const Set<String> _googleComputeInstanceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a single Compute
/// Engine VM** — i.e. who can start/stop/SSH/serial-console this one
/// instance. Instance-scoped IAM is the right tool when you need to grant
/// one operator the ability to manage exactly one VM (a bastion, a
/// dedicated tenant box) without handing them project-wide
/// `roles/compute.instanceAdmin.v1`. For broader access patterns prefer
/// the project- or folder-level IAM resources.
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
///   on this VM instance.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the VM instance's whole IAM policy. Will erase **all** existing
///   bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `instanceName`: the target VM's `name` attribute (the short instance
///   name in the same project + zone, *not* a fully-qualified
///   `projects/.../instances/...` path). Pass `TfArg.ref(vm.nameRef)`.
/// - `role`: role name, e.g. `'roles/compute.instanceAdmin.v1'` (full
///   lifecycle control of this VM) or `'roles/compute.osLogin'` (SSH
///   only).
/// - `member`: principal in IAM v1 string form.
///
/// `zone` is optional and defaults to the provider zone; `project` is
/// optional and defaults to the provider project.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleComputeInstanceIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_instance_iam_member';

  GoogleComputeInstanceIamMember({
    required super.localName,
    required TfArg<String> instanceName,
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
           'instance_name': instanceName,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeInstanceIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
