// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_exadb_vm_cluster`.
const Set<String> _googleOracleDatabaseExadbVmClusterSensitive = <String>{};

/// Terraform `deletion_policy` for ExaDB VM clusters.
enum OracleDatabaseExadbVmClusterDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseExadbVmClusterDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_exadb_vm_cluster`.
///
/// Description
///
/// Oracle Exadata VM cluster (ExaDB) on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires client and
/// backup [odb_subnet] refs plus [properties] with Exascale vault wiring,
/// `shape_attribute`, and SSH public keys.
final class GoogleOracleDatabaseExadbVmCluster extends Resource {
  static const String tfType = 'google_oracle_database_exadb_vm_cluster';

  GoogleOracleDatabaseExadbVmCluster({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> exadbVmClusterId,
    required TfArg<String> displayName,
    required TfArg<String> odbSubnet,
    required TfArg<String> backupOdbSubnet,
    TfArg<String>? odbNetwork,
    required TfArg<Map<String, dynamic>> properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseExadbVmClusterDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'exadb_vm_cluster_id': exadbVmClusterId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           'backup_odb_subnet': backupOdbSubnet,
           if (odbNetwork != null) 'odb_network': odbNetwork,
           'properties': properties,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseExadbVmClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

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
