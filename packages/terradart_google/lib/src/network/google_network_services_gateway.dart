// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
      NetworkServicesGatewayPortsAllPorts;

  /// Sets `ports`.
  const factory NetworkServicesGatewayPorts.ports(TfArg<List<num>> ports) =
      NetworkServicesGatewayPortsPorts;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkServicesGatewayPorts.allPorts] choice: sets `all_ports`.
final class NetworkServicesGatewayPortsAllPorts
    extends NetworkServicesGatewayPorts {
  const NetworkServicesGatewayPortsAllPorts(this.allPorts);

  final TfArg<bool> allPorts;

  @override
  String get blockKey => 'all_ports';

  @override
  Map<String, Object?> encode() => {'all_ports': allPorts.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'all_ports': allPorts};
}

/// The [NetworkServicesGatewayPorts.ports] choice: sets `ports`.
final class NetworkServicesGatewayPortsPorts
    extends NetworkServicesGatewayPorts {
  const NetworkServicesGatewayPortsPorts(this.ports);

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
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    NetworkServicesGatewayPorts? ports,
    TfArg<List<String>>? certificateUrls,
    TfArg<String>? gatewaySecurityPolicy,
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
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (network != null) 'network': network,
           if (subnetwork != null) 'subnetwork': subnetwork,
           ...?ports?.argMap,
           if (certificateUrls != null) 'certificate_urls': certificateUrls,
           if (gatewaySecurityPolicy != null)
             'gateway_security_policy': gatewaySecurityPolicy,
           if (serverTlsPolicy != null) 'server_tls_policy': serverTlsPolicy,
           if (scope != null) 'scope': scope,
           if (routingMode != null) 'routing_mode': routingMode,
           if (ipVersion != null) 'ip_version': ipVersion,
           if (envoyHeaders != null) 'envoy_headers': envoyHeaders,
           if (labels != null) 'labels': labels,
           if (deleteSwgAutogenRouterOnDestroy != null)
             'delete_swg_autogen_router_on_destroy':
                 deleteSwgAutogenRouterOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesGateway>`.
  RefTo<GoogleNetworkServicesGateway> get ref => RefTo.of(this);

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
