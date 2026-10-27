// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_fleet_manager`.
const Set<String> _azurermKubernetesFleetManagerSensitive = <String>{};

/// Typed helper for the `hub_profile` block of
/// `azurerm_kubernetes_fleet_manager` (derived from provider schema).
@immutable
final class KubernetesFleetManagerHubProfile {
  const KubernetesFleetManagerHubProfile({required this.dnsPrefix});

  final TfArg<String> dnsPrefix;

  @internal
  Map<String, Object?> encode() => {'dns_prefix': dnsPrefix.toTfJson()};
}

/// Factory wrapper for `azurerm_kubernetes_fleet_manager`.
final class AzurermKubernetesFleetManager extends Resource {
  static const String tfType = 'azurerm_kubernetes_fleet_manager';

  AzurermKubernetesFleetManager(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    KubernetesFleetManagerHubProfile? hubProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (hubProfile != null)
             'hub_profile': TfArg.literal(hubProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKubernetesFleetManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesFleetManager>`.
  RefTo<AzurermKubernetesFleetManager> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
