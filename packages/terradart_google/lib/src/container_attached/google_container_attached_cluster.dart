// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_attached_cluster`.
const Set<String> _googleContainerAttachedClusterSensitive = <String>{};

/// Typed helper for the `authorization` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterAuthorization {
  const ContainerAttachedClusterAuthorization({
    this.adminGroups,
    this.adminUsers,
  });

  final TfArg<List<Object?>>? adminGroups;

  final TfArg<List<Object?>>? adminUsers;

  Map<String, Object?> encode() => {
    if (adminGroups != null) 'admin_groups': adminGroups!.toTfJson(),
    if (adminUsers != null) 'admin_users': adminUsers!.toTfJson(),
  };
}

/// Typed helper for the `binary_authorization` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterBinaryAuthorization {
  const ContainerAttachedClusterBinaryAuthorization({this.evaluationMode});

  final TfArg<ContainerAttachedClusterBinaryAuthorizationEvaluationMode>?
  evaluationMode;

  Map<String, Object?> encode() => {
    if (evaluationMode != null) 'evaluation_mode': evaluationMode!.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
enum ContainerAttachedClusterBinaryAuthorizationEvaluationMode
    implements TerraformEnum {
  disabled('DISABLED'),
  projectSingletonPolicyEnforce('PROJECT_SINGLETON_POLICY_ENFORCE');

  const ContainerAttachedClusterBinaryAuthorizationEvaluationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `fleet` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterFleet {
  const ContainerAttachedClusterFleet({required this.project});

  final TfArg<String> project;

  Map<String, Object?> encode() => {'project': project.toTfJson()};
}

/// Typed helper for the `logging_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterLoggingConfig {
  const ContainerAttachedClusterLoggingConfig({this.componentConfig});

  final ContainerAttachedClusterLoggingConfigComponentConfig? componentConfig;

  Map<String, Object?> encode() => {
    if (componentConfig != null) 'component_config': componentConfig!.encode(),
  };
}

/// Typed helper for the `logging_config.component_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterLoggingConfigComponentConfig {
  const ContainerAttachedClusterLoggingConfigComponentConfig({
    this.enableComponents,
  });

  final List<
    TfArg<ContainerAttachedClusterLoggingConfigComponentConfigEnableComponents>
  >?
  enableComponents;

  Map<String, Object?> encode() => {
    if (enableComponents != null)
      'enable_components': [for (final e in enableComponents!) e.toTfJson()],
  };
}

/// `enable_components` — derived from the provider schema description.
enum ContainerAttachedClusterLoggingConfigComponentConfigEnableComponents
    implements TerraformEnum {
  systemComponents('SYSTEM_COMPONENTS'),
  workloads('WORKLOADS');

  const ContainerAttachedClusterLoggingConfigComponentConfigEnableComponents(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `monitoring_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterMonitoringConfig {
  const ContainerAttachedClusterMonitoringConfig({
    this.managedPrometheusConfig,
  });

  final ContainerAttachedClusterMonitoringConfigManagedPrometheusConfig?
  managedPrometheusConfig;

  Map<String, Object?> encode() => {
    if (managedPrometheusConfig != null)
      'managed_prometheus_config': managedPrometheusConfig!.encode(),
  };
}

/// Typed helper for the `monitoring_config.managed_prometheus_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterMonitoringConfigManagedPrometheusConfig {
  const ContainerAttachedClusterMonitoringConfigManagedPrometheusConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `oidc_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterOidcConfig {
  const ContainerAttachedClusterOidcConfig({
    required this.issuerUrl,
    this.jwks,
  });

  final TfArg<String> issuerUrl;

  final TfArg<String>? jwks;

  Map<String, Object?> encode() => {
    'issuer_url': issuerUrl.toTfJson(),
    if (jwks != null) 'jwks': jwks!.toTfJson(),
  };
}

/// Typed helper for the `proxy_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterProxyConfig {
  const ContainerAttachedClusterProxyConfig({this.kubernetesSecret});

  final ContainerAttachedClusterProxyConfigKubernetesSecret? kubernetesSecret;

  Map<String, Object?> encode() => {
    if (kubernetesSecret != null)
      'kubernetes_secret': kubernetesSecret!.encode(),
  };
}

/// Typed helper for the `proxy_config.kubernetes_secret` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterProxyConfigKubernetesSecret {
  const ContainerAttachedClusterProxyConfigKubernetesSecret({
    required this.name,
    required this.namespace,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `security_posture_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterSecurityPostureConfig {
  const ContainerAttachedClusterSecurityPostureConfig({
    required this.vulnerabilityMode,
  });

  final TfArg<ContainerAttachedClusterSecurityPostureConfigVulnerabilityMode>
  vulnerabilityMode;

  Map<String, Object?> encode() => {
    'vulnerability_mode': vulnerabilityMode.toTfJson(),
  };
}

/// `vulnerability_mode` — derived from the provider schema description.
enum ContainerAttachedClusterSecurityPostureConfigVulnerabilityMode
    implements TerraformEnum {
  vulnerabilityDisabled('VULNERABILITY_DISABLED'),
  vulnerabilityEnterprise('VULNERABILITY_ENTERPRISE');

  const ContainerAttachedClusterSecurityPostureConfigVulnerabilityMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_container_attached_cluster`.
///
/// An Anthos cluster running on customer owned infrastructure.
///
/// GKE **attached cluster** — registers an existing conformant Kubernetes
/// cluster with a Fleet (GKE Enterprise / GDC Attached Clusters).
///
/// **Cost / apply:** Cloud Billing Catalog lists GKE Enterprise Trial /
/// GDC (Attached Clusters) SKU `CA50-C2AE-45E8` at **$0/h** after MCP
/// `get_sku_price`; production attached clusters still require a real
/// external Kubernetes cluster and GKE Enterprise entitlement (related
/// Multicloud management fees e.g. AWS SKU `24A0-2EF1-8ACB` **$0.00822/h**
/// on `9186-F79E-3871`). Cannot apply on standalone `terradart-validate` —
/// debt-only. **Never** wire into apply-smoke.
///
/// Enable `gkehub.googleapis.com` / attached APIs via [GoogleProjectService]
/// before apply. [fleet] and [oidcConfig] are required.
final class GoogleContainerAttachedCluster extends Resource {
  static const String tfType = 'google_container_attached_cluster';

  GoogleContainerAttachedCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> distribution,
    required TfArg<String> platformVersion,
    required ContainerAttachedClusterFleet fleet,
    required ContainerAttachedClusterOidcConfig oidcConfig,
    ContainerAttachedClusterAuthorization? authorization,
    ContainerAttachedClusterBinaryAuthorization? binaryAuthorization,
    ContainerAttachedClusterLoggingConfig? loggingConfig,
    ContainerAttachedClusterMonitoringConfig? monitoringConfig,
    ContainerAttachedClusterProxyConfig? proxyConfig,
    ContainerAttachedClusterSecurityPostureConfig? securityPostureConfig,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'distribution': distribution,
           'platform_version': platformVersion,
           'fleet': TfArg.literal(fleet.encode()),
           'oidc_config': TfArg.literal(oidcConfig.encode()),
           if (authorization != null)
             'authorization': TfArg.literal(authorization.encode()),
           if (binaryAuthorization != null)
             'binary_authorization': TfArg.literal(
               binaryAuthorization.encode(),
             ),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (monitoringConfig != null)
             'monitoring_config': TfArg.literal(monitoringConfig.encode()),
           if (proxyConfig != null)
             'proxy_config': TfArg.literal(proxyConfig.encode()),
           if (securityPostureConfig != null)
             'security_posture_config': TfArg.literal(
               securityPostureConfig.encode(),
             ),
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAttachedClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_region` attribute.
  TfRef<String> get clusterRegion =>
      TfRef.attribute<String>(this, 'cluster_region');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `kubernetes_version` attribute.
  TfRef<String> get kubernetesVersion =>
      TfRef.attribute<String>(this, 'kubernetes_version');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `workload_identity_config` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_config',
      );

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
