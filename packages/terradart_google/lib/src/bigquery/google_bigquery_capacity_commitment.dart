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
enum BigqueryCapacityCommitmentPlan implements TerraformEnum {
  flex('FLEX'),
  trial('TRIAL'),
  monthly('MONTHLY'),
  annual('ANNUAL'),
  threeYear('THREE_YEAR');

  const BigqueryCapacityCommitmentPlan(this.terraformValue);
  @override
  final String terraformValue;
}

/// Renewal plan applied when the current commitment term ends.
/// Documented values: `NONE` (no renewal — commitment lapses),
/// `FLEX`, `MONTHLY`, `ANNUAL`, `THREE_YEAR`. (`TRIAL` is a
/// commitment-creation-only plan and is not a valid renewal target.)
enum BigqueryCapacityCommitmentRenewalPlan implements TerraformEnum {
  none('NONE'),
  flex('FLEX'),
  monthly('MONTHLY'),
  annual('ANNUAL'),
  threeYear('THREE_YEAR');

  const BigqueryCapacityCommitmentRenewalPlan(this.terraformValue);
  @override
  final String terraformValue;
}

/// BigQuery edition for
/// `google_bigquery_capacity_commitment.edition`. Determines feature
/// set and per-slot pricing. Documented values: `STANDARD`,
/// `ENTERPRISE`, `ENTERPRISE_PLUS`. Distinct Dart type from
/// `BigqueryReservationEdition` even though both wrap the same GCP
/// enum — keeping resource-scoped naming avoids cross-resource
/// coupling.
enum BigqueryCapacityCommitmentEdition implements TerraformEnum {
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const BigqueryCapacityCommitmentEdition(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_bigquery_capacity_commitment`.
///
/// Capacity commitment is a way to purchase compute capacity for BigQuery jobs
/// (in the form of slots) with some committed period of usage. Annual
/// commitments renew by default. Commitments can be removed after their
/// commitment end time passes.
///
/// In order to remove annual commitment, its plan needs to be changed to
/// monthly or flex first.
///
/// Commitments are sliced into [Reservation] buckets via
/// `google_bigquery_reservation`, which are then bound to projects /
/// folders / orgs via `google_bigquery_reservation_assignment`. The
/// [plan] determines the commitment term; [renewalPlan] picks what the
/// commitment converts to when the term ends. [edition] selects the
/// BigQuery feature tier (`STANDARD` / `ENTERPRISE` / `ENTERPRISE_PLUS`).
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
  static const String tfType = 'google_bigquery_capacity_commitment';

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
         terraformType: tfType,
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
  Set<String> get sensitiveFields => _googleBigqueryCapacityCommitmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `commitment_end_time` attribute.
  TfRef<String> get commitmentEndTime =>
      TfRef.attribute<String>(this, 'commitment_end_time');

  /// Reference to `commitment_start_time` attribute.
  TfRef<String> get commitmentStartTime =>
      TfRef.attribute<String>(this, 'commitment_start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
