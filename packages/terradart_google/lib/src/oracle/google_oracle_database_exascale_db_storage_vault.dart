// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_exascale_db_storage_vault`.
const Set<String> _googleOracleDatabaseExascaleDbStorageVaultSensitive =
    <String>{};

/// Terraform `deletion_policy` for Exascale DB storage vaults.
enum OracleDatabaseExascaleDbStorageVaultDeletionPolicy
    implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseExascaleDbStorageVaultDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_oracle_database_exascale_db_storage_vault`.
///
/// An Exascale Storage Vault Resource
///
/// Oracle Exascale DB storage vault on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Pair with
/// [GoogleOracleDatabaseExadbVmCluster] via `properties.exascale_db_storage_vault`.
final class GoogleOracleDatabaseExascaleDbStorageVault extends Resource {
  static const String tfType =
      'google_oracle_database_exascale_db_storage_vault';

  GoogleOracleDatabaseExascaleDbStorageVault({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> exascaleDbStorageVaultId,
    required TfArg<String> displayName,
    required TfArg<Map<String, dynamic>> properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseExascaleDbStorageVaultDeletionPolicy>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'exascale_db_storage_vault_id': exascaleDbStorageVaultId,
           'display_name': displayName,
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
      _googleOracleDatabaseExascaleDbStorageVaultSensitive;

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
