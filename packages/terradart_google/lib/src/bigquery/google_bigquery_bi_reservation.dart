// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;

/// Sensitive field paths for `google_bigquery_bi_reservation`.
const Set<String> _googleBigqueryBiReservationSensitive = <String>{};

/// Typed helper for the `preferred_tables` block of
/// `google_bigquery_bi_reservation` (derived from provider schema).
@immutable
final class BigqueryBiReservationPreferredTables {
  const BigqueryBiReservationPreferredTables({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': ?tableId?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_bi_reservation`.
///
/// Represents a BI Reservation.
final class GoogleBigqueryBiReservation extends Resource {
  static const String tfType = 'google_bigquery_bi_reservation';

  GoogleBigqueryBiReservation({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<num>? size,
    List<BigqueryBiReservationPreferredTables>? preferredTables,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'project': ?project,
           'size': ?size,
           if (preferredTables != null)
             'preferred_tables': TfArg.literal([
               for (final e in preferredTables) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryBiReservationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryBiReservation>`.
  RefTo<GoogleBigqueryBiReservation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');
}
