// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../container_app/azurerm_container_app_environment.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_app_environment`.
const Set<String> _azurermContainerAppEnvironmentSensitive = <String>{};

/// Factory wrapper for `azurerm_container_app_environment`.
final class DataAzurermContainerAppEnvironment extends Data {
  static const String tfType = 'azurerm_container_app_environment';

  DataAzurermContainerAppEnvironment(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerAppEnvironmentSensitive;

  /// A reference to the `azurerm_container_app_environment` this data source reads, for
  /// arguments typed `RefTo<AzurermContainerAppEnvironment>`.
  RefTo<AzurermContainerAppEnvironment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_domain_verification_id` attribute.
  TfRef<String> get customDomainVerificationId =>
      TfRef.attribute<String>(this, 'custom_domain_verification_id');

  /// Reference to `default_domain` attribute.
  TfRef<String> get defaultDomain =>
      TfRef.attribute<String>(this, 'default_domain');

  /// Reference to `docker_bridge_cidr` attribute.
  TfRef<String> get dockerBridgeCidr =>
      TfRef.attribute<String>(this, 'docker_bridge_cidr');

  /// Reference to `infrastructure_subnet_id` attribute.
  TfRef<String> get infrastructureSubnetId =>
      TfRef.attribute<String>(this, 'infrastructure_subnet_id');

  /// Reference to `internal_load_balancer_enabled` attribute.
  TfRef<bool> get internalLoadBalancerEnabled =>
      TfRef.attribute<bool>(this, 'internal_load_balancer_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `log_analytics_workspace_name` attribute.
  TfRef<String> get logAnalyticsWorkspaceName =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_name');

  /// Reference to `platform_reserved_cidr` attribute.
  TfRef<String> get platformReservedCidr =>
      TfRef.attribute<String>(this, 'platform_reserved_cidr');

  /// Reference to `platform_reserved_dns_ip_address` attribute.
  TfRef<String> get platformReservedDnsIpAddress =>
      TfRef.attribute<String>(this, 'platform_reserved_dns_ip_address');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `static_ip_address` attribute.
  TfRef<String> get staticIpAddress =>
      TfRef.attribute<String>(this, 'static_ip_address');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
