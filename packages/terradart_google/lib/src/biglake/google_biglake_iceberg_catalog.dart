// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_catalog`.
const Set<String> _googleBiglakeIcebergCatalogSensitive = <String>{};

/// Terraform `catalog_type` for [GoogleBiglakeIcebergCatalog].
enum BiglakeIcebergCatalogCatalogType implements TerraformEnum {
  catalogTypeGcsBucket('CATALOG_TYPE_GCS_BUCKET'),
  catalogTypeBiglake('CATALOG_TYPE_BIGLAKE'),
  catalogTypeFederated('CATALOG_TYPE_FEDERATED');

  const BiglakeIcebergCatalogCatalogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Terraform `credential_mode` for [GoogleBiglakeIcebergCatalog].
enum BiglakeIcebergCatalogCredentialMode implements TerraformEnum {
  credentialModeEndUser('CREDENTIAL_MODE_END_USER'),
  credentialModeVendedCredentials('CREDENTIAL_MODE_VENDED_CREDENTIALS');

  const BiglakeIcebergCatalogCredentialMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_biglake_iceberg_catalog`.
///
/// IcebergCatalogs are top-level containers for Apache Iceberg REST Catalog
/// served Namespaces and Tables.
///
/// BigLake Iceberg catalog backed by a GCS bucket
/// (`CATALOG_TYPE_GCS_BUCKET`).
///
/// [name] must equal the bucket name (not `gs://…`). Enable
/// `biglake.googleapis.com` via [GoogleProjectService] before apply.
/// Pair with [GoogleStorageBucket] + [GoogleBiglakeIcebergNamespace] /
/// [GoogleBiglakeIcebergTable].
final class GoogleBiglakeIcebergCatalog extends Resource {
  static const String tfType = 'google_biglake_iceberg_catalog';

  GoogleBiglakeIcebergCatalog({
    required super.localName,
    required TfArg<String> name,
    required TfArg<BiglakeIcebergCatalogCatalogType> catalogType,
    TfArg<BiglakeIcebergCatalogCredentialMode>? credentialMode,
    TfArg<String>? primaryLocation,
    TfArg<String>? defaultLocation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'catalog_type': catalogType,
           if (credentialMode != null) 'credential_mode': credentialMode,
           if (primaryLocation != null) 'primary_location': primaryLocation,
           if (defaultLocation != null) 'default_location': defaultLocation,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergCatalogSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `biglake_service_account` attribute.
  TfRef<String> get biglakeServiceAccount =>
      TfRef.attribute<String>(this, 'biglake_service_account');

  /// Reference to `biglake_service_account_id` attribute.
  TfRef<String> get biglakeServiceAccountId =>
      TfRef.attribute<String>(this, 'biglake_service_account_id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `replicas` attribute.
  TfRef<List<Map<String, Object?>>> get replicas =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replicas');

  /// Reference to `storage_regions` attribute.
  TfRef<List<String>> get storageRegions =>
      TfRef.attribute<List<String>>(this, 'storage_regions');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
