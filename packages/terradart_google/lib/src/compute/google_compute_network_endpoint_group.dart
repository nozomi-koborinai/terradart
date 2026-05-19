// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_endpoint_group`.
const Set<String> _googleComputeNetworkEndpointGroupSensitive = <String>{};

/// `network_endpoint_type` for `google_compute_network_endpoint_group`.
///
/// Default in the GCP API is [gceVmIpPort], which is the dominant value
/// for L7 LB with VM-backed endpoints (each endpoint is a `(VM IP, port)`
/// pair). [gceVmIp] is used for L4 internal LB with VMs as endpoints
/// (port is implicit). [nonGcpPrivateIpPort] is reserved for **hybrid
/// connectivity** NEGs that point at on-prem / multi-cloud private IPs
/// reachable via Cloud VPN or Interconnect.
///
/// [internetIpPort], [internetFqdnPort], [serverless], and
/// [privateServiceConnect] are accepted by the schema on this zonal
/// resource for completeness, but practical use is rarer than on the
/// global / regional siblings: internet-fronted endpoints are typically
/// modeled with `GoogleComputeGlobalNetworkEndpointGroup`, while
/// Serverless and PSC endpoints are typically modeled with
/// `GoogleComputeRegionNetworkEndpointGroup`. Prefer those resources
/// for the dominant patterns; reach for the zonal variants only when
/// you have a specific zonal-scoped use case.
enum NetworkEndpointGroupType {
  gceVmIpPort('GCE_VM_IP_PORT'),
  gceVmIp('GCE_VM_IP'),
  nonGcpPrivateIpPort('NON_GCP_PRIVATE_IP_PORT'),
  internetIpPort('INTERNET_IP_PORT'),
  internetFqdnPort('INTERNET_FQDN_PORT'),
  serverless('SERVERLESS'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT'),
  gceVmIpDedicatedBackend('GCE_VM_IP_DEDICATED_BACKEND');

  const NetworkEndpointGroupType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_compute_network_endpoint_group` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Manages a **zonal** Network Endpoint Group (NEG). A NEG is a collection
/// of IP+port combinations that backend services in HTTP(S), TCP proxy, and
/// SSL proxy load balancers can target at a granularity finer than whole
/// VM instances.
///
/// Use this resource for the dominant L7 LB pattern: zonal VM-IP+port
/// endpoints in a single subnet, attached to a backend service. For
/// internet-fronted (hybrid) endpoints with no GCP backing VM, see
/// `GoogleComputeGlobalNetworkEndpointGroup`. For regional Serverless / PSC
/// NEGs, see `GoogleComputeRegionNetworkEndpointGroup`.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_network_endpoint_group.`).
/// - `name`: GCP-internal NEG resource name. Must comply with RFC1035.
/// - `zone`: the zone the NEG (and its member endpoints) lives in.
/// - `network`: self-link of the VPC the endpoints belong to. Pass
///   `TfArg.ref(vpc.selfLink)`.
///
/// Recreating a NEG that is already attached to a backend service produces
/// a `resourceInUseByAnotherResource` error; use
/// `lifecycle.create_before_destroy` (or detach first) when destructive
/// changes are unavoidable.
///
/// Example (zonal VM-IP+port NEG fronting a regional internal L7 LB):
/// ```dart
/// final neg = GoogleComputeNetworkEndpointGroup(
///   localName: 'app_neg',
///   name: TfArg.literal('app-neg-usc1a'),
///   zone: TfArg.literal('us-central1-a'),
///   network: TfArg.ref(vpc.selfLink),
///   subnetwork: TfArg.ref(subnet.selfLink),
///   networkEndpointType:
///       TfArg.literal(NetworkEndpointGroupType.gceVmIpPort),
///   defaultPort: TfArg.literal(8080),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleComputeNetworkEndpointGroup>`
/// for runtime behavior.
final class GoogleComputeNetworkEndpointGroup extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_network_endpoint_group';

  GoogleComputeNetworkEndpointGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? zone,
    required TfArg<String> network,
    TfArg<String>? subnetwork,
    TfArg<NetworkEndpointGroupType>? networkEndpointType,
    TfArg<num>? defaultPort,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (zone != null) 'zone': zone,
           'network': network,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (networkEndpointType != null)
             'network_endpoint_type': networkEndpointType,
           if (defaultPort != null) 'default_port': defaultPort,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute. Use this when downstream consumers
  /// (e.g. `google_compute_backend_service.backend[*].group`) need the
  /// NEG by name rather than full self_link.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/zones/{zone}/networkEndpointGroups/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Pass this as the
  /// `group` argument of a `google_compute_backend_service` backend block
  /// when wiring the NEG into a load balancer.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `size` attribute — the live count of endpoints registered
  /// in the group. Available after apply.
  TfRef<num> get sizeRef => TfRef.attribute<num>(this, 'size');
}
