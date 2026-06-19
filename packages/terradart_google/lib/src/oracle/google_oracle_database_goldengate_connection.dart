// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_connection`.
const Set<String> _googleOracleDatabaseGoldengateConnectionSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate connections.
enum OracleDatabaseGoldengateConnectionDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseGoldengateConnectionDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_goldengate_connection`.
///
/// GoldengateConnection is a resource that represents metadata to establish a
/// connection to a source or target data.
///
/// Oracle GoldenGate connection metadata for Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `connection_type`, `display_name`, and the type-specific connection
/// block (for example `generic_connection_properties`).
final class GoogleOracleDatabaseGoldengateConnection extends Resource {
  static const String tfType = 'google_oracle_database_goldengate_connection';

  GoogleOracleDatabaseGoldengateConnection({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> goldengateConnectionId,
    required TfArg<Map<String, dynamic>> properties,
    TfArg<String>? odbSubnet,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseGoldengateConnectionDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_connection_id': goldengateConnectionId,
           'properties': properties,
           if (odbSubnet != null) 'odb_subnet': odbSubnet,
           if (odbNetwork != null) 'odb_network': odbNetwork,
           if (gcpOracleZone != null) 'gcp_oracle_zone': gcpOracleZone,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateConnectionSensitive;

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

  /// Reference to `oci_url` attribute.
  TfRef<String> get ociUrl => TfRef.attribute<String>(this, 'oci_url');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
