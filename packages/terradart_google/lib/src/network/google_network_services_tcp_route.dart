// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_tcp_route`.
const Set<String> _googleNetworkServicesTcpRouteSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteRules {
  const NetworkServicesTcpRouteRules({required this.action, this.matches});

  final NetworkServicesTcpRouteAction action;

  final List<NetworkServicesTcpRouteMatches>? matches;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteAction {
  const NetworkServicesTcpRouteAction({
    this.idleTimeout,
    this.originalDestination,
    this.destinations,
  });

  final TfArg<String>? idleTimeout;

  final TfArg<bool>? originalDestination;

  final List<NetworkServicesTcpRouteDestinations>? destinations;

  Map<String, Object?> encode() => {
    'idle_timeout': ?idleTimeout?.toTfJson(),
    'original_destination': ?originalDestination?.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteDestinations {
  const NetworkServicesTcpRouteDestinations({this.serviceName, this.weight});

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteMatches {
  const NetworkServicesTcpRouteMatches({
    required this.address,
    required this.port,
  });

  final TfArg<String> address;

  final TfArg<String> port;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_tcp_route`.
///
/// TcpRoute is the resource defining how TCP traffic should be routed by a
/// Mesh/Gateway resource.
///
/// Cloud Service Mesh **TCP route** — CIDR/port matchers that attach to
/// a [GoogleNetworkServicesMesh] (or a gateway). Prefer
/// [originalDestination] in smoke stacks so no BackendService is
/// required. Config only until workloads join the mesh.
final class GoogleNetworkServicesTcpRoute extends Resource {
  static const String tfType = 'google_network_services_tcp_route';

  GoogleNetworkServicesTcpRoute({
    required super.localName,
    required TfArg<String> name,
    required List<NetworkServicesTcpRouteRules> rules,
    TfArg<List<String>>? meshes,
    TfArg<List<String>>? gateways,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
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
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           'meshes': ?meshes,
           'gateways': ?gateways,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesTcpRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesTcpRoute>`.
  RefTo<GoogleNetworkServicesTcpRoute> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateways` attribute.
  TfRef<List<String>> get gateways =>
      TfRef.attribute<List<String>>(this, 'gateways');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `meshes` attribute.
  TfRef<List<String>> get meshes =>
      TfRef.attribute<List<String>>(this, 'meshes');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
