// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../app_service/azurerm_app_service_environment_v3.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_environment_v3`.
const Set<String> _azurermAppServiceEnvironmentV3Sensitive = <String>{};

/// Factory wrapper for `azurerm_app_service_environment_v3`.
final class DataAzurermAppServiceEnvironmentV3 extends Data {
  static const String tfType = 'azurerm_app_service_environment_v3';

  DataAzurermAppServiceEnvironmentV3(
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
  Set<String> get sensitiveFields => _azurermAppServiceEnvironmentV3Sensitive;

  /// A reference to the `azurerm_app_service_environment_v3` this data source reads, for
  /// arguments typed `RefTo<AzurermAppServiceEnvironmentV3>`.
  RefTo<AzurermAppServiceEnvironmentV3> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_new_private_endpoint_connections` attribute.
  TfRef<bool> get allowNewPrivateEndpointConnections =>
      TfRef.attribute<bool>(this, 'allow_new_private_endpoint_connections');

  /// Reference to `cluster_setting` attribute.
  TfRef<List<Map<String, Object?>>> get clusterSetting =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_setting');

  /// Reference to `dedicated_host_count` attribute.
  TfRef<num> get dedicatedHostCount =>
      TfRef.attribute<num>(this, 'dedicated_host_count');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');

  /// Reference to `external_inbound_ip_addresses` attribute.
  TfRef<List<String>> get externalInboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'external_inbound_ip_addresses');

  /// Reference to `inbound_network_dependencies` attribute.
  TfRef<List<Map<String, Object?>>> get inboundNetworkDependencies =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'inbound_network_dependencies',
      );

  /// Reference to `internal_inbound_ip_addresses` attribute.
  TfRef<List<String>> get internalInboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'internal_inbound_ip_addresses');

  /// Reference to `internal_load_balancing_mode` attribute.
  TfRef<String> get internalLoadBalancingMode =>
      TfRef.attribute<String>(this, 'internal_load_balancing_mode');

  /// Reference to `ip_ssl_address_count` attribute.
  TfRef<num> get ipSslAddressCount =>
      TfRef.attribute<num>(this, 'ip_ssl_address_count');

  /// Reference to `linux_outbound_ip_addresses` attribute.
  TfRef<List<String>> get linuxOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'linux_outbound_ip_addresses');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `pricing_tier` attribute.
  TfRef<String> get pricingTier =>
      TfRef.attribute<String>(this, 'pricing_tier');

  /// Reference to `remote_debugging_enabled` attribute.
  TfRef<bool> get remoteDebuggingEnabled =>
      TfRef.attribute<bool>(this, 'remote_debugging_enabled');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `windows_outbound_ip_addresses` attribute.
  TfRef<List<String>> get windowsOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'windows_outbound_ip_addresses');

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
