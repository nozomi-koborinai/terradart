// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_supported_database_flags`.
const Set<String> _googleAlloydbSupportedDatabaseFlagsSensitive = <String>{};

/// Factory wrapper for `google_alloydb_supported_database_flags`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAlloydbSupportedDatabaseFlags extends Data {
  static const String tfType = 'google_alloydb_supported_database_flags';

  DataGoogleAlloydbSupportedDatabaseFlags({
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
      _googleAlloydbSupportedDatabaseFlagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supported_database_flags` attribute.
  TfRef<List<Map<String, Object?>>> get supportedDatabaseFlags =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'supported_database_flags',
      );
}
