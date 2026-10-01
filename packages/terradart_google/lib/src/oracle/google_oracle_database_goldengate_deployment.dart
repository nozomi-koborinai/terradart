// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../oracle/google_oracle_database_odb_network.dart'
    show GoogleOracleDatabaseOdbNetwork;
import '../oracle/google_oracle_database_odb_subnet.dart'
    show GoogleOracleDatabaseOdbSubnet;

/// Sensitive field paths for `google_oracle_database_goldengate_deployment`.
const Set<String> _googleOracleDatabaseGoldengateDeploymentSensitive =
    <String>{};

/// Terraform `deletion_policy` for GoldenGate deployments (defaults to PREVENT).
extension type const OracleDatabaseGoldengateDeploymentDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OracleDatabaseGoldengateDeploymentDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OracleDatabaseGoldengateDeploymentDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OracleDatabaseGoldengateDeploymentDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = OracleDatabaseGoldengateDeploymentDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = OracleDatabaseGoldengateDeploymentDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = OracleDatabaseGoldengateDeploymentDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<OracleDatabaseGoldengateDeploymentDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
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

  final OracleDatabaseGoldengateDeploymentMaintenanceConfig? maintenanceConfig;

  final OracleDatabaseGoldengateDeploymentMaintenanceWindow? maintenanceWindow;

  final OracleDatabaseGoldengateDeploymentOggData oggData;

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
final class OracleDatabaseGoldengateDeploymentMaintenanceConfig {
  const OracleDatabaseGoldengateDeploymentMaintenanceConfig({
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
final class OracleDatabaseGoldengateDeploymentMaintenanceWindow {
  const OracleDatabaseGoldengateDeploymentMaintenanceWindow({
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
final class OracleDatabaseGoldengateDeploymentOggData {
  const OracleDatabaseGoldengateDeploymentOggData({
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

  GoogleOracleDatabaseGoldengateDeployment(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> goldengateDeploymentId,
    required TfArg<String> displayName,
    required RefTo<GoogleOracleDatabaseOdbSubnet> odbSubnet,
    RefTo<GoogleOracleDatabaseOdbNetwork>? odbNetwork,
    TfArg<String>? gcpOracleZone,
    required OracleDatabaseGoldengateDeploymentProperties properties,
    TfArg<Map<String, String>>? labels,
    OracleDatabaseGoldengateDeploymentDeletionPolicy? deletionPolicy,
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
           'odb_subnet': odbSubnet.encodeAs('name'),
           'odb_network': ?odbNetwork?.encodeAs('name'),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `gcp_oracle_zone` attribute.
  TfRef<String> get gcpOracleZone =>
      TfRef.attribute<String>(this, 'gcp_oracle_zone');

  /// Reference to `goldengate_deployment_id` attribute.
  TfRef<String> get goldengateDeploymentId =>
      TfRef.attribute<String>(this, 'goldengate_deployment_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
