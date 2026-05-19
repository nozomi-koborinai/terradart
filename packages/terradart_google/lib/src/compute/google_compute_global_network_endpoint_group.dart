// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_network_endpoint_group`.
const Set<String> _googleComputeGlobalNetworkEndpointGroupSensitive =
    <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `network_endpoint_type` for
/// `google_compute_global_network_endpoint_group`.
///
/// - [internetFqdnPort]: endpoint identified by DNS name + port. Use for
///   off-Google origins addressed by hostname (e.g. partner API,
///   third-party CDN). The hostname is resolved per-request by Google's
///   resolver.
/// - [internetIpPort]: endpoint identified by literal IP + port. Use when
///   the origin's public IP is stable and you do not want DNS in the
///   request path.
enum GlobalNetworkEndpointGroupType {
  internetFqdnPort('INTERNET_FQDN_PORT'),
  internetIpPort('INTERNET_IP_PORT');

  const GlobalNetworkEndpointGroupType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_compute_global_network_endpoint_group`
/// (provider `hashicorp/google ~> 7.0`).
///
/// A **global** Network Endpoint Group (NEG) attached to an external HTTP(S)
/// load balancer. Unlike regional NEGs, the global flavour only describes
/// endpoints that live *outside* Google Cloud — either resolved by FQDN +
/// port ([GlobalNetworkEndpointGroupType.internetFqdnPort]) or referenced
/// by raw IP + port ([GlobalNetworkEndpointGroupType.internetIpPort]).
/// Private Service Connect NEGs are modelled by the regional
/// `google_compute_region_network_endpoint_group` resource, not this one.
///
/// A global NEG is a leaf in the external Application LB chain:
///
/// ```
/// google_compute_global_forwarding_rule
///   → google_compute_target_https_proxy
///     → google_compute_url_map
///       → google_compute_backend_service
///         → google_compute_global_network_endpoint_group   (this resource)
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_global_network_endpoint_group.`).
/// - `name`: GCP NEG resource name. 1-63 chars, RFC1035.
/// - `networkEndpointType`: one of [GlobalNetworkEndpointGroupType].
///
/// Strongly recommended:
/// - `defaultPort`: default TCP port used when individual
///   `google_compute_global_network_endpoint` entries omit `port`. Match
///   the backend port your origin actually listens on (typically `443` for
///   HTTPS origins, `80` for HTTP). Leave `null` only when every endpoint
///   sets its own port.
///
/// Recreating an in-use global NEG yields a
/// `resourceInUseByAnotherResource` error because the upstream backend
/// service holds a reference. Apply `lifecycle.create_before_destroy` on
/// the NEG when name / type changes are needed.
///
/// Example (FQDN + port external origin):
/// ```dart
/// final originNeg = GoogleComputeGlobalNetworkEndpointGroup(
///   localName: 'origin',
///   name: TfArg.literal('partner-origin-neg'),
///   networkEndpointType:
///       TfArg.literal(GlobalNetworkEndpointGroupType.internetFqdnPort),
///   defaultPort: TfArg.literal(443),
/// );
/// ```
///
/// Composition pattern: extends
/// `Resource<$GoogleComputeGlobalNetworkEndpointGroup>` for runtime
/// behavior.
final class GoogleComputeGlobalNetworkEndpointGroup extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_global_network_endpoint_group';

  GoogleComputeGlobalNetworkEndpointGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<GlobalNetworkEndpointGroupType> networkEndpointType,
    TfArg<num>? defaultPort,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'network_endpoint_type': networkEndpointType,
           if (defaultPort != null) 'default_port': defaultPort,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeGlobalNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `neg.nameRef` →
  /// `${google_compute_global_network_endpoint_group.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/networkEndpointGroups/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Wire this into a backend
  /// service's `backend.group` slot when composing an external HTTP(S)
  /// LB.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
