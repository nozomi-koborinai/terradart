// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_app_service_environment_v3`.
const Set<String> _azurermAppServiceEnvironmentV3Sensitive = <String>{};

/// App Service Environment V3 Internal Load Balancing enum for `internal_load_balancing_mode`.
extension type const AppServiceEnvironmentV3InternalLoadBalancingMode._(
  TfArg<String> _
) implements TfArg<String> {
  AppServiceEnvironmentV3InternalLoadBalancingMode.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceEnvironmentV3InternalLoadBalancingMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceEnvironmentV3InternalLoadBalancingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const none = AppServiceEnvironmentV3InternalLoadBalancingMode._(
    TfArgLiteral('None'),
  );
  static const webPublishing =
      AppServiceEnvironmentV3InternalLoadBalancingMode._(
        TfArgLiteral('Web, Publishing'),
      );

  static const List<AppServiceEnvironmentV3InternalLoadBalancingMode> values = [
    none,
    webPublishing,
  ];
}

/// At most one of `dedicated_host_count`, `zone_redundant` on `azurerm_app_service_environment_v3`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dedicatedHostCount(...)`.
sealed class AppServiceEnvironmentV3Placement {
  const AppServiceEnvironmentV3Placement();

  /// Sets `dedicated_host_count`.
  const factory AppServiceEnvironmentV3Placement.dedicatedHostCount(
    TfArg<num> dedicatedHostCount,
  ) = AppServiceEnvironmentV3PlacementDedicatedHostCount;

  /// Sets `zone_redundant`.
  const factory AppServiceEnvironmentV3Placement.zoneRedundant(
    TfArg<bool> zoneRedundant,
  ) = AppServiceEnvironmentV3PlacementZoneRedundant;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppServiceEnvironmentV3Placement.dedicatedHostCount] choice: sets `dedicated_host_count`.
final class AppServiceEnvironmentV3PlacementDedicatedHostCount
    extends AppServiceEnvironmentV3Placement {
  const AppServiceEnvironmentV3PlacementDedicatedHostCount(
    this.dedicatedHostCount,
  );

  final TfArg<num> dedicatedHostCount;

  @internal
  @override
  String get blockKey => 'dedicated_host_count';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dedicated_host_count': dedicatedHostCount.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dedicated_host_count': dedicatedHostCount,
  };
}

/// The [AppServiceEnvironmentV3Placement.zoneRedundant] choice: sets `zone_redundant`.
final class AppServiceEnvironmentV3PlacementZoneRedundant
    extends AppServiceEnvironmentV3Placement {
  const AppServiceEnvironmentV3PlacementZoneRedundant(this.zoneRedundant);

  final TfArg<bool> zoneRedundant;

  @internal
  @override
  String get blockKey => 'zone_redundant';

  @internal
  @override
  Map<String, Object?> encode() => {'zone_redundant': zoneRedundant.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'zone_redundant': zoneRedundant};
}

/// Typed helper for the `cluster_setting` block of
/// `azurerm_app_service_environment_v3` (derived from provider schema).
@immutable
final class AppServiceEnvironmentV3ClusterSetting {
  const AppServiceEnvironmentV3ClusterSetting({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_app_service_environment_v3`.
final class AzurermAppServiceEnvironmentV3 extends Resource {
  static const String tfType = 'azurerm_app_service_environment_v3';

  AzurermAppServiceEnvironmentV3(
    super.localName, {
    TfArg<bool>? allowNewPrivateEndpointConnections,
    AppServiceEnvironmentV3Placement? placement,
    AppServiceEnvironmentV3InternalLoadBalancingMode? internalLoadBalancingMode,
    required TfArg<String> name,
    TfArg<bool>? remoteDebuggingEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    List<AppServiceEnvironmentV3ClusterSetting>? clusterSetting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_new_private_endpoint_connections':
               ?allowNewPrivateEndpointConnections,
           ...?placement?.argMap,
           'internal_load_balancing_mode': ?internalLoadBalancingMode,
           'name': name,
           'remote_debugging_enabled': ?remoteDebuggingEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           if (clusterSetting != null)
             'cluster_setting': TfArg.literal([
               for (final e in clusterSetting) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppServiceEnvironmentV3Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceEnvironmentV3>`.
  RefTo<AzurermAppServiceEnvironmentV3> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `windows_outbound_ip_addresses` attribute.
  TfRef<List<String>> get windowsOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'windows_outbound_ip_addresses');

  /// Reference to `allow_new_private_endpoint_connections` attribute.
  TfRef<bool> get allowNewPrivateEndpointConnections =>
      TfRef.attribute<bool>(this, 'allow_new_private_endpoint_connections');

  /// Reference to `dedicated_host_count` attribute.
  TfRef<num> get dedicatedHostCount =>
      TfRef.attribute<num>(this, 'dedicated_host_count');

  /// Reference to `internal_load_balancing_mode` attribute.
  TfRef<String> get internalLoadBalancingMode =>
      TfRef.attribute<String>(this, 'internal_load_balancing_mode');

  /// Reference to `remote_debugging_enabled` attribute.
  TfRef<bool> get remoteDebuggingEnabled =>
      TfRef.attribute<bool>(this, 'remote_debugging_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');
}
