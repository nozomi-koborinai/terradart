// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_lite_reservation`.
const Set<String> _googlePubsubLiteReservationSensitive = <String>{};

/// Factory wrapper for `google_pubsub_lite_reservation`.
///
/// A named resource representing a shared pool of capacity.
///
/// Pub/Sub Lite **reservation** — reserved publish/subscribe throughput
/// capacity for Lite topics in a region.
///
/// **Cost / apply:** Pub/Sub Lite `3A1B-66C4-2BAE` Reservation Throughput
/// Capacity Allocated North America SKU `0E37-3B5B-8275` **$0.00625/h**
/// (Default `576D-ADC9-9995` **$0.008/h**) while the reservation exists;
/// destroy stops the charge. Debt-only on `terradart-validate`. **Never**
/// wire into apply-smoke.
///
/// Enable `pubsublite.googleapis.com` via [GoogleProjectService] before
/// apply. [throughputCapacity] is required (MiB/s units per product docs).
final class GooglePubsubLiteReservation extends Resource {
  static const String tfType = 'google_pubsub_lite_reservation';

  GooglePubsubLiteReservation({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> throughputCapacity,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'throughput_capacity': throughputCapacity,
           if (region != null) 'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubLiteReservationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
