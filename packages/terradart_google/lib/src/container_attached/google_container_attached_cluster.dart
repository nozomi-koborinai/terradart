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

  final TfArg<List<String>>? adminGroups;

  final TfArg<List<String>>? adminUsers;

  Map<String, Object?> encode() => {
    'admin_groups': ?adminGroups?.toTfJson(),
    'admin_users': ?adminUsers?.toTfJson(),
  };
}

/// Typed helper for the `binary_authorization` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterBinaryAuthorization {
  const ContainerAttachedClusterBinaryAuthorization({this.evaluationMode});

  final ContainerAttachedClusterEvaluationMode? evaluationMode;

  Map<String, Object?> encode() => {
    'evaluation_mode': ?evaluationMode?.toTfJson(),
  };
}

/// `evaluation_mode` — derived from the provider schema description.
extension type const ContainerAttachedClusterEvaluationMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAttachedClusterEvaluationMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAttachedClusterEvaluationMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAttachedClusterEvaluationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = ContainerAttachedClusterEvaluationMode._(
    TfArgLiteral('DISABLED'),
  );
  static const projectSingletonPolicyEnforce =
      ContainerAttachedClusterEvaluationMode._(
        TfArgLiteral('PROJECT_SINGLETON_POLICY_ENFORCE'),
      );

  static const List<ContainerAttachedClusterEvaluationMode> values = [
    disabled,
    projectSingletonPolicyEnforce,
  ];
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

  final ContainerAttachedClusterComponentConfig? componentConfig;

  Map<String, Object?> encode() => {
    'component_config': ?componentConfig?.encode(),
  };
}

/// Typed helper for the `logging_config.component_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterComponentConfig {
  const ContainerAttachedClusterComponentConfig({this.enableComponents});

  final List<ContainerAttachedClusterEnableComponents>? enableComponents;

  Map<String, Object?> encode() => {
    if (enableComponents != null)
      'enable_components': [for (final e in enableComponents!) e.toTfJson()],
  };
}

/// `enable_components` — derived from the provider schema description.
extension type const ContainerAttachedClusterEnableComponents._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAttachedClusterEnableComponents.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAttachedClusterEnableComponents.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAttachedClusterEnableComponents.arg(TfArg<String> arg)
    : this._(arg);

  static const systemComponents = ContainerAttachedClusterEnableComponents._(
    TfArgLiteral('SYSTEM_COMPONENTS'),
  );
  static const workloads = ContainerAttachedClusterEnableComponents._(
    TfArgLiteral('WORKLOADS'),
  );

  static const List<ContainerAttachedClusterEnableComponents> values = [
    systemComponents,
    workloads,
  ];
}

/// Typed helper for the `monitoring_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterMonitoringConfig {
  const ContainerAttachedClusterMonitoringConfig({
    this.managedPrometheusConfig,
  });

  final ContainerAttachedClusterManagedPrometheusConfig?
  managedPrometheusConfig;

  Map<String, Object?> encode() => {
    'managed_prometheus_config': ?managedPrometheusConfig?.encode(),
  };
}

/// Typed helper for the `monitoring_config.managed_prometheus_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterManagedPrometheusConfig {
  const ContainerAttachedClusterManagedPrometheusConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'jwks': ?jwks?.toTfJson(),
  };
}

/// Typed helper for the `proxy_config` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterProxyConfig {
  const ContainerAttachedClusterProxyConfig({this.kubernetesSecret});

  final ContainerAttachedClusterKubernetesSecret? kubernetesSecret;

  Map<String, Object?> encode() => {
    'kubernetes_secret': ?kubernetesSecret?.encode(),
  };
}

/// Typed helper for the `proxy_config.kubernetes_secret` block of
/// `google_container_attached_cluster` (derived from provider schema).
@immutable
final class ContainerAttachedClusterKubernetesSecret {
  const ContainerAttachedClusterKubernetesSecret({
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

  final ContainerAttachedClusterVulnerabilityMode vulnerabilityMode;

  Map<String, Object?> encode() => {
    'vulnerability_mode': vulnerabilityMode.toTfJson(),
  };
}

/// `vulnerability_mode` — derived from the provider schema description.
extension type const ContainerAttachedClusterVulnerabilityMode._(
  TfArg<String> _
) implements TfArg<String> {
  ContainerAttachedClusterVulnerabilityMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAttachedClusterVulnerabilityMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAttachedClusterVulnerabilityMode.arg(TfArg<String> arg)
    : this._(arg);

  static const vulnerabilityDisabled =
      ContainerAttachedClusterVulnerabilityMode._(
        TfArgLiteral('VULNERABILITY_DISABLED'),
      );
  static const vulnerabilityEnterprise =
      ContainerAttachedClusterVulnerabilityMode._(
        TfArgLiteral('VULNERABILITY_ENTERPRISE'),
      );

  static const List<ContainerAttachedClusterVulnerabilityMode> values = [
    vulnerabilityDisabled,
    vulnerabilityEnterprise,
  ];
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

  GoogleContainerAttachedCluster(
    super.localName, {
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
    super.provider,
    super.timeouts,
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
           'description': ?description,
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAttachedClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAttachedCluster>`.
  RefTo<GoogleContainerAttachedCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distribution` attribute.
  TfRef<String> get distribution =>
      TfRef.attribute<String>(this, 'distribution');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform_version` attribute.
  TfRef<String> get platformVersion =>
      TfRef.attribute<String>(this, 'platform_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
