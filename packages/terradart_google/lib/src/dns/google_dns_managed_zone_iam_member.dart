// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_managed_zone_iam_member`.
const Set<String> _googleDnsManagedZoneIamMemberSensitive = <String>{};

/// Factory wrapper for `google_dns_managed_zone_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a Cloud DNS
/// managed zone** — i.e. who can read or change the records inside this
/// one zone. Zone-scoped IAM is the right granularity when different
/// teams own different subdomains: grant `roles/dns.admin` on
/// `team-a.example.com.` to team A's SRE group while keeping
/// `team-b.example.com.` locked down. For read-only inspectors prefer
/// `roles/dns.reader`.
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
///   on this managed zone.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the zone's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `managedZone`: the target zone's `name` attribute (the short zone
///   name, *not* the DNS name with trailing dot — e.g. `'internal-corp'`,
///   not `'internal.corp.'`). Pass `TfArg.ref(zone.nameRef)`.
/// - `role`: role name, e.g. `'roles/dns.admin'` (full record CRUD) or
///   `'roles/dns.reader'` (read-only inspection).
/// - `member`: principal in IAM v1 string form.
///
/// `project` is optional and defaults to the provider project.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleDnsManagedZoneIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_dns_managed_zone_iam_member';

  GoogleDnsManagedZoneIamMember({
    required super.localName,
    required TfArg<String> managedZone,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'managed_zone': managedZone,
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleDnsManagedZoneIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
