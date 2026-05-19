// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_reservation`.
const Set<String> _googleBigqueryReservationSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// BigQuery reservation edition for
/// `google_bigquery_reservation.edition`. Determines feature set and
/// billing tier. Documented values (per the field description):
/// `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`. The provider schema
/// does not enumerate values explicitly; new editions ship as the
/// BigQuery product evolves. Distinct from
/// `BigqueryCapacityCommitmentEdition` by design (the two resources
/// reference the same GCP enum but are kept separate at the Dart type
/// level to preserve resource-scoped naming).
enum BigqueryReservationEdition {
  standard('STANDARD'),
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const BigqueryReservationEdition(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Nested block helpers
// ===========================================================================

/// `autoscale` block — enables pay-as-you-go slot scaling on top of
/// the [slotCapacity] floor. [maxSlots] caps the dynamic upper bound;
/// the API reports the live `current_slots` value back through the
/// `autoscale.current_slots` computed attribute (not surfaced here —
/// read via the underlying state if needed).
@immutable
class BigqueryReservationAutoscale {
  const BigqueryReservationAutoscale({this.maxSlots});

  final TfArg<int>? maxSlots;

  Map<String, Object?> encode() => {
    if (maxSlots != null) 'max_slots': maxSlots!.toTfJson(),
  };
}

// ===========================================================================
// Factory
// ===========================================================================

/// Factory wrapper for `google_bigquery_reservation` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A BigQuery **reservation** carves out dedicated slot capacity (the
/// unit of BigQuery parallelism) within an admin project / location.
/// Reservations partition committed slot pools (see
/// `google_bigquery_capacity_commitment`) into named buckets that can
/// be associated with projects / folders / orgs via
/// `google_bigquery_reservation_assignment`. Choosing an [edition]
/// (`STANDARD`, `ENTERPRISE`, or `ENTERPRISE_PLUS`) determines the
/// feature set and billing tier; the inline [autoscale] block enables
/// pay-as-you-go slot scaling on top of the [slotCapacity] floor.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_reservation.`).
/// - `name`: reservation name. Alphanumeric + dashes only.
/// - `slotCapacity`: minimum slots dedicated to this reservation.
///   Queries may borrow idle slots from sibling reservations in the
///   same admin project when [ignoreIdleSlots] is false (default).
///
/// Example:
/// ```dart
/// final analyticsRes = GoogleBigqueryReservation(
///   localName: 'analytics',
///   name: TfArg.literal('analytics-pool'),
///   location: TfArg.literal('US'),
///   slotCapacity: TfArg.literal(500),
///   ignoreIdleSlots: TfArg.literal(false),
///   edition: BigqueryReservationEdition.enterprise,
///   autoscale: const BigqueryReservationAutoscale(
///     maxSlots: TfArgLiteral(1000),
///   ),
/// );
/// ```
final class GoogleBigqueryReservation extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_bigquery_reservation';

  GoogleBigqueryReservation({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    required TfArg<num> slotCapacity,
    TfArg<bool>? ignoreIdleSlots,
    TfArg<num>? concurrency,
    TfArg<BigqueryReservationEdition>? edition,
    TfArg<String>? secondaryLocation,
    TfArg<String>? reservationGroup,
    BigqueryReservationAutoscale? autoscale,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           'slot_capacity': slotCapacity,
           if (ignoreIdleSlots != null) 'ignore_idle_slots': ignoreIdleSlots,
           if (concurrency != null) 'concurrency': concurrency,
           if (edition != null) 'edition': edition,
           if (secondaryLocation != null)
             'secondary_location': secondaryLocation,
           if (reservationGroup != null) 'reservation_group': reservationGroup,
           if (autoscale != null)
             'autoscale': TfArg.literal([autoscale.encode()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleBigqueryReservationSensitive;

  /// Reference to `name` attribute. Use this when wiring
  /// `google_bigquery_reservation_assignment.reservation` to bind this
  /// reservation to a project / folder / org.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full reservation path
  /// `projects/{project}/locations/{location}/reservations/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
