// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_table_iam_member`.
const Set<String> _googleBigqueryTableIamMemberSensitive = <String>{};

/// Factory wrapper for `google_bigquery_table_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a BigQuery
/// table** — i.e. who can read or write rows in this specific table.
/// Table-level IAM is the finer-grained alternative to dataset-level
/// IAM and exists for the case where two tables in the same dataset
/// must be readable by disjoint principals (e.g. a `pii_*` table
/// restricted to a sub-team).
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
///   on this BigQuery table.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the table's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `datasetId`: parent dataset's short id.
/// - `tableId`: target table's short id (not the
///   `projects/.../tables/...` path). Pass `TfArg.ref(table.tableIdRef)`.
/// - `role`: role name, e.g. `'roles/bigquery.dataViewer'` for read-only
///   access to this table's rows.
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleBigqueryTableIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_table_iam_member';

  GoogleBigqueryTableIamMember({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> tableId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'dataset_id': datasetId,
            'table_id': tableId,
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryTableIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
