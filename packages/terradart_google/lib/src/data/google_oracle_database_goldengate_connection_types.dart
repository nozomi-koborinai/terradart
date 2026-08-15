// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_connection_types`.
const Set<String> _googleOracleDatabaseGoldengateConnectionTypesSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_goldengate_connection_types`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseGoldengateConnectionTypes extends Data {
  static const String tfType =
      'google_oracle_database_goldengate_connection_types';

  DataGoogleOracleDatabaseGoldengateConnectionTypes({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateConnectionTypesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `goldengate_connection_types` attribute.
  TfRef<List<Map<String, Object?>>> get goldengateConnectionTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'goldengate_connection_types',
      );
}
