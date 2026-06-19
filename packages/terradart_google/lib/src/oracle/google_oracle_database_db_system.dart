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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'db_system_id': dbSystemId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           if (properties != null) 'properties': properties,
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
  Set<String> get sensitiveFields => _googleOracleDatabaseDbSystemSensitive;

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
