// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_vm_cluster`.
const Set<String> _googleOracleDatabaseCloudVmClusterSensitive = <String>{};

/// Terraform `deletion_policy` for Cloud VM clusters.
enum OracleDatabaseCloudVmClusterDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseCloudVmClusterDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_cloud_vm_cluster`.
///
/// A CloudVmCluster resource.
///
/// Oracle Exadata VM cluster on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires
/// [exadata_infrastructure] from [GoogleOracleDatabaseCloudExadataInfrastructure].
/// For ODB networking, wire [odb_network], [odb_subnet], and
/// [backup_odb_subnet] to [GoogleOracleDatabaseOdbNetwork] / subnet refs.
final class GoogleOracleDatabaseCloudVmCluster extends Resource {
  static const String tfType = 'google_oracle_database_cloud_vm_cluster';

  GoogleOracleDatabaseCloudVmCluster({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> cloudVmClusterId,
    TfArg<String>? displayName,
    required TfArg<String> exadataInfrastructure,
    TfArg<String>? odbNetwork,
    TfArg<String>? odbSubnet,
    TfArg<String>? backupOdbSubnet,
    TfArg<Map<String, dynamic>>? properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseCloudVmClusterDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'cloud_vm_cluster_id': cloudVmClusterId,
           if (displayName != null) 'display_name': displayName,
           'exadata_infrastructure': exadataInfrastructure,
           if (odbNetwork != null) 'odb_network': odbNetwork,
           if (odbSubnet != null) 'odb_subnet': odbSubnet,
           if (backupOdbSubnet != null) 'backup_odb_subnet': backupOdbSubnet,
           if (properties != null) 'properties': properties,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudVmClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `identity_connector` attribute.
  TfRef<List<Map<String, Object?>>> get identityConnector =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity_connector');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
