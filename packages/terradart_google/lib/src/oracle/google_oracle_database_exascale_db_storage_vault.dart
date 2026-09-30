// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Typed helper for the `properties` block of
/// `google_oracle_database_exascale_db_storage_vault` (derived from provider schema).
@immutable
final class OracleDatabaseExascaleDbStorageVaultProperties {
  const OracleDatabaseExascaleDbStorageVaultProperties({
    this.additionalFlashCachePercent,
    required this.exascaleDbStorageDetails,
    this.timeZone,
  });

  final TfArg<num>? additionalFlashCachePercent;

  final OracleDatabaseExascaleDbStorageVaultPropertiesExascaleDbStorageDetails
  exascaleDbStorageDetails;

  final OracleDatabaseExascaleDbStorageVaultPropertiesTimeZone? timeZone;

  Map<String, Object?> encode() => {
    'additional_flash_cache_percent': ?additionalFlashCachePercent?.toTfJson(),
    'exascale_db_storage_details': exascaleDbStorageDetails.encode(),
    'time_zone': ?timeZone?.encode(),
  };
}

/// Typed helper for the `properties.exascale_db_storage_details` block of
/// `google_oracle_database_exascale_db_storage_vault` (derived from provider schema).
@immutable
final class OracleDatabaseExascaleDbStorageVaultPropertiesExascaleDbStorageDetails {
  const OracleDatabaseExascaleDbStorageVaultPropertiesExascaleDbStorageDetails({
    required this.totalSizeGbs,
  });

  final TfArg<num> totalSizeGbs;

  Map<String, Object?> encode() => {'total_size_gbs': totalSizeGbs.toTfJson()};
}

/// Typed helper for the `properties.time_zone` block of
/// `google_oracle_database_exascale_db_storage_vault` (derived from provider schema).
@immutable
final class OracleDatabaseExascaleDbStorageVaultPropertiesTimeZone {
  const OracleDatabaseExascaleDbStorageVaultPropertiesTimeZone({
    this.id,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
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
    required OracleDatabaseExascaleDbStorageVaultProperties properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseExascaleDbStorageVaultDeletionPolicy>? deletionPolicy,
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
           'exascale_db_storage_vault_id': exascaleDbStorageVaultId,
           'display_name': displayName,
           'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseExascaleDbStorageVaultSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseExascaleDbStorageVault>`.
  RefTo<GoogleOracleDatabaseExascaleDbStorageVault> get ref => RefTo.of(this);

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
