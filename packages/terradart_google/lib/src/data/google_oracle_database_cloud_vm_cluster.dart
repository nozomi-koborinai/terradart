// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_vm_cluster`.
const Set<String> _googleOracleDatabaseCloudVmClusterSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_cloud_vm_cluster`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseCloudVmCluster extends Data {
  static const String tfType = 'google_oracle_database_cloud_vm_cluster';

  DataGoogleOracleDatabaseCloudVmCluster({
    required super.localName,
    required TfArg<String> cloudVmClusterId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_vm_cluster_id': cloudVmClusterId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudVmClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_odb_subnet` attribute.
  TfRef<String> get backupOdbSubnet =>
      TfRef.attribute<String>(this, 'backup_odb_subnet');

  /// Reference to `backup_subnet_cidr` attribute.
  TfRef<String> get backupSubnetCidr =>
      TfRef.attribute<String>(this, 'backup_subnet_cidr');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `exadata_infrastructure` attribute.
  TfRef<String> get exadataInfrastructure =>
      TfRef.attribute<String>(this, 'exadata_infrastructure');

  /// Reference to `exascale_db_storage_vault` attribute.
  TfRef<String> get exascaleDbStorageVault =>
      TfRef.attribute<String>(this, 'exascale_db_storage_vault');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `identity_connector` attribute.
  TfRef<List<Map<String, Object?>>> get identityConnector =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_connector');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `properties` attribute.
  TfRef<List<Map<String, Object?>>> get properties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'properties');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
