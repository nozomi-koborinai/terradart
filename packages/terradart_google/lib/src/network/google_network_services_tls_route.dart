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

  final NetworkServicesTlsRouteAction action;

  final List<NetworkServicesTlsRouteMatches> matches;

  Map<String, Object?> encode() => {
    'action': action.encode(),
    'matches': [for (final e in matches) e.encode()],
  };
}

/// Typed helper for the `rules.action` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteAction {
  const NetworkServicesTlsRouteAction({this.destinations});

  final List<NetworkServicesTlsRouteDestinations>? destinations;

  Map<String, Object?> encode() => {
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `rules.action.destinations` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteDestinations {
  const NetworkServicesTlsRouteDestinations({this.serviceName, this.weight});

  final TfArg<String>? serviceName;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `rules.matches` block of
/// `google_network_services_tls_route` (derived from provider schema).
@immutable
final class NetworkServicesTlsRouteMatches {
  const NetworkServicesTlsRouteMatches({this.alpn, this.sniHost});

  final TfArg<List<String>>? alpn;

  final TfArg<List<String>>? sniHost;

  Map<String, Object?> encode() => {
    'alpn': ?alpn?.toTfJson(),
    'sni_host': ?sniHost?.toTfJson(),
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

  GoogleNetworkServicesTlsRoute(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
           'meshes': ?meshes,
           'gateways': ?gateways,
           'target_proxies': ?targetProxies,
           'location': ?location,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesTlsRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesTlsRoute>`.
  RefTo<GoogleNetworkServicesTlsRoute> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

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

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `meshes` attribute.
  TfRef<List<String>> get meshes =>
      TfRef.attribute<List<String>>(this, 'meshes');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `target_proxies` attribute.
  TfRef<List<String>> get targetProxies =>
      TfRef.attribute<List<String>>(this, 'target_proxies');
}
