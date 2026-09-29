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
    'management': ?management?.toTfJson(),
    'version': ?version?.toTfJson(),
    'config_sync': ?configSync?.encode(),
    'hierarchy_controller': ?hierarchyController?.encode(),
    'policy_controller': ?policyController?.encode(),
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
    'enabled': ?enabled?.toTfJson(),
    'metrics_gcp_service_account_email': ?metricsGcpServiceAccountEmail
        ?.toTfJson(),
    'prevent_drift': ?preventDrift?.toTfJson(),
    'source_format': ?sourceFormat?.toTfJson(),
    'stop_syncing': ?stopSyncing?.toTfJson(),
    if (deploymentOverrides != null)
      'deployment_overrides': [
        for (final e in deploymentOverrides!) e.encode(),
      ],
    'git': ?git?.encode(),
    'oci': ?oci?.encode(),
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
    'deployment_name': ?deploymentName?.toTfJson(),
    'deployment_namespace': ?deploymentNamespace?.toTfJson(),
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
    'container_name': ?containerName?.toTfJson(),
    'cpu_limit': ?cpuLimit?.toTfJson(),
    'cpu_request': ?cpuRequest?.toTfJson(),
    'memory_limit': ?memoryLimit?.toTfJson(),
    'memory_request': ?memoryRequest?.toTfJson(),
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
    'gcp_service_account_email': ?gcpServiceAccountEmail?.toTfJson(),
    'https_proxy': ?httpsProxy?.toTfJson(),
    'policy_dir': ?policyDir?.toTfJson(),
    'secret_type': ?secretType?.toTfJson(),
    'sync_branch': ?syncBranch?.toTfJson(),
    'sync_repo': ?syncRepo?.toTfJson(),
    'sync_rev': ?syncRev?.toTfJson(),
    'sync_wait_secs': ?syncWaitSecs?.toTfJson(),
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
    'gcp_service_account_email': ?gcpServiceAccountEmail?.toTfJson(),
    'policy_dir': ?policyDir?.toTfJson(),
    'secret_type': ?secretType?.toTfJson(),
    'sync_repo': ?syncRepo?.toTfJson(),
    'sync_wait_secs': ?syncWaitSecs?.toTfJson(),
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
    'enable_hierarchical_resource_quota': ?enableHierarchicalResourceQuota
        ?.toTfJson(),
    'enable_pod_tree_labels': ?enablePodTreeLabels?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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
    'audit_interval_seconds': ?auditIntervalSeconds?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'exemptable_namespaces': ?exemptableNamespaces?.toTfJson(),
    'log_denies_enabled': ?logDeniesEnabled?.toTfJson(),
    'mutation_enabled': ?mutationEnabled?.toTfJson(),
    'referential_rules_enabled': ?referentialRulesEnabled?.toTfJson(),
    'template_library_installed': ?templateLibraryInstalled?.toTfJson(),
    'monitoring': ?monitoring?.encode(),
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

  Map<String, Object?> encode() => {'backends': ?backends?.toTfJson()};
}

/// Typed helper for the `mesh` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipMesh {
  const GkeHubFeatureMembershipMesh({this.controlPlane, this.management});

  final TfArg<GkeHubFeatureMembershipMeshControlPlane>? controlPlane;

  final TfArg<GkeHubFeatureMembershipMeshManagement>? management;

  Map<String, Object?> encode() => {
    'control_plane': ?controlPlane?.toTfJson(),
    'management': ?management?.toTfJson(),
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
    'version': ?version?.toTfJson(),
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
    'audit_interval_seconds': ?auditIntervalSeconds?.toTfJson(),
    'constraint_violation_limit': ?constraintViolationLimit?.toTfJson(),
    'exemptable_namespaces': ?exemptableNamespaces?.toTfJson(),
    'install_spec': ?installSpec?.toTfJson(),
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
    'pod_affinity': ?podAffinity?.toTfJson(),
    'replica_count': ?replicaCount?.toTfJson(),
    'container_resources': ?containerResources?.encode(),
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
    'limits': ?limits?.encode(),
    'requests': ?requests?.encode(),
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
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
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
    'cpu': ?cpu?.toTfJson(),
    'memory': ?memory?.toTfJson(),
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
    'effect': ?effect?.toTfJson(),
    'key': ?key?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
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

  Map<String, Object?> encode() => {'backends': ?backends?.toTfJson()};
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
    'template_library': ?templateLibrary?.encode(),
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
    'exempted_namespaces': ?exemptedNamespaces?.toTfJson(),
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

  Map<String, Object?> encode() => {'installation': ?installation?.toTfJson()};
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'feature': feature,
           'location': location,
           'membership': membership,
           'membership_location': ?membershipLocation,
           'project': ?project,
           if (configmanagement != null)
             'configmanagement': TfArg.literal(configmanagement.encode()),
           if (mesh != null) 'mesh': TfArg.literal(mesh.encode()),
           if (policycontroller != null)
             'policycontroller': TfArg.literal(policycontroller.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubFeatureMembership>`.
  RefTo<GoogleGkeHubFeatureMembership> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
