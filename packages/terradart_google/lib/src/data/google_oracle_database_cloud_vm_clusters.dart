// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_vm_clusters`.
const Set<String> _googleOracleDatabaseCloudVmClustersSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_cloud_vm_clusters`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseCloudVmClusters extends Data {
  static const String tfType = 'google_oracle_database_cloud_vm_clusters';

  DataGoogleOracleDatabaseCloudVmClusters({
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
      _googleOracleDatabaseCloudVmClustersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_vm_clusters` attribute.
  TfRef<List<Map<String, Object?>>> get cloudVmClusters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_vm_clusters');
}
