// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_autonomous_database`.
const Set<String> _googleOracleDatabaseAutonomousDatabaseSensitive = <String>{};

/// Terraform `deletion_policy` for Autonomous Databases.
enum OracleDatabaseAutonomousDatabaseDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseAutonomousDatabaseDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Autonomous Database workload type.
enum OracleDatabaseAutonomousDatabaseDbWorkload implements TerraformEnum {
  dbWorkloadUnspecified('DB_WORKLOAD_UNSPECIFIED'),
  oltp('OLTP'),
  dw('DW'),
  ajd('AJD'),
  apex('APEX');

  const OracleDatabaseAutonomousDatabaseDbWorkload(this.terraformValue);
  @override
  final String terraformValue;
}

/// Autonomous Database license type.
enum OracleDatabaseAutonomousDatabaseLicenseType implements TerraformEnum {
  licenseTypeUnspecified('LICENSE_TYPE_UNSPECIFIED'),
  licenseIncluded('LICENSE_INCLUDED'),
  bringYourOwnLicense('BRING_YOUR_OWN_LICENSE');

  const OracleDatabaseAutonomousDatabaseLicenseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_autonomous_database`.
///
/// An AutonomousDatabase resource.
///
/// Oracle Autonomous Database on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Set [properties]
/// with `db_workload` and `license_type`. For private networking, wire
/// [odb_subnet] / [odb_network] to [GoogleOracleDatabaseOdbSubnet] refs.
final class GoogleOracleDatabaseAutonomousDatabase extends Resource {
  static const String tfType = 'google_oracle_database_autonomous_database';

  GoogleOracleDatabaseAutonomousDatabase({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> autonomousDatabaseId,
    TfArg<String>? database,
    TfArg<String>? displayName,
    TfArg<String>? adminPassword,
    TfArg<Map<String, dynamic>>? properties,
    TfArg<String>? odbSubnet,
    TfArg<String>? odbNetwork,
    TfArg<String>? network,
    TfArg<String>? cidr,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseAutonomousDatabaseDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'autonomous_database_id': autonomousDatabaseId,
           if (database != null) 'database': database,
           if (displayName != null) 'display_name': displayName,
           if (adminPassword != null) 'admin_password': adminPassword,
           if (properties != null) 'properties': properties,
           if (odbSubnet != null) 'odb_subnet': odbSubnet,
           if (odbNetwork != null) 'odb_network': odbNetwork,
           if (network != null) 'network': network,
           if (cidr != null) 'cidr': cidr,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseAutonomousDatabaseSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `disaster_recovery_supported_locations` attribute.
  TfRef<List<String>> get disasterRecoverySupportedLocations =>
      TfRef.attribute<List<String>>(
        this,
        'disaster_recovery_supported_locations',
      );

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `peer_autonomous_databases` attribute.
  TfRef<List<String>> get peerAutonomousDatabases =>
      TfRef.attribute<List<String>>(this, 'peer_autonomous_databases');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
