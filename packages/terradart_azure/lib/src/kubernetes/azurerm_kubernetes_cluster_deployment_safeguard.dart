// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_cluster_deployment_safeguard`.
const Set<String> _azurermKubernetesClusterDeploymentSafeguardSensitive =
    <String>{};

/// Kubernetes Cluster Deployment Safeguard enum for `level`.
extension type const KubernetesClusterDeploymentSafeguardLevel._(
  TfArg<String> _
) implements TfArg<String> {
  KubernetesClusterDeploymentSafeguardLevel.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesClusterDeploymentSafeguardLevel.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesClusterDeploymentSafeguardLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const enforce = KubernetesClusterDeploymentSafeguardLevel._(
    TfArgLiteral('Enforce'),
  );
  static const warn = KubernetesClusterDeploymentSafeguardLevel._(
    TfArgLiteral('Warn'),
  );

  static const List<KubernetesClusterDeploymentSafeguardLevel> values = [
    enforce,
    warn,
  ];
}

/// Kubernetes Cluster Deployment Safeguard Pod Security Standards enum for `pod_security_standards_level`.
extension type const KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel._(
  TfArg<String> _
) implements TfArg<String> {
  KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel.variable(
    String name,
  ) : this._(TfArg.variable(name));
  KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const baseline =
      KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel._(
        TfArgLiteral('Baseline'),
      );
  static const privileged =
      KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel._(
        TfArgLiteral('Privileged'),
      );
  static const restricted =
      KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel._(
        TfArgLiteral('Restricted'),
      );

  static const List<
    KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel
  >
  values = [baseline, privileged, restricted];
}

/// Factory wrapper for `azurerm_kubernetes_cluster_deployment_safeguard`.
final class AzurermKubernetesClusterDeploymentSafeguard extends Resource {
  static const String tfType =
      'azurerm_kubernetes_cluster_deployment_safeguard';

  AzurermKubernetesClusterDeploymentSafeguard(
    super.localName, {
    TfArg<List<String>>? excludedNamespaces,
    required TfArg<String> kubernetesClusterId,
    required KubernetesClusterDeploymentSafeguardLevel level,
    KubernetesClusterDeploymentSafeguardPodSecurityStandardsLevel?
    podSecurityStandardsLevel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'excluded_namespaces': ?excludedNamespaces,
           'kubernetes_cluster_id': kubernetesClusterId,
           'level': level,
           'pod_security_standards_level': ?podSecurityStandardsLevel,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesClusterDeploymentSafeguardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesClusterDeploymentSafeguard>`.
  RefTo<AzurermKubernetesClusterDeploymentSafeguard> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `excluded_namespaces` attribute.
  TfRef<List<String>> get excludedNamespaces =>
      TfRef.attribute<List<String>>(this, 'excluded_namespaces');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `level` attribute.
  TfRef<String> get level => TfRef.attribute<String>(this, 'level');

  /// Reference to `pod_security_standards_level` attribute.
  TfRef<String> get podSecurityStandardsLevel =>
      TfRef.attribute<String>(this, 'pod_security_standards_level');
}
