// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../network/google_network_security_gateway_security_policy.dart'
    show GoogleNetworkSecurityGatewaySecurityPolicy;

/// Sensitive field paths for `google_network_services_gateway`.
const Set<String> _googleNetworkServicesGatewaySensitive = <String>{};

/// Network Services Gateway Envoy enum for `envoy_headers`.
enum NetworkServicesGatewayEnvoyHeaders implements TerraformEnum {
  none('NONE'),
  debugHeaders('DEBUG_HEADERS');

  const NetworkServicesGatewayEnvoyHeaders(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Services Gateway Ip enum for `ip_version`.
enum NetworkServicesGatewayIpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const NetworkServicesGatewayIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Services Gateway Routing enum for `routing_mode`.
enum NetworkServicesGatewayRoutingMode implements TerraformEnum {
  nextHopRoutingMode('NEXT_HOP_ROUTING_MODE'),
  explicitRoutingMode('EXPLICIT_ROUTING_MODE');

  const NetworkServicesGatewayRoutingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Services Gateway enum for `type`.
enum NetworkServicesGatewayType implements TerraformEnum {
  openMesh('OPEN_MESH'),
  secureWebGateway('SECURE_WEB_GATEWAY');

  const NetworkServicesGatewayType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `all_ports`, `ports` on `google_network_services_gateway`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allPorts(...)`.
sealed class NetworkServicesGatewayPorts {
  const NetworkServicesGatewayPorts();

  /// Sets `all_ports`.
  const factory NetworkServicesGatewayPorts.allPorts(TfArg<bool> allPorts) =
      NetworkServicesGatewayAllPorts;

  /// Sets `ports`.
  const factory NetworkServicesGatewayPorts.ports(TfArg<List<num>> ports) =
      NetworkServicesGatewayPortsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkServicesGatewayPorts.allPorts] choice: sets `all_ports`.
final class NetworkServicesGatewayAllPorts extends NetworkServicesGatewayPorts {
  const NetworkServicesGatewayAllPorts(this.allPorts);

  final TfArg<bool> allPorts;

  @override
  String get blockKey => 'all_ports';

  @override
  Map<String, Object?> encode() => {'all_ports': allPorts.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'all_ports': allPorts};
}

/// The [NetworkServicesGatewayPorts.ports] choice: sets `ports`.
final class NetworkServicesGatewayPortsChoice
    extends NetworkServicesGatewayPorts {
  const NetworkServicesGatewayPortsChoice(this.ports);

  final TfArg<List<num>> ports;

  @override
  String get blockKey => 'ports';

  @override
  Map<String, Object?> encode() => {'ports': ports.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ports': ports};
}

/// Factory wrapper for `google_network_services_gateway`.
///
/// Gateway represents the configuration for a proxy, typically a load balancer.
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway.
///
/// Network Services **gateway** — customer-managed gateway, typically a
/// Secure Web Gateway (`SECURE_WEB_GATEWAY`) or open mesh (`OPEN_MESH`).
///
/// **Cost / apply:** gcp-cost: Networking `E505-1604-58F8` Cloud SWP
/// Standard Gateway SKU `884B-E0E7-C3E4` **$1.25/h** (plus Standard Data
/// Processing `B402-76B5-458A` when traffic flows). billing-behavior:
/// Secure Web Gateway uptime bills while the gateway exists; destroy stops
/// gateway-hour charges. Too expensive for apply-smoke even once —
/// debt-only on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `networkservices.googleapis.com` before apply. SWG also needs
/// network/subnetwork (+ certificates).
final class GoogleNetworkServicesGateway extends Resource {
  static const String tfType = 'google_network_services_gateway';

  GoogleNetworkServicesGateway({
    required super.localName,
    required TfArg<String> name,
    required TfArg<NetworkServicesGatewayType> type,
    TfArg<String>? location,
    TfArg<String>? description,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    NetworkServicesGatewayPorts? ports,
    TfArg<List<String>>? certificateUrls,
    RefTo<GoogleNetworkSecurityGatewaySecurityPolicy>? gatewaySecurityPolicy,
    TfArg<String>? serverTlsPolicy,
    TfArg<String>? scope,
    TfArg<NetworkServicesGatewayRoutingMode>? routingMode,
    TfArg<NetworkServicesGatewayIpVersion>? ipVersion,
    TfArg<NetworkServicesGatewayEnvoyHeaders>? envoyHeaders,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deleteSwgAutogenRouterOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': type,
           'location': ?location,
           'description': ?description,
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           ...?ports?.argMap,
           'certificate_urls': ?certificateUrls,
           'gateway_security_policy': ?gatewaySecurityPolicy?.encodeAs('name'),
           'server_tls_policy': ?serverTlsPolicy,
           'scope': ?scope,
           'routing_mode': ?routingMode,
           'ip_version': ?ipVersion,
           'envoy_headers': ?envoyHeaders,
           'labels': ?labels,
           'delete_swg_autogen_router_on_destroy':
               ?deleteSwgAutogenRouterOnDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesGateway>`.
  RefTo<GoogleNetworkServicesGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `addresses` attribute.
  TfRef<List<String>> get addresses =>
      TfRef.attribute<List<String>>(this, 'addresses');

  /// Reference to `all_ports` attribute.
  TfRef<bool> get allPorts => TfRef.attribute<bool>(this, 'all_ports');

  /// Reference to `allow_global_access` attribute.
  TfRef<bool> get allowGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_global_access');

  /// Reference to `certificate_urls` attribute.
  TfRef<List<String>> get certificateUrls =>
      TfRef.attribute<List<String>>(this, 'certificate_urls');

  /// Reference to `delete_swg_autogen_router_on_destroy` attribute.
  TfRef<bool> get deleteSwgAutogenRouterOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_swg_autogen_router_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `envoy_headers` attribute.
  TfRef<String> get envoyHeaders =>
      TfRef.attribute<String>(this, 'envoy_headers');

  /// Reference to `gateway_security_policy` attribute.
  TfRef<String> get gatewaySecurityPolicy =>
      TfRef.attribute<String>(this, 'gateway_security_policy');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `ports` attribute.
  TfRef<List<num>> get ports => TfRef.attribute<List<num>>(this, 'ports');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `routing_mode` attribute.
  TfRef<String> get routingMode =>
      TfRef.attribute<String>(this, 'routing_mode');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicy =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
