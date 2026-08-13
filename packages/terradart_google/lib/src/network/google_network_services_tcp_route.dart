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

  final NetworkServicesTcpRouteRulesAction action;

  final List<NetworkServicesTcpRouteRulesMatches>? matches;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    if (matches != null) 'matches': [for (final e in matches!) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteRulesAction {
  const NetworkServicesTcpRouteRulesAction({
    this.idleTimeout,
    this.originalDestination,
    this.destinations,
  });

  final TfArg<String>? idleTimeout;

  final TfArg<bool>? originalDestination;

  final List<NetworkServicesTcpRouteRulesActionDestinations>? destinations;

  Map<String, Object?> encode() => {
    if (idleTimeout != null) 'idle_timeout': idleTimeout!.toTfJson(),
    if (originalDestination != null)
      'original_destination': originalDestination!.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteRulesActionDestinations {
  const NetworkServicesTcpRouteRulesActionDestinations({
    this.serviceName,
    this.weight,
  });

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_tcp_route` (derived from provider schema).
@immutable
final class NetworkServicesTcpRouteRulesMatches {
  const NetworkServicesTcpRouteRulesMatches({
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           if (meshes != null) 'meshes': meshes,
           if (gateways != null) 'gateways': gateways,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesTcpRouteSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
