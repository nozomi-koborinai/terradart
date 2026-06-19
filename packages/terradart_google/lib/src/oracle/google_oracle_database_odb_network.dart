// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_odb_network`.
const Set<String> _googleOracleDatabaseOdbNetworkSensitive = <String>{};

/// Terraform `deletion_policy` for ODB networks.
enum OracleDatabaseOdbNetworkDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseOdbNetworkDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_odb_network`.
///
/// An OdbNetwork resource which represents a private network providing
/// connectivity between OracleDatabase resources and Google Cloud VPC network.
///
/// Oracle Database@Google Cloud ODB network — VPC attachment for ODB subnets.
///
/// Enable `oracledatabase.googleapis.com` before apply. Pair with
/// [GoogleOracleDatabaseOdbSubnet] under the same [location].
final class GoogleOracleDatabaseOdbNetwork extends Resource {
  static const String tfType = 'google_oracle_database_odb_network';

  GoogleOracleDatabaseOdbNetwork({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> odbNetworkId,
    required TfArg<String> network,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseOdbNetworkDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'odb_network_id': odbNetworkId,
           'network': network,
           if (gcpOracleZone != null) 'gcp_oracle_zone': gcpOracleZone,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbNetworkSensitive;

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

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
