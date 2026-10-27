// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kubernetes_fleet_member`.
const Set<String> _azurermKubernetesFleetMemberSensitive = <String>{};

/// Factory wrapper for `azurerm_kubernetes_fleet_member`.
final class AzurermKubernetesFleetMember extends Resource {
  static const String tfType = 'azurerm_kubernetes_fleet_member';

  AzurermKubernetesFleetMember(
    super.localName, {
    TfArg<String>? group,
    required TfArg<String> kubernetesClusterId,
    required TfArg<String> kubernetesFleetId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group': ?group,
           'kubernetes_cluster_id': kubernetesClusterId,
           'kubernetes_fleet_id': kubernetesFleetId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesFleetMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesFleetMember>`.
  RefTo<AzurermKubernetesFleetMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `kubernetes_fleet_id` attribute.
  TfRef<String> get kubernetesFleetId =>
      TfRef.attribute<String>(this, 'kubernetes_fleet_id');
}
