// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_agent_pool`.
const Set<String> _azurermContainerRegistryAgentPoolSensitive = <String>{};

/// Container Registry Agent Pool enum for `tier`.
extension type const ContainerRegistryAgentPoolTier._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryAgentPoolTier.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryAgentPoolTier.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryAgentPoolTier.arg(TfArg<String> arg) : this._(arg);

  static const s1 = ContainerRegistryAgentPoolTier._(TfArgLiteral('S1'));
  static const s2 = ContainerRegistryAgentPoolTier._(TfArgLiteral('S2'));
  static const s3 = ContainerRegistryAgentPoolTier._(TfArgLiteral('S3'));
  static const i6 = ContainerRegistryAgentPoolTier._(TfArgLiteral('I6'));

  static const List<ContainerRegistryAgentPoolTier> values = [s1, s2, s3, i6];
}

/// Factory wrapper for `azurerm_container_registry_agent_pool`.
final class AzurermContainerRegistryAgentPool extends Resource {
  static const String tfType = 'azurerm_container_registry_agent_pool';

  AzurermContainerRegistryAgentPool(
    super.localName, {
    required TfArg<String> containerRegistryName,
    TfArg<num>? instanceCount,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ContainerRegistryAgentPoolTier? tier,
    TfArg<String>? virtualNetworkSubnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_name': containerRegistryName,
           'instance_count': ?instanceCount,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'tier': ?tier,
           'virtual_network_subnet_id': ?virtualNetworkSubnetId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryAgentPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryAgentPool>`.
  RefTo<AzurermContainerRegistryAgentPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_name` attribute.
  TfRef<String> get containerRegistryName =>
      TfRef.attribute<String>(this, 'container_registry_name');

  /// Reference to `instance_count` attribute.
  TfRef<num> get instanceCount => TfRef.attribute<num>(this, 'instance_count');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `virtual_network_subnet_id` attribute.
  TfRef<String> get virtualNetworkSubnetId =>
      TfRef.attribute<String>(this, 'virtual_network_subnet_id');
}
