// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_db_system`.
const Set<String> _googleOracleDatabaseDbSystemSensitive = <String>{};

/// Terraform `deletion_policy` for DB Systems.
enum OracleDatabaseDbSystemDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseDbSystemDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// DB System database edition.
enum OracleDatabaseDbSystemDatabaseEdition implements TerraformEnum {
  standardEdition('STANDARD_EDITION'),
  enterpriseEdition('ENTERPRISE_EDITION');

  const OracleDatabaseDbSystemDatabaseEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// DB System license model.
enum OracleDatabaseDbSystemLicenseModel implements TerraformEnum {
  licenseIncluded('LICENSE_INCLUDED'),
  bringYourOwnLicense('BRING_YOUR_OWN_LICENSE');

  const OracleDatabaseDbSystemLicenseModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_db_system`.
///
/// A DbSystem Resource
///
/// Oracle Base Database DB System on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires
/// [odb_subnet] (and typically [GoogleOracleDatabaseOdbSubnet] refs) plus
/// [properties] with shape, edition, license model, and SSH public keys.
final class GoogleOracleDatabaseDbSystem extends Resource {
  static const String tfType = 'google_oracle_database_db_system';

  GoogleOracleDatabaseDbSystem({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dbSystemId,
    required TfArg<String> displayName,
    required TfArg<String> odbSubnet,
    TfArg<Map<String, dynamic>>? properties,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseDbSystemDeletionPolicy>? deletionPolicy,
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
           'db_system_id': dbSystemId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           'properties': ?properties,
           'odb_network': ?odbNetwork,
           'gcp_oracle_zone': ?gcpOracleZone,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseDbSystemSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseDbSystem>`.
  RefTo<GoogleOracleDatabaseDbSystem> get ref => RefTo.of(this);

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

  /// Reference to `db_system_id` attribute.
  TfRef<String> get dbSystemIdRef =>
      TfRef.attribute<String>(this, 'db_system_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZoneRef =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

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
