// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_endpoint_group`.
const Set<String> _googleComputeRegionNetworkEndpointGroupSensitive =
    <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `network_endpoint_type` for
/// `google_compute_region_network_endpoint_group`. Defaults to
/// [serverless] on the API side.
///
/// - [serverless]: the primary Wave 6 hookup — fronts a Cloud Run service,
///   Cloud Functions Gen 2 function, or App Engine flex service. Pair
///   with exactly one of
///   [GoogleComputeRegionNetworkEndpointGroup.cloudRun],
///   [GoogleComputeRegionNetworkEndpointGroup.cloudFunction], or
///   [GoogleComputeRegionNetworkEndpointGroup.appEngine].
/// - [privateServiceConnect]: PSC consumer NEG fronting a Google API
///   bundle or a producer-published Service Attachment. Pair with
///   [GoogleComputeRegionNetworkEndpointGroup.pscTargetService] and (for
///   non-Google-API targets) [GoogleComputeRegionNetworkEndpointGroup.network].
/// - [internetIpPort]: regional INTERNET NEG addressed by literal IP +
///   port.
/// - [internetFqdnPort]: regional INTERNET NEG addressed by DNS name +
///   port.
/// - [gceVmIpPortmap]: port-mapping NEG attached to a VM NIC. Niche; used
///   when an L4 internal passthrough LB needs to fan-out across multiple
///   destination ports on each backend VM.
enum RegionNetworkEndpointGroupType {
  serverless('SERVERLESS'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT'),
  internetIpPort('INTERNET_IP_PORT'),
  internetFqdnPort('INTERNET_FQDN_PORT'),
  gceVmIpPortmap('GCE_VM_IP_PORTMAP');

  const RegionNetworkEndpointGroupType(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// cloud_run (list block, max_items=1)
// ===========================================================================

/// `cloud_run` slot of
/// `google_compute_region_network_endpoint_group`. Only valid when
/// `networkEndpointType` is [RegionNetworkEndpointGroupType.serverless]
/// and mutually exclusive with `cloudFunction` / `appEngine`.
///
/// Provide [service] to target a specific Cloud Run service by name, or
/// [urlMask] to route across multiple services via a URL template (the
/// schema's `at_least_one_of` rule requires at least one of the two). The
/// optional [tag] pins traffic to a named revision tag for fine-grained
/// canary routing.
@immutable
class RegionNetworkEndpointGroupCloudRun {
  const RegionNetworkEndpointGroupCloudRun({
    this.service,
    this.tag,
    this.urlMask,
  });

  /// Cloud Run service name (1-63 chars, RFC1035). Example: `'run-service'`.
  /// At least one of [service] or [urlMask] must be set.
  final TfArg<String>? service;

  /// Cloud Run revision tag for fine-grained traffic routing. 1-63 chars,
  /// RFC1035. Example: `'revision-0010'`.
  final TfArg<String>? tag;

  /// URL mask template for parsing `service` and `tag` from the request
  /// URL. Allows one NEG + backend service to fan out to many Cloud Run
  /// services. At least one of [service] or [urlMask] must be set.
  final TfArg<String>? urlMask;

  Map<String, Object?> toArgMap() => {
    if (service != null) 'service': service!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (urlMask != null) 'url_mask': urlMask!.toTfJson(),
  };
}

// ===========================================================================
// cloud_function (list block, max_items=1)
// ===========================================================================

/// `cloud_function` slot of
/// `google_compute_region_network_endpoint_group`. Only valid when
/// `networkEndpointType` is [RegionNetworkEndpointGroupType.serverless]
/// and mutually exclusive with `cloudRun` / `appEngine`.
///
/// Provide [function] to target a specific Cloud Function by name, or
/// [urlMask] to route across multiple functions via a URL template (the
/// schema's `at_least_one_of` rule requires at least one of the two).
@immutable
class RegionNetworkEndpointGroupCloudFunction {
  const RegionNetworkEndpointGroupCloudFunction({this.function, this.urlMask});

  /// User-defined Cloud Function name. Case-sensitive, 1-63 chars.
  /// Example: `'func1'`. At least one of [function] or [urlMask] must be
  /// set.
  final TfArg<String>? function;

  /// URL mask template for parsing `function` from the request URL.
  /// Allows one NEG + backend service to fan out to many Cloud Functions.
  /// At least one of [function] or [urlMask] must be set.
  final TfArg<String>? urlMask;

  Map<String, Object?> toArgMap() => {
    if (function != null) 'function': function!.toTfJson(),
    if (urlMask != null) 'url_mask': urlMask!.toTfJson(),
  };
}

// ===========================================================================
// app_engine (list block, max_items=1)
// ===========================================================================

/// `app_engine` slot of
/// `google_compute_region_network_endpoint_group`. Only valid when
/// `networkEndpointType` is [RegionNetworkEndpointGroupType.serverless]
/// and mutually exclusive with `cloudRun` / `cloudFunction`.
///
/// All three fields are optional — an empty block targets the App Engine
/// app's *default* service / version. Populate [service] / [version] to
/// pin a specific service or version, or supply [urlMask] to route across
/// many at once.
@immutable
class RegionNetworkEndpointGroupAppEngine {
  const RegionNetworkEndpointGroupAppEngine({
    this.service,
    this.version,
    this.urlMask,
  });

  /// Optional serving service name (1-63 chars, RFC1035). Example:
  /// `'default'`, `'my-service'`.
  final TfArg<String>? service;

  /// Optional serving version (1-63 chars, RFC1035). Example: `'v1'`,
  /// `'v2'`.
  final TfArg<String>? version;

  /// URL mask template for parsing `service` and `version` from the
  /// request URL. Allows one NEG + backend service to fan out to many
  /// App Engine services / versions.
  final TfArg<String>? urlMask;

  Map<String, Object?> toArgMap() => {
    if (service != null) 'service': service!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
    if (urlMask != null) 'url_mask': urlMask!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_network_endpoint_group`
/// (provider `hashicorp/google ~> 7.0`).
///
/// A **regional** Network Endpoint Group (NEG). The dominant Wave 6 use
/// case is fronting a serverless runtime —
/// [RegionNetworkEndpointGroupType.serverless] — so an HTTPS Application
/// Load Balancer can route traffic into Cloud Run, Cloud Functions
/// (Gen 2), or App Engine flex. Beyond serverless, the same resource also
/// models Private Service Connect consumers and INTERNET origins that
/// must be expressed regionally rather than globally.
///
/// A serverless NEG slots into the L7 Application LB chain as the leaf:
///
/// ```
/// google_compute_global_forwarding_rule
///   → google_compute_target_https_proxy
///     → google_compute_url_map
///       → google_compute_backend_service
///         → google_compute_region_network_endpoint_group   (this resource)
/// ```
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_network_endpoint_group.`).
/// - `name`: GCP NEG resource name. 1-63 chars, RFC1035.
/// - `region`: GCP region the NEG (and its target service) lives in. For
///   serverless NEGs the region must match the Cloud Run / Cloud Function
///   region; the LB backend service then aggregates per-region NEGs into
///   one global backend.
///
/// `networkEndpointType` defaults to
/// [RegionNetworkEndpointGroupType.serverless] (provider default), which
/// is the right value for Cloud Run / Cloud Functions Gen 2 / App Engine
/// flex hookup — by far the dominant Wave 6 use case. Leave `null` to
/// inherit that default, or pass an explicit value for PSC / INTERNET /
/// portmap NEGs.
///
/// Serverless target (exactly one of `cloudRun` / `cloudFunction` /
/// `appEngine`): use the inline nested classes
/// [RegionNetworkEndpointGroupCloudRun],
/// [RegionNetworkEndpointGroupCloudFunction], or
/// [RegionNetworkEndpointGroupAppEngine]. Setting more than one is
/// rejected at apply time.
///
/// PSC consumer NEG: set
/// `networkEndpointType: RegionNetworkEndpointGroupType.privateServiceConnect`,
/// `pscTargetService` (Google API bundle name or producer Service
/// Attachment self-link), and typically also `network` (and optionally
/// `subnetwork` for explicit subnet selection).
///
/// INTERNET regional NEGs
/// ([RegionNetworkEndpointGroupType.internetIpPort] or
/// [RegionNetworkEndpointGroupType.internetFqdnPort]) describe off-Google
/// origins expressed regionally; pair with a regional external Application
/// Load Balancer.
///
/// Example (serverless NEG fronting a Cloud Run service):
/// ```dart
/// final crNeg = GoogleComputeRegionNetworkEndpointGroup(
///   localName: 'cr_neg',
///   name: TfArg.literal('cloudrun-neg'),
///   region: TfArg.literal('asia-northeast1'),
///   cloudRun: RegionNetworkEndpointGroupCloudRun(
///     service: TfArg.ref(cloudRunService.nameRef),
///   ),
/// );
/// ```
///
/// Composition pattern: extends
/// `Resource<$GoogleComputeRegionNetworkEndpointGroup>` for runtime
/// behavior.
final class GoogleComputeRegionNetworkEndpointGroup extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_network_endpoint_group';

  GoogleComputeRegionNetworkEndpointGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    TfArg<RegionNetworkEndpointGroupType>? networkEndpointType,
    RegionNetworkEndpointGroupCloudRun? cloudRun,
    RegionNetworkEndpointGroupCloudFunction? cloudFunction,
    RegionNetworkEndpointGroupAppEngine? appEngine,
    TfArg<String>? pscTargetService,
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'region': region,
           if (networkEndpointType != null)
             'network_endpoint_type': networkEndpointType,
           if (cloudRun != null)
             'cloud_run': TfArg.literal([cloudRun.toArgMap()]),
           if (cloudFunction != null)
             'cloud_function': TfArg.literal([cloudFunction.toArgMap()]),
           if (appEngine != null)
             'app_engine': TfArg.literal([appEngine.toArgMap()]),
           if (pscTargetService != null) 'psc_target_service': pscTargetService,
           if (network != null) 'network': network,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeRegionNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `neg.nameRef` →
  /// `${google_compute_region_network_endpoint_group.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/networkEndpointGroups/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Wire this into a backend
  /// service's `backend.group` slot when composing the Application LB.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
