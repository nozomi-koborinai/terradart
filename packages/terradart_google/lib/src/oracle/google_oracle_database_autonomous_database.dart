// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

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
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? cidr,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseAutonomousDatabaseDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'autonomous_database_id': autonomousDatabaseId,
           'database': ?database,
           'display_name': ?displayName,
           'admin_password': ?adminPassword,
           'properties': ?properties,
           'odb_subnet': ?odbSubnet,
           'odb_network': ?odbNetwork,
           'network': ?network?.encodeAs('id'),
           'cidr': ?cidr,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseAutonomousDatabaseSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseAutonomousDatabase>`.
  RefTo<GoogleOracleDatabaseAutonomousDatabase> get ref => RefTo.of(this);

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

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPasswordRef =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `autonomous_database_id` attribute.
  TfRef<String> get autonomousDatabaseIdRef =>
      TfRef.attribute<String>(this, 'autonomous_database_id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidrRef => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetworkRef =>
      TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnetRef => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
