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

  final GkeHubFeatureConfigmanagement? configmanagement;

  final GkeHubFeatureMesh? mesh;

  final GkeHubFeaturePolicycontroller? policycontroller;

  Map<String, Object?> encode() => {
    'configmanagement': ?configmanagement?.encode(),
    'mesh': ?mesh?.encode(),
    'policycontroller': ?policycontroller?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.configmanagement` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureConfigmanagement {
  const GkeHubFeatureConfigmanagement({
    this.management,
    this.version,
    this.configSync,
  });

  final GkeHubFeatureManagement? management;

  final TfArg<String>? version;

  final GkeHubFeatureConfigSync? configSync;

  Map<String, Object?> encode() => {
    'management': ?management?.toTfJson(),
    'version': ?version?.toTfJson(),
    'config_sync': ?configSync?.encode(),
  };
}

/// `management` — derived from the provider schema description.
extension type const GkeHubFeatureManagement._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeatureManagement.variable(String name) : this._(TfArg.variable(name));
  GkeHubFeatureManagement.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeatureManagement.arg(TfArg<String> arg) : this._(arg);

  static const managementUnspecified = GkeHubFeatureManagement._(
    TfArgLiteral('MANAGEMENT_UNSPECIFIED'),
  );
  static const managementAutomatic = GkeHubFeatureManagement._(
    TfArgLiteral('MANAGEMENT_AUTOMATIC'),
  );
  static const managementManual = GkeHubFeatureManagement._(
    TfArgLiteral('MANAGEMENT_MANUAL'),
  );

  static const List<GkeHubFeatureManagement> values = [
    managementUnspecified,
    managementAutomatic,
    managementManual,
  ];
}

/// Typed helper for the `fleet_default_member_config.configmanagement.config_sync` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureConfigSync {
  const GkeHubFeatureConfigSync({
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

  final GkeHubFeatureGit? git;

  final GkeHubFeatureOci? oci;

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
final class GkeHubFeatureGit {
  const GkeHubFeatureGit({
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
final class GkeHubFeatureOci {
  const GkeHubFeatureOci({
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
final class GkeHubFeatureMesh {
  const GkeHubFeatureMesh({required this.management});

  final GkeHubFeatureManagement management;

  Map<String, Object?> encode() => {'management': management.toTfJson()};
}

/// Typed helper for the `fleet_default_member_config.policycontroller` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeaturePolicycontroller {
  const GkeHubFeaturePolicycontroller({
    this.version,
    required this.policyControllerHubConfig,
  });

  final TfArg<String>? version;

  final GkeHubFeaturePolicyControllerHubConfig policyControllerHubConfig;

  Map<String, Object?> encode() => {
    'version': ?version?.toTfJson(),
    'policy_controller_hub_config': policyControllerHubConfig.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeaturePolicyControllerHubConfig {
  const GkeHubFeaturePolicyControllerHubConfig({
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

  final GkeHubFeatureInstallSpec installSpec;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final List<GkeHubFeatureDeploymentConfigs>? deploymentConfigs;

  final GkeHubFeatureMonitoring? monitoring;

  final GkeHubFeaturePolicyContent? policyContent;

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
extension type const GkeHubFeatureInstallSpec._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeatureInstallSpec.variable(String name) : this._(TfArg.variable(name));
  GkeHubFeatureInstallSpec.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeatureInstallSpec.arg(TfArg<String> arg) : this._(arg);

  static const installSpecUnspecified = GkeHubFeatureInstallSpec._(
    TfArgLiteral('INSTALL_SPEC_UNSPECIFIED'),
  );
  static const installSpecNotInstalled = GkeHubFeatureInstallSpec._(
    TfArgLiteral('INSTALL_SPEC_NOT_INSTALLED'),
  );
  static const installSpecEnabled = GkeHubFeatureInstallSpec._(
    TfArgLiteral('INSTALL_SPEC_ENABLED'),
  );
  static const installSpecSuspended = GkeHubFeatureInstallSpec._(
    TfArgLiteral('INSTALL_SPEC_SUSPENDED'),
  );
  static const installSpecDetached = GkeHubFeatureInstallSpec._(
    TfArgLiteral('INSTALL_SPEC_DETACHED'),
  );

  static const List<GkeHubFeatureInstallSpec> values = [
    installSpecUnspecified,
    installSpecNotInstalled,
    installSpecEnabled,
    installSpecSuspended,
    installSpecDetached,
  ];
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureDeploymentConfigs {
  const GkeHubFeatureDeploymentConfigs({
    required this.component,
    this.podAffinity,
    this.replicaCount,
    this.containerResources,
    this.podToleration,
  });

  final TfArg<String> component;

  final GkeHubFeaturePodAffinity? podAffinity;

  final TfArg<num>? replicaCount;

  final GkeHubFeatureContainerResources? containerResources;

  final List<GkeHubFeaturePodToleration>? podToleration;

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
extension type const GkeHubFeaturePodAffinity._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeaturePodAffinity.variable(String name) : this._(TfArg.variable(name));
  GkeHubFeaturePodAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeaturePodAffinity.arg(TfArg<String> arg) : this._(arg);

  static const affinityUnspecified = GkeHubFeaturePodAffinity._(
    TfArgLiteral('AFFINITY_UNSPECIFIED'),
  );
  static const noAffinity = GkeHubFeaturePodAffinity._(
    TfArgLiteral('NO_AFFINITY'),
  );
  static const antiAffinity = GkeHubFeaturePodAffinity._(
    TfArgLiteral('ANTI_AFFINITY'),
  );

  static const List<GkeHubFeaturePodAffinity> values = [
    affinityUnspecified,
    noAffinity,
    antiAffinity,
  ];
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureContainerResources {
  const GkeHubFeatureContainerResources({this.limits, this.requests});

  final GkeHubFeatureLimits? limits;

  final GkeHubFeatureRequests? requests;

  Map<String, Object?> encode() => {
    'limits': ?limits?.encode(),
    'requests': ?requests?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureLimits {
  const GkeHubFeatureLimits({this.cpu, this.memory});

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
final class GkeHubFeatureRequests {
  const GkeHubFeatureRequests({this.cpu, this.memory});

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
final class GkeHubFeaturePodToleration {
  const GkeHubFeaturePodToleration({
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
final class GkeHubFeatureMonitoring {
  const GkeHubFeatureMonitoring({this.backends});

  final List<GkeHubFeatureBackends>? backends;

  Map<String, Object?> encode() => {
    if (backends != null) 'backends': [for (final e in backends!) e.toTfJson()],
  };
}

/// `backends` — derived from the provider schema description.
extension type const GkeHubFeatureBackends._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeatureBackends.variable(String name) : this._(TfArg.variable(name));
  GkeHubFeatureBackends.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeatureBackends.arg(TfArg<String> arg) : this._(arg);

  static const monitoringBackendUnspecified = GkeHubFeatureBackends._(
    TfArgLiteral('MONITORING_BACKEND_UNSPECIFIED'),
  );
  static const prometheus = GkeHubFeatureBackends._(TfArgLiteral('PROMETHEUS'));
  static const cloudMonitoring = GkeHubFeatureBackends._(
    TfArgLiteral('CLOUD_MONITORING'),
  );

  static const List<GkeHubFeatureBackends> values = [
    monitoringBackendUnspecified,
    prometheus,
    cloudMonitoring,
  ];
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeaturePolicyContent {
  const GkeHubFeaturePolicyContent({this.bundles, this.templateLibrary});

  final List<GkeHubFeatureBundles>? bundles;

  final GkeHubFeatureTemplateLibrary? templateLibrary;

  Map<String, Object?> encode() => {
    if (bundles != null) 'bundles': [for (final e in bundles!) e.encode()],
    'template_library': ?templateLibrary?.encode(),
  };
}

/// Typed helper for the `fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.bundles` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureBundles {
  const GkeHubFeatureBundles({required this.bundle, this.exemptedNamespaces});

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
final class GkeHubFeatureTemplateLibrary {
  const GkeHubFeatureTemplateLibrary({this.installation});

  final GkeHubFeatureInstallation? installation;

  Map<String, Object?> encode() => {'installation': ?installation?.toTfJson()};
}

/// `installation` — derived from the provider schema description.
extension type const GkeHubFeatureInstallation._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeatureInstallation.variable(String name)
    : this._(TfArg.variable(name));
  GkeHubFeatureInstallation.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeatureInstallation.arg(TfArg<String> arg) : this._(arg);

  static const installationUnspecified = GkeHubFeatureInstallation._(
    TfArgLiteral('INSTALLATION_UNSPECIFIED'),
  );
  static const notInstalled = GkeHubFeatureInstallation._(
    TfArgLiteral('NOT_INSTALLED'),
  );
  static const all = GkeHubFeatureInstallation._(TfArgLiteral('ALL'));

  static const List<GkeHubFeatureInstallation> values = [
    installationUnspecified,
    notInstalled,
    all,
  ];
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

  final GkeHubFeatureClusterupgrade? clusterupgrade;

  final GkeHubFeatureFleetobservability? fleetobservability;

  final GkeHubFeatureMulticlusteringress? multiclusteringress;

  final GkeHubFeatureRbacrolebindingactuation? rbacrolebindingactuation;

  final GkeHubFeatureWorkloadidentity? workloadidentity;

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
final class GkeHubFeatureClusterupgrade {
  const GkeHubFeatureClusterupgrade({
    required this.upstreamFleets,
    this.gkeUpgradeOverrides,
    this.postConditions,
  });

  final TfArg<List<String>> upstreamFleets;

  final List<GkeHubFeatureGkeUpgradeOverrides>? gkeUpgradeOverrides;

  final GkeHubFeaturePostConditions? postConditions;

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
final class GkeHubFeatureGkeUpgradeOverrides {
  const GkeHubFeatureGkeUpgradeOverrides({
    required this.postConditions,
    required this.upgrade,
  });

  final GkeHubFeaturePostConditions postConditions;

  final GkeHubFeatureUpgrade upgrade;

  Map<String, Object?> encode() => {
    'post_conditions': postConditions.encode(),
    'upgrade': upgrade.encode(),
  };
}

/// Typed helper for the `spec.clusterupgrade.post_conditions` block of
/// `google_gke_hub_feature` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class GkeHubFeaturePostConditions {
  const GkeHubFeaturePostConditions({required this.soaking});

  final TfArg<String> soaking;

  Map<String, Object?> encode() => {'soaking': soaking.toTfJson()};
}

/// Typed helper for the `spec.clusterupgrade.gke_upgrade_overrides.upgrade` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureUpgrade {
  const GkeHubFeatureUpgrade({required this.name, required this.version});

  final TfArg<String> name;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `spec.fleetobservability` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetobservability {
  const GkeHubFeatureFleetobservability({this.loggingConfig});

  final GkeHubFeatureLoggingConfig? loggingConfig;

  Map<String, Object?> encode() => {'logging_config': ?loggingConfig?.encode()};
}

/// Typed helper for the `spec.fleetobservability.logging_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureLoggingConfig {
  const GkeHubFeatureLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  final GkeHubFeatureDefaultConfig? defaultConfig;

  final GkeHubFeatureFleetScopeLogsConfig? fleetScopeLogsConfig;

  Map<String, Object?> encode() => {
    'default_config': ?defaultConfig?.encode(),
    'fleet_scope_logs_config': ?fleetScopeLogsConfig?.encode(),
  };
}

/// Typed helper for the `spec.fleetobservability.logging_config.default_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureDefaultConfig {
  const GkeHubFeatureDefaultConfig({this.mode});

  final GkeHubFeatureMode? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
extension type const GkeHubFeatureMode._(TfArg<String> _)
    implements TfArg<String> {
  GkeHubFeatureMode.variable(String name) : this._(TfArg.variable(name));
  GkeHubFeatureMode.expression(String template)
    : this._(TfArg.expression(template));
  const GkeHubFeatureMode.arg(TfArg<String> arg) : this._(arg);

  static const modeUnspecified = GkeHubFeatureMode._(
    TfArgLiteral('MODE_UNSPECIFIED'),
  );
  static const copy = GkeHubFeatureMode._(TfArgLiteral('COPY'));
  static const move = GkeHubFeatureMode._(TfArgLiteral('MOVE'));

  static const List<GkeHubFeatureMode> values = [modeUnspecified, copy, move];
}

/// Typed helper for the `spec.fleetobservability.logging_config.fleet_scope_logs_config` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureFleetScopeLogsConfig {
  const GkeHubFeatureFleetScopeLogsConfig({this.mode});

  final GkeHubFeatureMode? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// Typed helper for the `spec.multiclusteringress` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureMulticlusteringress {
  const GkeHubFeatureMulticlusteringress({required this.configMembership});

  final TfArg<String> configMembership;

  Map<String, Object?> encode() => {
    'config_membership': configMembership.toTfJson(),
  };
}

/// Typed helper for the `spec.rbacrolebindingactuation` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureRbacrolebindingactuation {
  const GkeHubFeatureRbacrolebindingactuation({this.allowedCustomRoles});

  final TfArg<List<String>>? allowedCustomRoles;

  Map<String, Object?> encode() => {
    'allowed_custom_roles': ?allowedCustomRoles?.toTfJson(),
  };
}

/// Typed helper for the `spec.workloadidentity` block of
/// `google_gke_hub_feature` (derived from provider schema).
@immutable
final class GkeHubFeatureWorkloadidentity {
  const GkeHubFeatureWorkloadidentity({this.scopeTenancyPool});

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
///   'mcsd',
///   name: TfArg.literal('multiclusterservicediscovery'),
///   location: TfArg.literal('global'),
/// );
/// ```
final class GoogleGkeHubFeature extends Resource {
  static const String tfType = 'google_gke_hub_feature';

  GoogleGkeHubFeature(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
