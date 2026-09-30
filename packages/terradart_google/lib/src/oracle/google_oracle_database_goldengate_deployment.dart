// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_goldengate_deployment`.
const Set<String> _googleOracleDatabaseGoldengateDeploymentSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate deployments (defaults to PREVENT).
enum OracleDatabaseGoldengateDeploymentDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const OracleDatabaseGoldengateDeploymentDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `properties` block of
/// `google_oracle_database_goldengate_deployment` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateDeploymentProperties {
  const OracleDatabaseGoldengateDeploymentProperties({
    this.cpuCoreCount,
    required this.deploymentType,
    this.description,
    this.environmentType,
    this.isAutoScalingEnabled,
    this.licenseModel,
    this.maintenanceConfig,
    this.maintenanceWindow,
    required this.oggData,
  });

  final TfArg<num>? cpuCoreCount;

  final TfArg<String> deploymentType;

  final TfArg<String>? description;

  final TfArg<String>? environmentType;

  final TfArg<bool>? isAutoScalingEnabled;

  final TfArg<String>? licenseModel;

  final OracleDatabaseGoldengateDeploymentPropertiesMaintenanceConfig?
  maintenanceConfig;

  final OracleDatabaseGoldengateDeploymentPropertiesMaintenanceWindow?
  maintenanceWindow;

  final OracleDatabaseGoldengateDeploymentPropertiesOggData oggData;

  Map<String, Object?> encode() => {
    'cpu_core_count': ?cpuCoreCount?.toTfJson(),
    'deployment_type': deploymentType.toTfJson(),
    'description': ?description?.toTfJson(),
    'environment_type': ?environmentType?.toTfJson(),
    'is_auto_scaling_enabled': ?isAutoScalingEnabled?.toTfJson(),
    'license_model': ?licenseModel?.toTfJson(),
    'maintenance_config': ?maintenanceConfig?.encode(),
    'maintenance_window': ?maintenanceWindow?.encode(),
    'ogg_data': oggData.encode(),
  };
}

/// Typed helper for the `properties.maintenance_config` block of
/// `google_oracle_database_goldengate_deployment` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateDeploymentPropertiesMaintenanceConfig {
  const OracleDatabaseGoldengateDeploymentPropertiesMaintenanceConfig({
    this.bundleReleaseUpgradePeriodDays,
    this.interimReleaseUpgradePeriodDays,
    this.isInterimReleaseAutoUpgradeEnabled,
    this.majorReleaseUpgradePeriodDays,
    this.securityPatchUpgradePeriodDays,
  });

  final TfArg<num>? bundleReleaseUpgradePeriodDays;

  final TfArg<num>? interimReleaseUpgradePeriodDays;

  final TfArg<bool>? isInterimReleaseAutoUpgradeEnabled;

  final TfArg<num>? majorReleaseUpgradePeriodDays;

  final TfArg<num>? securityPatchUpgradePeriodDays;

  Map<String, Object?> encode() => {
    'bundle_release_upgrade_period_days': ?bundleReleaseUpgradePeriodDays
        ?.toTfJson(),
    'interim_release_upgrade_period_days': ?interimReleaseUpgradePeriodDays
        ?.toTfJson(),
    'is_interim_release_auto_upgrade_enabled':
        ?isInterimReleaseAutoUpgradeEnabled?.toTfJson(),
    'major_release_upgrade_period_days': ?majorReleaseUpgradePeriodDays
        ?.toTfJson(),
    'security_patch_upgrade_period_days': ?securityPatchUpgradePeriodDays
        ?.toTfJson(),
  };
}

/// Typed helper for the `properties.maintenance_window` block of
/// `google_oracle_database_goldengate_deployment` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateDeploymentPropertiesMaintenanceWindow {
  const OracleDatabaseGoldengateDeploymentPropertiesMaintenanceWindow({
    required this.day,
    required this.startHour,
  });

  final TfArg<String> day;

  final TfArg<num> startHour;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'start_hour': startHour.toTfJson(),
  };
}

/// Typed helper for the `properties.ogg_data` block of
/// `google_oracle_database_goldengate_deployment` (derived from provider schema).
@immutable
final class OracleDatabaseGoldengateDeploymentPropertiesOggData {
  const OracleDatabaseGoldengateDeploymentPropertiesOggData({
    this.adminPassword,
    this.adminPasswordSecretVersion,
    required this.adminUsername,
    required this.deployment,
    this.oggVersion,
  });

  final TfArg<String>? adminPassword;

  final TfArg<String>? adminPasswordSecretVersion;

  final TfArg<String> adminUsername;

  final TfArg<String> deployment;

  final TfArg<String>? oggVersion;

  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'admin_password_secret_version': ?adminPasswordSecretVersion?.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'deployment': deployment.toTfJson(),
    'ogg_version': ?oggVersion?.toTfJson(),
  };
}

/// Factory wrapper for `google_oracle_database_goldengate_deployment`.
///
/// This resource helps to create a GoldengateDeployment which enables running
/// Oracle GoldenGate in Google Cloud.
///
/// Oracle GoldenGate deployment on Oracle Database@Google Cloud.
///
/// Enable `oracledatabase.googleapis.com` before apply. Requires an
/// [odb_subnet] in the target region and [properties] with deployment type
/// and OGG admin credentials.
final class GoogleOracleDatabaseGoldengateDeployment extends Resource {
  static const String tfType = 'google_oracle_database_goldengate_deployment';

  GoogleOracleDatabaseGoldengateDeployment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> goldengateDeploymentId,
    required TfArg<String> displayName,
    required TfArg<String> odbSubnet,
    TfArg<String>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    required OracleDatabaseGoldengateDeploymentProperties properties,
    TfArg<Map<String, String>>? labels,
    TfArg<OracleDatabaseGoldengateDeploymentDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'goldengate_deployment_id': goldengateDeploymentId,
           'display_name': displayName,
           'odb_subnet': odbSubnet,
           'odb_network': ?odbNetwork,
           'gcp_oracle_zone': ?gcpOracleZone,
           'properties': TfArg.literal(properties.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseGoldengateDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleOracleDatabaseGoldengateDeployment>`.
  RefTo<GoogleOracleDatabaseGoldengateDeployment> get ref => RefTo.of(this);

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
