// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_feature_membership`.
const Set<String> _googleGkeHubFeatureMembershipSensitive = <String>{};

/// Typed helper for the `configmanagement` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagement {
  const GkeHubFeatureMembershipConfigmanagement({
    this.management,
    this.version,
    this.configSync,
    this.hierarchyController,
    this.policyController,
  });

  final TfArg<String>? management;

  final TfArg<String>? version;

  final GkeHubFeatureMembershipConfigmanagementConfigSync? configSync;

  final GkeHubFeatureMembershipConfigmanagementHierarchyController?
  hierarchyController;

  final GkeHubFeatureMembershipConfigmanagementPolicyController?
  policyController;

  Map<String, Object?> encode() => {
    if (management != null) 'management': management!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (configSync != null) 'config_sync': configSync!.encode(),
    if (hierarchyController != null)
      'hierarchy_controller': hierarchyController!.encode(),
    if (policyController != null)
      'policy_controller': policyController!.encode(),
  };
}

/// Typed helper for the `configmanagement.config_sync` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementConfigSync {
  const GkeHubFeatureMembershipConfigmanagementConfigSync({
    this.enabled,
    this.metricsGcpServiceAccountEmail,
    this.preventDrift,
    this.sourceFormat,
    this.stopSyncing,
    this.deploymentOverrides,
    this.git,
    this.oci,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? metricsGcpServiceAccountEmail;

  final TfArg<bool>? preventDrift;

  final TfArg<String>? sourceFormat;

  final TfArg<bool>? stopSyncing;

  final List<
    GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverrides
  >?
  deploymentOverrides;

  final GkeHubFeatureMembershipConfigmanagementConfigSyncGit? git;

  final GkeHubFeatureMembershipConfigmanagementConfigSyncOci? oci;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (metricsGcpServiceAccountEmail != null)
      'metrics_gcp_service_account_email': metricsGcpServiceAccountEmail!
          .toTfJson(),
    if (preventDrift != null) 'prevent_drift': preventDrift!.toTfJson(),
    if (sourceFormat != null) 'source_format': sourceFormat!.toTfJson(),
    if (stopSyncing != null) 'stop_syncing': stopSyncing!.toTfJson(),
    if (deploymentOverrides != null)
      'deployment_overrides': [
        for (final e in deploymentOverrides!) e.encode(),
      ],
    if (git != null) 'git': git!.encode(),
    if (oci != null) 'oci': oci!.encode(),
  };
}

/// Typed helper for the `configmanagement.config_sync.deployment_overrides` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverrides {
  const GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverrides({
    this.deploymentName,
    this.deploymentNamespace,
    this.containers,
  });

  final TfArg<String>? deploymentName;

  final TfArg<String>? deploymentNamespace;

  final List<
    GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverridesContainers
  >?
  containers;

  Map<String, Object?> encode() => {
    if (deploymentName != null) 'deployment_name': deploymentName!.toTfJson(),
    if (deploymentNamespace != null)
      'deployment_namespace': deploymentNamespace!.toTfJson(),
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
  };
}

/// Typed helper for the `configmanagement.config_sync.deployment_overrides.containers` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverridesContainers {
  const GkeHubFeatureMembershipConfigmanagementConfigSyncDeploymentOverridesContainers({
    this.containerName,
    this.cpuLimit,
    this.cpuRequest,
    this.memoryLimit,
    this.memoryRequest,
  });

  final TfArg<String>? containerName;

  final TfArg<String>? cpuLimit;

  final TfArg<String>? cpuRequest;

  final TfArg<String>? memoryLimit;

  final TfArg<String>? memoryRequest;

  Map<String, Object?> encode() => {
    if (containerName != null) 'container_name': containerName!.toTfJson(),
    if (cpuLimit != null) 'cpu_limit': cpuLimit!.toTfJson(),
    if (cpuRequest != null) 'cpu_request': cpuRequest!.toTfJson(),
    if (memoryLimit != null) 'memory_limit': memoryLimit!.toTfJson(),
    if (memoryRequest != null) 'memory_request': memoryRequest!.toTfJson(),
  };
}

/// Typed helper for the `configmanagement.config_sync.git` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementConfigSyncGit {
  const GkeHubFeatureMembershipConfigmanagementConfigSyncGit({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  final TfArg<String>? gcpServiceAccountEmail;

  final TfArg<String>? httpsProxy;

  final TfArg<String>? policyDir;

  final TfArg<String>? secretType;

  final TfArg<String>? syncBranch;

  final TfArg<String>? syncRepo;

  final TfArg<String>? syncRev;

  final TfArg<String>? syncWaitSecs;

  Map<String, Object?> encode() => {
    if (gcpServiceAccountEmail != null)
      'gcp_service_account_email': gcpServiceAccountEmail!.toTfJson(),
    if (httpsProxy != null) 'https_proxy': httpsProxy!.toTfJson(),
    if (policyDir != null) 'policy_dir': policyDir!.toTfJson(),
    if (secretType != null) 'secret_type': secretType!.toTfJson(),
    if (syncBranch != null) 'sync_branch': syncBranch!.toTfJson(),
    if (syncRepo != null) 'sync_repo': syncRepo!.toTfJson(),
    if (syncRev != null) 'sync_rev': syncRev!.toTfJson(),
    if (syncWaitSecs != null) 'sync_wait_secs': syncWaitSecs!.toTfJson(),
  };
}

/// Typed helper for the `configmanagement.config_sync.oci` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementConfigSyncOci {
  const GkeHubFeatureMembershipConfigmanagementConfigSyncOci({
    this.gcpServiceAccountEmail,
    this.policyDir,
    this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
  });

  final TfArg<String>? gcpServiceAccountEmail;

  final TfArg<String>? policyDir;

  final TfArg<String>? secretType;

  final TfArg<String>? syncRepo;

  final TfArg<String>? syncWaitSecs;

  Map<String, Object?> encode() => {
    if (gcpServiceAccountEmail != null)
      'gcp_service_account_email': gcpServiceAccountEmail!.toTfJson(),
    if (policyDir != null) 'policy_dir': policyDir!.toTfJson(),
    if (secretType != null) 'secret_type': secretType!.toTfJson(),
    if (syncRepo != null) 'sync_repo': syncRepo!.toTfJson(),
    if (syncWaitSecs != null) 'sync_wait_secs': syncWaitSecs!.toTfJson(),
  };
}

/// Typed helper for the `configmanagement.hierarchy_controller` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementHierarchyController {
  const GkeHubFeatureMembershipConfigmanagementHierarchyController({
    this.enableHierarchicalResourceQuota,
    this.enablePodTreeLabels,
    this.enabled,
  });

  final TfArg<bool>? enableHierarchicalResourceQuota;

  final TfArg<bool>? enablePodTreeLabels;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enableHierarchicalResourceQuota != null)
      'enable_hierarchical_resource_quota': enableHierarchicalResourceQuota!
          .toTfJson(),
    if (enablePodTreeLabels != null)
      'enable_pod_tree_labels': enablePodTreeLabels!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `configmanagement.policy_controller` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementPolicyController {
  const GkeHubFeatureMembershipConfigmanagementPolicyController({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
    this.monitoring,
  });

  final TfArg<String>? auditIntervalSeconds;

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>>? exemptableNamespaces;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final TfArg<bool>? templateLibraryInstalled;

  final GkeHubFeatureMembershipConfigmanagementPolicyControllerMonitoring?
  monitoring;

  Map<String, Object?> encode() => {
    if (auditIntervalSeconds != null)
      'audit_interval_seconds': auditIntervalSeconds!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (exemptableNamespaces != null)
      'exemptable_namespaces': exemptableNamespaces!.toTfJson(),
    if (logDeniesEnabled != null)
      'log_denies_enabled': logDeniesEnabled!.toTfJson(),
    if (mutationEnabled != null)
      'mutation_enabled': mutationEnabled!.toTfJson(),
    if (referentialRulesEnabled != null)
      'referential_rules_enabled': referentialRulesEnabled!.toTfJson(),
    if (templateLibraryInstalled != null)
      'template_library_installed': templateLibraryInstalled!.toTfJson(),
    if (monitoring != null) 'monitoring': monitoring!.encode(),
  };
}

/// Typed helper for the `configmanagement.policy_controller.monitoring` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipConfigmanagementPolicyControllerMonitoring {
  const GkeHubFeatureMembershipConfigmanagementPolicyControllerMonitoring({
    this.backends,
  });

  final TfArg<List<Object?>>? backends;

  Map<String, Object?> encode() => {
    if (backends != null) 'backends': backends!.toTfJson(),
  };
}

/// Typed helper for the `mesh` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipMesh {
  const GkeHubFeatureMembershipMesh({this.controlPlane, this.management});

  final TfArg<GkeHubFeatureMembershipMeshControlPlane>? controlPlane;

  final TfArg<GkeHubFeatureMembershipMeshManagement>? management;

  Map<String, Object?> encode() => {
    if (controlPlane != null) 'control_plane': controlPlane!.toTfJson(),
    if (management != null) 'management': management!.toTfJson(),
  };
}

/// `control_plane` — derived from the provider schema description.
enum GkeHubFeatureMembershipMeshControlPlane implements TerraformEnum {
  controlPlaneManagementUnspecified('CONTROL_PLANE_MANAGEMENT_UNSPECIFIED'),
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const GkeHubFeatureMembershipMeshControlPlane(this.terraformValue);
  @override
  final String terraformValue;
}

/// `management` — derived from the provider schema description.
enum GkeHubFeatureMembershipMeshManagement implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  managementAutomatic('MANAGEMENT_AUTOMATIC'),
  managementManual('MANAGEMENT_MANUAL');

  const GkeHubFeatureMembershipMeshManagement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policycontroller` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontroller {
  const GkeHubFeatureMembershipPolicycontroller({
    this.version,
    required this.policyControllerHubConfig,
  });

  final TfArg<String>? version;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfig
  policyControllerHubConfig;

  Map<String, Object?> encode() => {
    if (version != null) 'version': version!.toTfJson(),
    'policy_controller_hub_config': policyControllerHubConfig.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfig {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.exemptableNamespaces,
    this.installSpec,
    this.logDeniesEnabled,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.deploymentConfigs,
    this.monitoring,
    this.policyContent,
  });

  final TfArg<num>? auditIntervalSeconds;

  final TfArg<num>? constraintViolationLimit;

  final TfArg<List<Object?>>? exemptableNamespaces;

  final TfArg<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigInstallSpec
  >?
  installSpec;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final List<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigs
  >?
  deploymentConfigs;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigMonitoring?
  monitoring;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent?
  policyContent;

  Map<String, Object?> encode() => {
    if (auditIntervalSeconds != null)
      'audit_interval_seconds': auditIntervalSeconds!.toTfJson(),
    if (constraintViolationLimit != null)
      'constraint_violation_limit': constraintViolationLimit!.toTfJson(),
    if (exemptableNamespaces != null)
      'exemptable_namespaces': exemptableNamespaces!.toTfJson(),
    if (installSpec != null) 'install_spec': installSpec!.toTfJson(),
    if (logDeniesEnabled != null)
      'log_denies_enabled': logDeniesEnabled!.toTfJson(),
    if (mutationEnabled != null)
      'mutation_enabled': mutationEnabled!.toTfJson(),
    if (referentialRulesEnabled != null)
      'referential_rules_enabled': referentialRulesEnabled!.toTfJson(),
    if (deploymentConfigs != null)
      'deployment_configs': [for (final e in deploymentConfigs!) e.encode()],
    if (monitoring != null) 'monitoring': monitoring!.encode(),
    if (policyContent != null) 'policy_content': policyContent!.encode(),
  };
}

/// `install_spec` — derived from the provider schema description.
enum GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigInstallSpec
    implements TerraformEnum {
  installSpecUnspecified('INSTALL_SPEC_UNSPECIFIED'),
  installSpecNotInstalled('INSTALL_SPEC_NOT_INSTALLED'),
  installSpecEnabled('INSTALL_SPEC_ENABLED'),
  installSpecSuspended('INSTALL_SPEC_SUSPENDED'),
  installSpecDetached('INSTALL_SPEC_DETACHED');

  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigInstallSpec(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigs {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigs({
    required this.componentName,
    this.podAffinity,
    this.replicaCount,
    this.containerResources,
    this.podTolerations,
  });

  final TfArg<String> componentName;

  final TfArg<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity
  >?
  podAffinity;

  final TfArg<num>? replicaCount;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources?
  containerResources;

  final List<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodTolerations
  >?
  podTolerations;

  Map<String, Object?> encode() => {
    'component_name': componentName.toTfJson(),
    if (podAffinity != null) 'pod_affinity': podAffinity!.toTfJson(),
    if (replicaCount != null) 'replica_count': replicaCount!.toTfJson(),
    if (containerResources != null)
      'container_resources': containerResources!.encode(),
    if (podTolerations != null)
      'pod_tolerations': [for (final e in podTolerations!) e.encode()],
  };
}

/// `pod_affinity` — derived from the provider schema description.
enum GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity
    implements TerraformEnum {
  affinityUnspecified('AFFINITY_UNSPECIFIED'),
  noAffinity('NO_AFFINITY'),
  antiAffinity('ANTI_AFFINITY');

  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodAffinity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.container_resources` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResources({
    this.limits,
    this.requests,
  });

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits?
  limits;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests?
  requests;

  Map<String, Object?> encode() => {
    if (limits != null) 'limits': limits!.encode(),
    if (requests != null) 'requests': requests!.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesLimits({
    this.cpu,
    this.memory,
  });

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.container_resources.requests` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsContainerResourcesRequests({
    this.cpu,
    this.memory,
  });

  final TfArg<String>? cpu;

  final TfArg<String>? memory;

  Map<String, Object?> encode() => {
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (memory != null) 'memory': memory!.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.pod_tolerations` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodTolerations {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigDeploymentConfigsPodTolerations({
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
    if (effect != null) 'effect': effect!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.monitoring` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigMonitoring {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigMonitoring({
    this.backends,
  });

  final TfArg<List<Object?>>? backends;

  Map<String, Object?> encode() => {
    if (backends != null) 'backends': backends!.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  final List<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundles
  >?
  bundles;

  final GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary?
  templateLibrary;

  Map<String, Object?> encode() => {
    if (bundles != null) 'bundles': [for (final e in bundles!) e.encode()],
    if (templateLibrary != null) 'template_library': templateLibrary!.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content.bundles` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundles {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundles({
    required this.bundleName,
    this.exemptedNamespaces,
  });

  final TfArg<String> bundleName;

  final TfArg<List<Object?>>? exemptedNamespaces;

  Map<String, Object?> encode() => {
    'bundle_name': bundleName.toTfJson(),
    if (exemptedNamespaces != null)
      'exempted_namespaces': exemptedNamespaces!.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content.template_library` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary {
  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary({
    this.installation,
  });

  final TfArg<
    GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation
  >?
  installation;

  Map<String, Object?> encode() => {
    if (installation != null) 'installation': installation!.toTfJson(),
  };
}

/// `installation` — derived from the provider schema description.
enum GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation
    implements TerraformEnum {
  installationUnspecified('INSTALLATION_UNSPECIFIED'),
  notInstalled('NOT_INSTALLED'),
  all('ALL');

  const GkeHubFeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibraryInstallation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gke_hub_feature_membership`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleGkeHubFeatureMembership extends Resource {
  static const String tfType = 'google_gke_hub_feature_membership';

  GoogleGkeHubFeatureMembership({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> feature,
    required TfArg<String> location,
    required TfArg<String> membership,
    TfArg<String>? membershipLocation,
    TfArg<String>? project,
    GkeHubFeatureMembershipConfigmanagement? configmanagement,
    GkeHubFeatureMembershipMesh? mesh,
    GkeHubFeatureMembershipPolicycontroller? policycontroller,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'feature': feature,
           'location': location,
           'membership': membership,
           if (membershipLocation != null)
             'membership_location': membershipLocation,
           if (project != null) 'project': project,
           if (configmanagement != null)
             'configmanagement': TfArg.literal(configmanagement.encode()),
           if (mesh != null) 'mesh': TfArg.literal(mesh.encode()),
           if (policycontroller != null)
             'policycontroller': TfArg.literal(policycontroller.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
