// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_exadata_infrastructures`.
const Set<String> _googleOracleDatabaseCloudExadataInfrastructuresSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_cloud_exadata_infrastructures`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseCloudExadataInfrastructures extends Data {
  static const String tfType =
      'google_oracle_database_cloud_exadata_infrastructures';

  DataGoogleOracleDatabaseCloudExadataInfrastructures({
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
      _googleOracleDatabaseCloudExadataInfrastructuresSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_exadata_infrastructures` attribute.
  TfRef<List<Map<String, Object?>>> get cloudExadataInfrastructures =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cloud_exadata_infrastructures',
      );
}
