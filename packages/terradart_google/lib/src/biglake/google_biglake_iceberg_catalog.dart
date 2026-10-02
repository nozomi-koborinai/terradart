// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_catalog`.
const Set<String> _googleBiglakeIcebergCatalogSensitive = <String>{};

/// Terraform `catalog_type` for [GoogleBiglakeIcebergCatalog].
extension type const BiglakeIcebergCatalogType._(TfArg<String> _)
    implements TfArg<String> {
  BiglakeIcebergCatalogType.variable(String name)
    : this._(TfArg.variable(name));
  BiglakeIcebergCatalogType.expression(String template)
    : this._(TfArg.expression(template));
  const BiglakeIcebergCatalogType.arg(TfArg<String> arg) : this._(arg);

  static const catalogTypeGcsBucket = BiglakeIcebergCatalogType._(
    TfArgLiteral('CATALOG_TYPE_GCS_BUCKET'),
  );
  static const catalogTypeBiglake = BiglakeIcebergCatalogType._(
    TfArgLiteral('CATALOG_TYPE_BIGLAKE'),
  );
  static const catalogTypeFederated = BiglakeIcebergCatalogType._(
    TfArgLiteral('CATALOG_TYPE_FEDERATED'),
  );

  static const List<BiglakeIcebergCatalogType> values = [
    catalogTypeGcsBucket,
    catalogTypeBiglake,
    catalogTypeFederated,
  ];
}

/// Terraform `credential_mode` for [GoogleBiglakeIcebergCatalog].
extension type const BiglakeIcebergCatalogCredentialMode._(TfArg<String> _)
    implements TfArg<String> {
  BiglakeIcebergCatalogCredentialMode.variable(String name)
    : this._(TfArg.variable(name));
  BiglakeIcebergCatalogCredentialMode.expression(String template)
    : this._(TfArg.expression(template));
  const BiglakeIcebergCatalogCredentialMode.arg(TfArg<String> arg)
    : this._(arg);

  static const credentialModeEndUser = BiglakeIcebergCatalogCredentialMode._(
    TfArgLiteral('CREDENTIAL_MODE_END_USER'),
  );
  static const credentialModeVendedCredentials =
      BiglakeIcebergCatalogCredentialMode._(
        TfArgLiteral('CREDENTIAL_MODE_VENDED_CREDENTIALS'),
      );

  static const List<BiglakeIcebergCatalogCredentialMode> values = [
    credentialModeEndUser,
    credentialModeVendedCredentials,
  ];
}

/// Typed helper for the `federated_catalog_options` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogFederatedCatalogOptions {
  const BiglakeIcebergCatalogFederatedCatalogOptions({
    this.secretName,
    this.serviceDirectoryName,
    this.glueCatalogInfo,
    this.refreshOptions,
    this.unityCatalogInfo,
  });

  final TfArg<String>? secretName;

  final TfArg<String>? serviceDirectoryName;

  final BiglakeIcebergCatalogGlueCatalogInfo? glueCatalogInfo;

  final BiglakeIcebergCatalogRefreshOptions? refreshOptions;

  final BiglakeIcebergCatalogUnityCatalogInfo? unityCatalogInfo;

  @internal
  Map<String, Object?> encode() => {
    'secret_name': ?secretName?.toTfJson(),
    'service_directory_name': ?serviceDirectoryName?.toTfJson(),
    'glue_catalog_info': ?glueCatalogInfo?.encode(),
    'refresh_options': ?refreshOptions?.encode(),
    'unity_catalog_info': ?unityCatalogInfo?.encode(),
  };
}

/// Typed helper for the `federated_catalog_options.glue_catalog_info` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogGlueCatalogInfo {
  const BiglakeIcebergCatalogGlueCatalogInfo({
    required this.awsRegion,
    required this.awsRoleArn,
    required this.warehouse,
  });

  final TfArg<String> awsRegion;

  final TfArg<String> awsRoleArn;

  final TfArg<String> warehouse;

  @internal
  Map<String, Object?> encode() => {
    'aws_region': awsRegion.toTfJson(),
    'aws_role_arn': awsRoleArn.toTfJson(),
    'warehouse': warehouse.toTfJson(),
  };
}

/// Typed helper for the `federated_catalog_options.refresh_options` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogRefreshOptions {
  const BiglakeIcebergCatalogRefreshOptions({
    this.refreshSchedule,
    this.refreshScope,
  });

  final BiglakeIcebergCatalogRefreshSchedule? refreshSchedule;

  final BiglakeIcebergCatalogRefreshScope? refreshScope;

  @internal
  Map<String, Object?> encode() => {
    'refresh_schedule': ?refreshSchedule?.encode(),
    'refresh_scope': ?refreshScope?.encode(),
  };
}

/// Typed helper for the `federated_catalog_options.refresh_options.refresh_schedule` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogRefreshSchedule {
  const BiglakeIcebergCatalogRefreshSchedule({this.refreshInterval});

  final TfArg<String>? refreshInterval;

  @internal
  Map<String, Object?> encode() => {
    'refresh_interval': ?refreshInterval?.toTfJson(),
  };
}

/// Typed helper for the `federated_catalog_options.refresh_options.refresh_scope` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogRefreshScope {
  const BiglakeIcebergCatalogRefreshScope({this.namespaceFilters});

  final TfArg<List<String>>? namespaceFilters;

  @internal
  Map<String, Object?> encode() => {
    'namespace_filters': ?namespaceFilters?.toTfJson(),
  };
}

/// Typed helper for the `federated_catalog_options.unity_catalog_info` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogUnityCatalogInfo {
  const BiglakeIcebergCatalogUnityCatalogInfo({
    required this.catalogName,
    required this.instanceName,
    this.servicePrincipalApplicationId,
  });

  final TfArg<String> catalogName;

  final TfArg<String> instanceName;

  final TfArg<String>? servicePrincipalApplicationId;

  @internal
  Map<String, Object?> encode() => {
    'catalog_name': catalogName.toTfJson(),
    'instance_name': instanceName.toTfJson(),
    'service_principal_application_id': ?servicePrincipalApplicationId
        ?.toTfJson(),
  };
}

/// Typed helper for the `restricted_locations_config` block of
/// `google_biglake_iceberg_catalog` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogRestrictedLocationsConfig {
  const BiglakeIcebergCatalogRestrictedLocationsConfig({
    this.restrictedLocations,
  });

  final TfArg<List<String>>? restrictedLocations;

  @internal
  Map<String, Object?> encode() => {
    'restricted_locations': ?restrictedLocations?.toTfJson(),
  };
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

  GoogleBiglakeIcebergCatalog(
    super.localName, {
    required TfArg<String> name,
    required BiglakeIcebergCatalogType catalogType,
    BiglakeIcebergCatalogCredentialMode? credentialMode,
    TfArg<String>? primaryLocation,
    TfArg<String>? defaultLocation,
    BiglakeIcebergCatalogFederatedCatalogOptions? federatedCatalogOptions,
    BiglakeIcebergCatalogRestrictedLocationsConfig? restrictedLocationsConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'catalog_type': catalogType,
           'credential_mode': ?credentialMode,
           'primary_location': ?primaryLocation,
           'default_location': ?defaultLocation,
           if (federatedCatalogOptions != null)
             'federated_catalog_options': TfArg.literal(
               federatedCatalogOptions.encode(),
             ),
           if (restrictedLocationsConfig != null)
             'restricted_locations_config': TfArg.literal(
               restrictedLocationsConfig.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeIcebergCatalogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergCatalog>`.
  RefTo<GoogleBiglakeIcebergCatalog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `catalog_type` attribute.
  TfRef<String> get catalogType =>
      TfRef.attribute<String>(this, 'catalog_type');

  /// Reference to `credential_mode` attribute.
  TfRef<String> get credentialMode =>
      TfRef.attribute<String>(this, 'credential_mode');

  /// Reference to `default_location` attribute.
  TfRef<String> get defaultLocation =>
      TfRef.attribute<String>(this, 'default_location');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `primary_location` attribute.
  TfRef<String> get primaryLocation =>
      TfRef.attribute<String>(this, 'primary_location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
