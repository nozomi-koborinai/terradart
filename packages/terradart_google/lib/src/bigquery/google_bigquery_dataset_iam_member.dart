// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_dataset_iam_member`.
const Set<String> _googleBigqueryDatasetIamMemberSensitive = <String>{};

/// Factory wrapper for `google_bigquery_dataset_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a BigQuery
/// dataset** — i.e. who can read, write, or administer the dataset and
/// the tables it contains. Dataset-level IAM is the standard scope for
/// most data-platform setups; reach for `*_table_iam_member` only when
/// you need row-level isolation between tables in the same dataset.
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
///   on this dataset.
/// - `*_iam_policy` — **authoritative for the entire resource**: replaces
///   the dataset's whole IAM policy. Will erase **all** existing bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `datasetId`: target BigQuery dataset id (the short id, e.g.
///   `'analytics_prod'` — *not* the fully-qualified
///   `projects/.../datasets/...` path). Pass `TfArg.ref(dataset.datasetIdRef)`
///   to keep the wiring symbolic.
/// - `role`: role name, e.g. `'roles/bigquery.dataViewer'` (read-only on
///   the dataset's tables) or `'roles/bigquery.dataEditor'` (read+write).
/// - `member`: principal in IAM v1 string form.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleBigqueryDatasetIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_dataset_iam_member';

  GoogleBigqueryDatasetIamMember({
    required super.localName,
    required TfArg<String> datasetId,
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
            'role': role,
            'member': member,
            if (condition != null) 'condition': condition,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryDatasetIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
