// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_bi_reservation`.
const Set<String> _googleBigqueryBiReservationSensitive = <String>{};

/// Factory wrapper for `google_bigquery_bi_reservation`.
final class GoogleBigqueryBiReservation extends Resource {
  static const String tfType = 'google_bigquery_bi_reservation';

  GoogleBigqueryBiReservation({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<num>? size,
    TfArg<List<Map<String, dynamic>>>? preferredTables,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           if (size != null) 'size': size,
           if (preferredTables != null) 'preferred_tables': preferredTables,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryBiReservationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
