// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_tls_route`.
const Set<String> _googleNetworkServicesTlsRouteSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteRules {
  const NetworkServicesTlsRouteRules({
    required this.action,
    required this.matches,
  });

  final NetworkServicesTlsRouteRulesAction action;

  final List<NetworkServicesTlsRouteRulesMatches> matches;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'matches': [for (final e in matches) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteRulesAction {
  const NetworkServicesTlsRouteRulesAction({this.destinations});

  final List<NetworkServicesTlsRouteRulesActionDestinations>? destinations;

  Map<String, Object?> encode() => {
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteRulesActionDestinations {
  const NetworkServicesTlsRouteRulesActionDestinations({
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
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteRulesMatches {
  const NetworkServicesTlsRouteRulesMatches({this.alpn, this.sniHost});

  final TfArg<List<Object?>>? alpn;

  final TfArg<List<Object?>>? sniHost;

  Map<String, Object?> encode() => {
    if (alpn != null) 'alpn': alpn!.toTfJson(),
    if (sniHost != null) 'sni_host': sniHost!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_tls_route`.
///
/// TlsRoute defines how traffic should be routed based on SNI and other
/// matching L3 attributes.
///
/// Cloud Service Mesh **TLS route** — SNI/ALPN matchers that attach to
/// a [GoogleNetworkServicesMesh] (or a gateway / target proxy). Config
/// only until workloads join the mesh; do not attach a
/// [GoogleNetworkServicesGateway] in apply-smoke (SWG is $1.25/h).
final class GoogleNetworkServicesTlsRoute extends Resource {
  static const String tfType = 'google_network_services_tls_route';

  GoogleNetworkServicesTlsRoute({
    required super.localName,
    required TfArg<String> name,
    required List<NetworkServicesTlsRouteRules> rules,
    TfArg<List<String>>? meshes,
    TfArg<List<String>>? gateways,
    TfArg<List<String>>? targetProxies,
    TfArg<String>? location,
    TfArg<String>? description,
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
           if (targetProxies != null) 'target_proxies': targetProxies,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesTlsRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
