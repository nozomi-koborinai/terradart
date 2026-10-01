// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/google_oracle_database_exascale_db_storage_vault.dart';

/// Sensitive field paths for `google_oracle_database_exascale_db_storage_vault`.
const Set<String> _googleOracleDatabaseExascaleDbStorageVaultSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_exascale_db_storage_vault`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseExascaleDbStorageVault extends Data {
  static const String tfType =
      'google_oracle_database_exascale_db_storage_vault';

  DataGoogleOracleDatabaseExascaleDbStorageVault({
    required super.localName,
    required TfArg<String> exascaleDbStorageVaultId,
    required TfArg<String> location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'exascale_db_storage_vault_id': exascaleDbStorageVaultId,
           'location': location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseExascaleDbStorageVaultSensitive;

  /// A reference to the `google_oracle_database_exascale_db_storage_vault` this data source reads, for
  /// arguments typed `RefTo<GoogleOracleDatabaseExascaleDbStorageVault>`.
  RefTo<GoogleOracleDatabaseExascaleDbStorageVault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `exadata_infrastructure` attribute.
  TfRef<String> get exadataInfrastructure =>
      TfRef.attribute<String>(this, 'exadata_infrastructure');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `properties` attribute.
  TfRef<List<Map<String, Object?>>> get properties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'properties');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `exascale_db_storage_vault_id` attribute.
  TfRef<String> get exascaleDbStorageVaultId =>
      TfRef.attribute<String>(this, 'exascale_db_storage_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
