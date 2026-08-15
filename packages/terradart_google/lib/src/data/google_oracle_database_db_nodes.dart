// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_db_nodes`.
const Set<String> _googleOracleDatabaseDbNodesSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_db_nodes`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseDbNodes extends Data {
  static const String tfType = 'google_oracle_database_db_nodes';

  DataGoogleOracleDatabaseDbNodes({
    required super.localName,
    required TfArg<String> cloudVmCluster,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_vm_cluster': cloudVmCluster,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseDbNodesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get dbNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'db_nodes');
}
