// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_feature`.
const Set<String> _googleGkeHubFeatureSensitive = <String>{};

/// Typed helper for the `fleet_default_member_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfig {
  const GkeHubFeatureFleetDefaultMemberConfig({
    this.configmanagement,
    this.mesh,
    this.policycontroller,
  });

  final GkeHubFeatureFleetDefaultMemberConfigConfigmanagement? configmanagement;

  final GkeHubFeatureFleetDefaultMemberConfigMesh? mesh;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontroller? policycontroller;

  Map<String, Object?> encode() => {
    'configmanagement': ?configmanagement?.encode(),
    'mesh': ?mesh?.encode(),
    'policycontroller': ?policycontroller?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.configmanagement` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigConfigmanagement {
  const GkeHubFeatureFleetDefaultMemberConfigConfigmanagement({
    this.management,
    this.version,
    this.configSync,
  });

  final TfArg<GkeHubFeatureFleetDefaultMemberConfigConfigmanagementManagement>?
  management;

  final TfArg<String>? version;

  final GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSync?
  configSync;

  Map<String, Object?> encode() => {
    'management': ?management?.toTfJson(),
    'version': ?version?.toTfJson(),
    'config_sync': ?configSync?.encode(),
  };
}

/// `management` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigConfigmanagementManagement
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  managementAutomatic('MANAGEMENT_AUTOMATIC'),
  managementManual('MANAGEMENT_MANUAL');

  const GkeHubFeatureFleetDefaultMemberConfigConfigmanagementManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_default_member_config.configmanagement.config_sync` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSync {
  const GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSync({
    this.enabled,
    this.metricsGcpServiceAccountEmail,
    this.preventDrift,
    this.sourceFormat,
    this.git,
    this.oci,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? metricsGcpServiceAccountEmail;

  final TfArg<bool>? preventDrift;

  final TfArg<String>? sourceFormat;

  final GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit? git;

  final GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci? oci;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'metrics_gcp_service_account_email': ?metricsGcpServiceAccountEmail
        ?.toTfJson(),
    'prevent_drift': ?preventDrift?.toTfJson(),
    'source_format': ?sourceFormat?.toTfJson(),
    'git': ?git?.encode(),
    'oci': ?oci?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.configmanagement.config_sync.git` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit {
  const GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    required this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  final TfArg<String>? gcpServiceAccountEmail;

  final TfArg<String>? httpsProxy;

  final TfArg<String>? policyDir;

  final TfArg<String> secretType;

  final TfArg<String>? syncBranch;

  final TfArg<String>? syncRepo;

  final TfArg<String>? syncRev;

  final TfArg<String>? syncWaitSecs;

  Map<String, Object?> encode() => {
    'gcp_service_account_email': ?gcpServiceAccountEmail?.toTfJson(),
    'https_proxy': ?httpsProxy?.toTfJson(),
    'policy_dir': ?policyDir?.toTfJson(),
    'secret_type': secretType.toTfJson(),
    'sync_branch': ?syncBranch?.toTfJson(),
    'sync_repo': ?syncRepo?.toTfJson(),
    'sync_rev': ?syncRev?.toTfJson(),
    'sync_wait_secs': ?syncWaitSecs?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.configmanagement.config_sync.oci` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci {
  const GkeHubFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    this.gcpServiceAccountEmail,
    this.policyDir,
    required this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
    this.version,
  });

  final TfArg<String>? gcpServiceAccountEmail;

  final TfArg<String>? policyDir;

  final TfArg<String> secretType;

  final TfArg<String>? syncRepo;

  final TfArg<String>? syncWaitSecs;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'gcp_service_account_email': ?gcpServiceAccountEmail?.toTfJson(),
    'policy_dir': ?policyDir?.toTfJson(),
    'secret_type': secretType.toTfJson(),
    'sync_repo': ?syncRepo?.toTfJson(),
    'sync_wait_secs': ?syncWaitSecs?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.mesh` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigMesh {
  const GkeHubFeatureFleetDefaultMemberConfigMesh({required this.management});

  final TfArg<GkeHubFeatureFleetDefaultMemberConfigMeshManagement> management;

  Map<String, Object?> encode() => {'management': management.toTfJson()};
}

/// `management` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigMeshManagement
    implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  managementAutomatic('MANAGEMENT_AUTOMATIC'),
  managementManual('MANAGEMENT_MANUAL');

  const GkeHubFeatureFleetDefaultMemberConfigMeshManagement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_default_member_config.policycontroller` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontroller {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontroller({
    this.version,
    required this.policyControllerHubConfig,
  });

  final TfArg<String>? version;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig
  policyControllerHubConfig;

  Map<String, Object?> encode() => {
    'version': ?version?.toTfJson(),
    'policy_controller_hub_config': policyControllerHubConfig.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.exemptableNamespaces,
    required this.installSpec,
    this.logDeniesEnabled,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.deploymentConfigs,
    this.monitoring,
    this.policyContent,
  });

  final TfArg<num>? auditIntervalSeconds;

  final TfArg<num>? constraintViolationLimit;

  final TfArg<List<String>>? exemptableNamespaces;

  final TfArg<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigInstallSpec
  >
  installSpec;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final List<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigs
  >?
  deploymentConfigs;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring?
  monitoring;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent?
  policyContent;

  Map<String, Object?> encode() => {
    'audit_interval_seconds': ?auditIntervalSeconds?.toTfJson(),
    'constraint_violation_limit': ?constraintViolationLimit?.toTfJson(),
    'exemptable_namespaces': ?exemptableNamespaces?.toTfJson(),
    'install_spec': installSpec.toTfJson(),
    'log_denies_enabled': ?logDeniesEnabled?.toTfJson(),
    'mutation_enabled': ?mutationEnabled?.toTfJson(),
    'referential_rules_enabled': ?referentialRulesEnabled?.toTfJson(),
    if (deploymentConfigs != null)
      'deployment_configs': [for (final e in deploymentConfigs!) e.encode()],
    'monitoring': ?monitoring?.encode(),
    'policy_content': ?policyContent?.encode(),
  };
}

/// `install_spec` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigInstallSpec
    implements TerraformEnum {
  installSpecUnspecified('INSTALL_SPEC_UNSPECIFIED'),
  installSpecNotInstalled('INSTALL_SPEC_NOT_INSTALLED'),
  installSpecEnabled('INSTALL_SPEC_ENABLED'),
  installSpecSuspended('INSTALL_SPEC_SUSPENDED'),
  installSpecDetached('INSTALL_SPEC_DETACHED');

  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigInstallSpec(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigs {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigs({
    required this.component,
    this.podAffinity,
    this.replicaCount,
    this.containerResources,
    this.podToleration,
  });

  final TfArg<String> component;

  final TfArg<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity
  >?
  podAffinity;

  final TfArg<num>? replicaCount;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources?
  containerResources;

  final List<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodToleration
  >?
  podToleration;

  Map<String, Object?> encode() => {
    'component': component.toTfJson(),
    'pod_affinity': ?podAffinity?.toTfJson(),
    'replica_count': ?replicaCount?.toTfJson(),
    'container_resources': ?containerResources?.encode(),
    if (podToleration != null)
      'pod_toleration': [for (final e in podToleration!) e.encode()],
  };
}

/// `pod_affinity` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity
    implements TerraformEnum {
  affinityUnspecified('AFFINITY_UNSPECIFIED'),
  noAffinity('NO_AFFINITY'),
  antiAffinity('ANTI_AFFINITY');

  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources({
    this.limits,
    this.requests,
  });

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits?
  limits;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests?
  requests;

  Map<String, Object?> encode() => {
    'limits': ?limits?.encode(),
    'requests': ?requests?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits({
    this.cpu,
    this.memory,
  });

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.requests` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests({
    this.cpu,
    this.memory,
  });

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.pod_toleration` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodToleration {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodToleration({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  final TfArg<String>? effect;

  final TfArg<String>? key;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.monitoring` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring({
    this.backends,
  });

  final List<
    TfArg<
      GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringBackends
    >
  >?
  backends;

  Map<String, Object?> encode() => {
    if (backends != null) 'backends': [for (final e in backends!) e.toTfJson()],
  };
}

/// `backends` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringBackends
    implements TerraformEnum {
  monitoringBackendUnspecified('MONITORING_BACKEND_UNSPECIFIED'),
  prometheus('PROMETHEUS'),
  cloudMonitoring('CLOUD_MONITORING');

  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoringBackends(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  final List<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundles
  >?
  bundles;

  final GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary?
  templateLibrary;

  Map<String, Object?> encode() => {
    if (bundles != null) 'bundles': [for (final e in bundles!) e.encode()],
    'template_library': ?templateLibrary?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.bundles` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundles {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundles({
    required this.bundle,
    this.exemptedNamespaces,
  });

  final TfArg<String> bundle;

  final TfArg<List<String>>? exemptedNamespaces;

  Map<String, Object?> encode() => {
    'bundle': bundle.toTfJson(),
    'exempted_namespaces': ?exemptedNamespaces?.toTfJson(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.template_library` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary {
  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary({
    this.installation,
  });

  final TfArg<
    GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation
  >?
  installation;

  Map<String, Object?> encode() => {'installation': ?installation?.toTfJson()};
}

/// `installation` — derived from the provider schema description.
enum GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation
    implements TerraformEnum {
  installationUnspecified('INSTALLATION_UNSPECIFIED'),
  notInstalled('NOT_INSTALLED'),
  all('ALL');

  const GkeHubFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpec {
  const GkeHubFeatureSpec({
    this.clusterupgrade,
    this.fleetobservability,
    this.multiclusteringress,
    this.rbacrolebindingactuation,
    this.workloadidentity,
  });

  final GkeHubFeatureSpecClusterupgrade? clusterupgrade;

  final GkeHubFeatureSpecFleetobservability? fleetobservability;

  final GkeHubFeatureSpecMulticlusteringress? multiclusteringress;

  final GkeHubFeatureSpecRbacrolebindingactuation? rbacrolebindingactuation;

  final GkeHubFeatureSpecWorkloadidentity? workloadidentity;

  Map<String, Object?> encode() => {
    'clusterupgrade': ?clusterupgrade?.encode(),
    'fleetobservability': ?fleetobservability?.encode(),
    'multiclusteringress': ?multiclusteringress?.encode(),
    'rbacrolebindingactuation': ?rbacrolebindingactuation?.encode(),
    'workloadidentity': ?workloadidentity?.encode(),
  };
}

/// Typed helper for the `spec.clusterupgrade` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecClusterupgrade {
  const GkeHubFeatureSpecClusterupgrade({
    required this.upstreamFleets,
    this.gkeUpgradeOverrides,
    this.postConditions,
  });

  final TfArg<List<String>> upstreamFleets;

  final List<GkeHubFeatureSpecClusterupgradeGkeUpgradeOverrides>?
  gkeUpgradeOverrides;

  final GkeHubFeatureSpecClusterupgradePostConditions? postConditions;

  Map<String, Object?> encode() => {
    'upstream_fleets': upstreamFleets.toTfJson(),
    if (gkeUpgradeOverrides != null)
      'gke_upgrade_overrides': [
        for (final e in gkeUpgradeOverrides!) e.encode(),
      ],
    'post_conditions': ?postConditions?.encode(),
  };
}

/// Typed helper for the `spec.clusterupgrade.gke_upgrade_overrides` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecClusterupgradeGkeUpgradeOverrides {
  const GkeHubFeatureSpecClusterupgradeGkeUpgradeOverrides({
    required this.postConditions,
    required this.upgrade,
  });

  final GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesPostConditions
  postConditions;

  final GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesUpgrade upgrade;

  Map<String, Object?> encode() => {
    'post_conditions': postConditions.encode(),
    'upgrade': upgrade.encode(),
  };
}

/// Typed helper for the `spec.clusterupgrade.gke_upgrade_overrides.post_conditions` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesPostConditions {
  const GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesPostConditions({
    required this.soaking,
  });

  final TfArg<String> soaking;

  Map<String, Object?> encode() => {'soaking': soaking.toTfJson()};
}

/// Typed helper for the `spec.clusterupgrade.gke_upgrade_overrides.upgrade` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesUpgrade {
  const GkeHubFeatureSpecClusterupgradeGkeUpgradeOverridesUpgrade({
    required this.name,
    required this.version,
  });

  final TfArg<String> name;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `spec.clusterupgrade.post_conditions` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecClusterupgradePostConditions {
  const GkeHubFeatureSpecClusterupgradePostConditions({required this.soaking});

  final TfArg<String> soaking;

  Map<String, Object?> encode() => {'soaking': soaking.toTfJson()};
}

/// Typed helper for the `spec.fleetobservability` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecFleetobservability {
  const GkeHubFeatureSpecFleetobservability({this.loggingConfig});

  final GkeHubFeatureSpecFleetobservabilityLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {'logging_config': ?loggingConfig?.encode()};
}

/// Typed helper for the `spec.fleetobservability.logging_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecFleetobservabilityLoggingConfig {
  const GkeHubFeatureSpecFleetobservabilityLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  final GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfig?
  defaultConfig;

  final GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig?
  fleetScopeLogsConfig;

  Map<String, Object?> encode() => {
    'default_config': ?defaultConfig?.encode(),
    'fleet_scope_logs_config': ?fleetScopeLogsConfig?.encode(),
  };
}

/// Typed helper for the `spec.fleetobservability.logging_config.default_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfig {
  const GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfig({
    this.mode,
  });

  final TfArg<
    GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfigMode
  >?
  mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfigMode
    implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  copy('COPY'),
  move('MOVE');

  const GkeHubFeatureSpecFleetobservabilityLoggingConfigDefaultConfigMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.fleetobservability.logging_config.fleet_scope_logs_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig {
  const GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig({
    this.mode,
  });

  final TfArg<
    GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigMode
  >?
  mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigMode
    implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  copy('COPY'),
  move('MOVE');

  const GkeHubFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfigMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.multiclusteringress` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecMulticlusteringress {
  const GkeHubFeatureSpecMulticlusteringress({required this.configMembership});

  final TfArg<String> configMembership;

  Map<String, Object?> encode() => {
    'config_membership': configMembership.toTfJson(),
  };
}

/// Typed helper for the `spec.rbacrolebindingactuation` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecRbacrolebindingactuation {
  const GkeHubFeatureSpecRbacrolebindingactuation({this.allowedCustomRoles});

  final TfArg<List<String>>? allowedCustomRoles;

  Map<String, Object?> encode() => {
    'allowed_custom_roles': ?allowedCustomRoles?.toTfJson(),
  };
}

/// Typed helper for the `spec.workloadidentity` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureSpecWorkloadidentity {
  const GkeHubFeatureSpecWorkloadidentity({this.scopeTenancyPool});

  final TfArg<String>? scopeTenancyPool;

  Map<String, Object?> encode() => {
    'scope_tenancy_pool': ?scopeTenancyPool?.toTfJson(),
  };
}

/// Factory wrapper for `google_gke_hub_feature`.
///
/// Feature represents the settings and status of any Hub Feature.
///
/// GKE Hub **feature** — enables a fleet-level Feature such as
/// Multi-Cluster Service Discovery, Service Mesh, or Config Management.
///
/// For smoke stacks prefer `name: multiclusterservicediscovery` at
/// `location: global` — no cluster membership is required (see provider
/// `gkehub_feature_multi_cluster_service_discovery`). Also enable
/// `multiclusterservicediscovery.googleapis.com` before apply. Features
/// that need a membership (`multiclusteringress`) or paid Anthos add-ons
/// are out of scope for the quickstart.
///
/// Enable `gkehub.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleGkeHubFeature(
///   localName: 'mcsd',
///   name: TfArg.literal('multiclusterservicediscovery'),
///   location: TfArg.literal('global'),
/// );
/// ```
final class GoogleGkeHubFeature extends Resource {
  static const String tfType = 'google_gke_hub_feature';

  GoogleGkeHubFeature({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> location,
    TfArg<Map<String, String>>? labels,
    GkeHubFeatureFleetDefaultMemberConfig? fleetDefaultMemberConfig,
    GkeHubFeatureSpec? spec,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'location': location,
           'labels': ?labels,
           if (fleetDefaultMemberConfig != null)
             'fleet_default_member_config': TfArg.literal(
               fleetDefaultMemberConfig.encode(),
             ),
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubFeature>`.
  RefTo<GoogleGkeHubFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `resource_state` attribute.
  TfRef<List<Map<String, Object?>>> get resourceState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_state');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
