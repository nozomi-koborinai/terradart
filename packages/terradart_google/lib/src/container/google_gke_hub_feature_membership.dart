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

  final GkeHubFeatureMembershipConfigSync? configSync;

  final GkeHubFeatureMembershipHierarchyController? hierarchyController;

  final GkeHubFeatureMembershipPolicyController? policyController;

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
final class GkeHubFeatureMembershipConfigSync {
  const GkeHubFeatureMembershipConfigSync({
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

  final List<GkeHubFeatureMembershipDeploymentOverrides>? deploymentOverrides;

  final GkeHubFeatureMembershipGit? git;

  final GkeHubFeatureMembershipOci? oci;

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
final class GkeHubFeatureMembershipDeploymentOverrides {
  const GkeHubFeatureMembershipDeploymentOverrides({
    this.deploymentName,
    this.deploymentNamespace,
    this.containers,
  });

  final TfArg<String>? deploymentName;

  final TfArg<String>? deploymentNamespace;

  final List<GkeHubFeatureMembershipContainers>? containers;

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
final class GkeHubFeatureMembershipContainers {
  const GkeHubFeatureMembershipContainers({
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
final class GkeHubFeatureMembershipGit {
  const GkeHubFeatureMembershipGit({
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
final class GkeHubFeatureMembershipOci {
  const GkeHubFeatureMembershipOci({
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
final class GkeHubFeatureMembershipHierarchyController {
  const GkeHubFeatureMembershipHierarchyController({
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
final class GkeHubFeatureMembershipPolicyController {
  const GkeHubFeatureMembershipPolicyController({
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

  final TfArg<List<String>>? exemptableNamespaces;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final TfArg<bool>? templateLibraryInstalled;

  final GkeHubFeatureMembershipMonitoring? monitoring;

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
/// Shared by every block of this shape in the resource.
@immutable
final class GkeHubFeatureMembershipMonitoring {
  const GkeHubFeatureMembershipMonitoring({this.backends});

  final TfArg<List<String>>? backends;

  Map<String, Object?> encode() => {'backends': ?backends?.toTfJson()};
}

/// Typed helper for the `mesh` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipMesh {
  const GkeHubFeatureMembershipMesh({this.controlPlane, this.management});

  final TfArg<GkeHubFeatureMembershipControlPlane>? controlPlane;

  final TfArg<GkeHubFeatureMembershipManagement>? management;

  Map<String, Object?> encode() => {
    'control_plane': ?controlPlane?.toTfJson(),
    'management': ?management?.toTfJson(),
  };
}

/// `control_plane` — derived from the provider schema description.
enum GkeHubFeatureMembershipControlPlane implements TerraformEnum {
  controlPlaneManagementUnspecified('CONTROL_PLANE_MANAGEMENT_UNSPECIFIED'),
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const GkeHubFeatureMembershipControlPlane(this.terraformValue);
  @override
  final String terraformValue;
}

/// `management` — derived from the provider schema description.
enum GkeHubFeatureMembershipManagement implements TerraformEnum {
  managementUnspecified('MANAGEMENT_UNSPECIFIED'),
  managementAutomatic('MANAGEMENT_AUTOMATIC'),
  managementManual('MANAGEMENT_MANUAL');

  const GkeHubFeatureMembershipManagement(this.terraformValue);
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

  final GkeHubFeatureMembershipPolicyControllerHubConfig
  policyControllerHubConfig;

  Map<String, Object?> encode() => {
    'version': ?version?.toTfJson(),
    'policy_controller_hub_config': policyControllerHubConfig.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicyControllerHubConfig {
  const GkeHubFeatureMembershipPolicyControllerHubConfig({
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

  final TfArg<List<String>>? exemptableNamespaces;

  final TfArg<GkeHubFeatureMembershipInstallSpec>? installSpec;

  final TfArg<bool>? logDeniesEnabled;

  final TfArg<bool>? mutationEnabled;

  final TfArg<bool>? referentialRulesEnabled;

  final List<GkeHubFeatureMembershipDeploymentConfigs>? deploymentConfigs;

  final GkeHubFeatureMembershipMonitoring? monitoring;

  final GkeHubFeatureMembershipPolicyContent? policyContent;

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
enum GkeHubFeatureMembershipInstallSpec implements TerraformEnum {
  installSpecUnspecified('INSTALL_SPEC_UNSPECIFIED'),
  installSpecNotInstalled('INSTALL_SPEC_NOT_INSTALLED'),
  installSpecEnabled('INSTALL_SPEC_ENABLED'),
  installSpecSuspended('INSTALL_SPEC_SUSPENDED'),
  installSpecDetached('INSTALL_SPEC_DETACHED');

  const GkeHubFeatureMembershipInstallSpec(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipDeploymentConfigs {
  const GkeHubFeatureMembershipDeploymentConfigs({
    required this.componentName,
    this.podAffinity,
    this.replicaCount,
    this.containerResources,
    this.podTolerations,
  });

  final TfArg<String> componentName;

  final TfArg<GkeHubFeatureMembershipPodAffinity>? podAffinity;

  final TfArg<num>? replicaCount;

  final GkeHubFeatureMembershipContainerResources? containerResources;

  final List<GkeHubFeatureMembershipPodTolerations>? podTolerations;

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
enum GkeHubFeatureMembershipPodAffinity implements TerraformEnum {
  affinityUnspecified('AFFINITY_UNSPECIFIED'),
  noAffinity('NO_AFFINITY'),
  antiAffinity('ANTI_AFFINITY');

  const GkeHubFeatureMembershipPodAffinity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.container_resources` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipContainerResources {
  const GkeHubFeatureMembershipContainerResources({this.limits, this.requests});

  final GkeHubFeatureMembershipLimits? limits;

  final GkeHubFeatureMembershipRequests? requests;

  Map<String, Object?> encode() => {
    'limits': ?limits?.encode(),
    'requests': ?requests?.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipLimits {
  const GkeHubFeatureMembershipLimits({this.cpu, this.memory});

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
final class GkeHubFeatureMembershipRequests {
  const GkeHubFeatureMembershipRequests({this.cpu, this.memory});

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
final class GkeHubFeatureMembershipPodTolerations {
  const GkeHubFeatureMembershipPodTolerations({
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

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipPolicyContent {
  const GkeHubFeatureMembershipPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  final List<GkeHubFeatureMembershipBundles>? bundles;

  final GkeHubFeatureMembershipTemplateLibrary? templateLibrary;

  Map<String, Object?> encode() => {
    if (bundles != null) 'bundles': [for (final e in bundles!) e.encode()],
    'template_library': ?templateLibrary?.encode(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content.bundles` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipBundles {
  const GkeHubFeatureMembershipBundles({
    required this.bundleName,
    this.exemptedNamespaces,
  });

  final TfArg<String> bundleName;

  final TfArg<List<String>>? exemptedNamespaces;

  Map<String, Object?> encode() => {
    'bundle_name': bundleName.toTfJson(),
    'exempted_namespaces': ?exemptedNamespaces?.toTfJson(),
  };
}

/// Typed helper for the `policycontroller.policy_controller_hub_config.policy_content.template_library` block of
/// `google_gke_hub_feature_membership` (derived from provider schema).
@immutable
final class GkeHubFeatureMembershipTemplateLibrary {
  const GkeHubFeatureMembershipTemplateLibrary({this.installation});

  final TfArg<GkeHubFeatureMembershipInstallation>? installation;

  Map<String, Object?> encode() => {'installation': ?installation?.toTfJson()};
}

/// `installation` — derived from the provider schema description.
enum GkeHubFeatureMembershipInstallation implements TerraformEnum {
  installationUnspecified('INSTALLATION_UNSPECIFIED'),
  notInstalled('NOT_INSTALLED'),
  all('ALL');

  const GkeHubFeatureMembershipInstallation(this.terraformValue);
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `feature` attribute.
  TfRef<String> get feature => TfRef.attribute<String>(this, 'feature');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `membership` attribute.
  TfRef<String> get membership => TfRef.attribute<String>(this, 'membership');

  /// Reference to `membership_location` attribute.
  TfRef<String> get membershipLocation =>
      TfRef.attribute<String>(this, 'membership_location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
