// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_capacity_commitment`.
const Set<String> _googleBigqueryCapacityCommitmentSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================
//
// The provider schema does not enumerate values for `plan`,
// `renewal_plan`, or `edition`; it stores them as free-form strings
// and points to the BigQuery Reservations API for the authoritative
// list. The enums below capture the documented values at the time of
// curation. New plans / editions ship as the BigQuery product
// evolves; callers can fall back to bypassing the enum (string-typed
// override) until this wrapper is regenerated.

/// Commitment plan for
/// `google_bigquery_capacity_commitment.plan`. Pinned to the values
/// documented by the BigQuery Reservations API (CommitmentPlan):
/// `FLEX`, `TRIAL`, `MONTHLY`, `ANNUAL`, `THREE_YEAR`. Schema does
/// not enumerate explicitly — see the field description for the
/// authoritative link.
enum BigqueryCapacityCommitmentPlan {
  flex('FLEX'),
  trial('TRIAL'),
  monthly('MONTHLY'),
  annual('ANNUAL'),
  threeYear('THREE_YEAR');

  const BigqueryCapacityCommitmentPlan(this.terraformValue);
  final String terraformValue;
}

/// Renewal plan applied when the current commitment term ends.
/// Documented values: `NONE` (no renewal — commitment lapses),
/// `FLEX`, `MONTHLY`, `ANNUAL`, `THREE_YEAR`. (`TRIAL` is a
/// commitment-creation-only plan and is not a valid renewal target.)
enum BigqueryCapacityCommitmentRenewalPlan {
  none('NONE'),
  flex('FLEX'),
  monthly('MONTHLY'),
  annual('ANNUAL'),
  threeYear('THREE_YEAR');

  const BigqueryCapacityCommitmentRenewalPlan(this.terraformValue);
  final String terraformValue;
}

/// BigQuery edition for
/// `google_bigquery_capacity_commitment.edition`. Determines feature
/// set and per-slot pricing. Documented values: `STANDARD`,
/// `ENTERPRISE`, `ENTERPRISE_PLUS`. Distinct Dart type from
/// `BigqueryReservationEdition` even though both wrap the same GCP
/// enum — keeping resource-scoped naming avoids cross-resource
/// coupling.
enum BigqueryCapacityCommitmentEdition {
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const BigqueryCapacityCommitmentEdition(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_bigquery_capacity_commitment` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A BigQuery **capacity commitment** purchases a fixed pool of slots
/// (the unit of BigQuery parallelism) for a billing term (`MONTHLY`,
/// `ANNUAL`, etc.). Commitments are sliced into [Reservation] buckets
/// via `google_bigquery_reservation`, which are then bound to
/// projects / folders / orgs via
/// `google_bigquery_reservation_assignment`. The [plan] determines the
/// commitment term; [renewalPlan] picks what the commitment converts
/// to when the term ends. [edition] selects the BigQuery feature tier
/// (`STANDARD` / `ENTERPRISE` / `ENTERPRISE_PLUS`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_capacity_commitment.`).
/// - `capacityCommitmentId`: human-readable commitment ID. Lowercase
///   alphanumeric + dashes; first and last char must not be a dash;
///   max 64 chars. (Terraform schema marks this `optional` and will
///   auto-generate when omitted, but the wrapper requires it for
///   predictable Terraform addresses.) Not preserved across splits or
///   merges of the commitment.
/// - `plan`: commitment term — pick the longest plan you intend to
///   honor (cancellation rules vary by plan).
/// - `slotCount`: number of slots in this commitment.
///
/// Example:
/// ```dart
/// final yearly = GoogleBigqueryCapacityCommitment(
///   localName: 'yearly',
///   capacityCommitmentId: TfArg.literal('yearly-1k'),
///   location: TfArg.literal('US'),
///   slotCount: TfArg.literal(1000),
///   plan: BigqueryCapacityCommitmentPlan.annual,
///   renewalPlan: BigqueryCapacityCommitmentRenewalPlan.annual,
///   edition: BigqueryCapacityCommitmentEdition.enterprise,
/// );
/// ```
final class GoogleBigqueryCapacityCommitment extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_capacity_commitment';

  GoogleBigqueryCapacityCommitment({
    required super.localName,
    required TfArg<String> capacityCommitmentId,
    TfArg<String>? location,
    required TfArg<num> slotCount,
    required TfArg<BigqueryCapacityCommitmentPlan> plan,
    TfArg<BigqueryCapacityCommitmentRenewalPlan>? renewalPlan,
    TfArg<BigqueryCapacityCommitmentEdition>? edition,
    TfArg<String>? enforceSingleAdminProjectPerOrg,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'capacity_commitment_id': capacityCommitmentId,
           if (location != null) 'location': location,
           'slot_count': slotCount,
           'plan': plan,
           if (renewalPlan != null) 'renewal_plan': renewalPlan,
           if (edition != null) 'edition': edition,
           if (enforceSingleAdminProjectPerOrg != null)
             'enforce_single_admin_project_per_org':
                 enforceSingleAdminProjectPerOrg,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleBigqueryCapacityCommitmentSensitive;

  /// Reference to `name` attribute — the full commitment resource path
  /// (`projects/{project}/locations/{location}/capacityCommitments/{id}`).
  /// Use this when wiring downstream resources that need the resolved
  /// API name.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (Terraform identifier).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute (e.g. `PENDING`, `ACTIVE`,
  /// `FAILED`). Useful for waiting on commitment activation in
  /// downstream resources.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
