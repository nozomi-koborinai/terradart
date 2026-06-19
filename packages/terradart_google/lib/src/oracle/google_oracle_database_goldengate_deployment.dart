// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_deployment`.
const Set<String> _googleOracleDatabaseGoldengateDeploymentSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate deployments (defaults to PREVENT).
enum OracleDatabaseGoldengateDeploymentDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseGoldengateDeploymentDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_goldengate_deployment`.
///
/// This resource helps to create a GoldengateDeployment which enables running
/// Oracle GoldenGate in Google Cloud.
///
/// Oracle GoldenGate deployment on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires an
/// [odb_subnet] in the target region and [properties] with deployment type
/// and OGG admin credentials.
final class GoogleOracleDatabaseGoldengateDeployment extends Resource {
  static const String tfType = 'google_oracle_database_goldengate_deployment';

  GoogleOracleDatabaseGoldengateDeployment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> goldengateDeploymentId,
    required TfArg<String> displayName,
    required TfArg<String> odbSubnet,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    required TfArg<Map<String, dynamic>> properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseGoldengateDeploymentDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_deployment_id': goldengateDeploymentId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           if (odbNetwork != null) 'odb_network': odbNetwork,
           if (gcpOracleZone != null) 'gcp_oracle_zone': gcpOracleZone,
           'properties': properties,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateDeploymentSensitive;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
