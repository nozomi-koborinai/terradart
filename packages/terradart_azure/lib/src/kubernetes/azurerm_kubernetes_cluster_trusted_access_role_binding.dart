// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_cluster_trusted_access_role_binding`.
const Set<String> _azurermKubernetesClusterTrustedAccessRoleBindingSensitive =
    <String>{};

/// Factory wrapper for `azurerm_kubernetes_cluster_trusted_access_role_binding`.
final class AzurermKubernetesClusterTrustedAccessRoleBinding extends Resource {
  static const String tfType =
      'azurerm_kubernetes_cluster_trusted_access_role_binding';

  AzurermKubernetesClusterTrustedAccessRoleBinding(
    super.localName, {
    required TfArg<String> kubernetesClusterId,
    required TfArg<String> name,
    required TfArg<List<String>> roles,
    required TfArg<String> sourceResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kubernetes_cluster_id': kubernetesClusterId,
           'name': name,
           'roles': roles,
           'source_resource_id': sourceResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesClusterTrustedAccessRoleBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesClusterTrustedAccessRoleBinding>`.
  RefTo<AzurermKubernetesClusterTrustedAccessRoleBinding> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `roles` attribute.
  TfRef<List<String>> get roles => TfRef.attribute<List<String>>(this, 'roles');

  /// Reference to `source_resource_id` attribute.
  TfRef<String> get sourceResourceId =>
      TfRef.attribute<String>(this, 'source_resource_id');
}
