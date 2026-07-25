// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_cloud_exadata_infrastructure_exascale_config`.
const Set<String>
_googleOracleDatabaseCloudExadataInfrastructureExascaleConfigSensitive =
    <String>{};

/// Factory wrapper for `google_oracle_database_cloud_exadata_infrastructure_exascale_config`.
///
/// A resource to configure Exascale storage on an Oracle Cloud Exadata
/// Infrastructure.
///
/// ~> **Note:** Oracle Database @ Google Cloud does not support deconfiguring
/// Exascale storage on an Exadata Infrastructure. Deleting this resource from
/// Terraform state will only remove it from Terraform management; it will not
/// delete or reset the Exascale configuration on the actual Exadata
/// Infrastructure.
///
/// Oracle Database@Google Cloud **Exadata Exascale config** — allocates
/// Exascale storage on a [GoogleOracleDatabaseCloudExadataInfrastructure].
///
/// **Cost / apply:** gcp-cost: Bare Metal Solution `6955-34DC-6EF3` All
/// Flash NVMe Storage Useable TB Iowa (us-central1) SKU `A094-33FD-1ECD`
/// **$115/mo** per usable TB (48TB pack `8567-C651-956D` **$14135/mo**;
/// parent Exadata Dual Core Server Iowa `0783-C2A0-0D4E` **$3400/mo**).
/// billing-behavior: [totalStorageSizeGb] provisions Exascale capacity that
/// bills while allocated on the Exadata infrastructure; destroy releases
/// that allocation. Requires never_apply Exadata infrastructure + Oracle
/// zone entitlement — not applyable on `terradart-validate`. Too expensive
/// for apply-smoke even once — debt-only. **Never** wire into apply-smoke.
///
/// Enable `oracledatabase.googleapis.com` before apply.
final class GoogleOracleDatabaseCloudExadataInfrastructureExascaleConfig
    extends Resource {
  static const String tfType =
      'google_oracle_database_cloud_exadata_infrastructure_exascale_config';

  GoogleOracleDatabaseCloudExadataInfrastructureExascaleConfig({
    required super.localName,
    required TfArg<String> cloudExadataInfrastructure,
    required TfArg<String> location,
    required TfArg<num> totalStorageSizeGb,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_exadata_infrastructure': cloudExadataInfrastructure,
           'location': location,
           'total_storage_size_gb': totalStorageSizeGb,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseCloudExadataInfrastructureExascaleConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
