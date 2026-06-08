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
enum RegionNetworkEndpointGroupType implements TerraformEnum {
  serverless('SERVERLESS'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT'),
  internetIpPort('INTERNET_IP_PORT'),
  internetFqdnPort('INTERNET_FQDN_PORT'),
  gceVmIpPortmap('GCE_VM_IP_PORTMAP');

  const RegionNetworkEndpointGroupType(this.terraformValue);
  @override
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
class ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun {
  const ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun({
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
class ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudFunction {
  const ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudFunction({
    this.function,
    this.urlMask,
  });

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
class ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupAppEngine {
  const ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupAppEngine({
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

/// Factory wrapper for `google_compute_region_network_endpoint_group`.
///
/// A regional NEG that can support Serverless Products, proxying traffic to
/// external backends and providing traffic to the PSC port mapping endpoints.
///
/// When in use by a resource that can be updated, recreating a
/// RegionNetworkEndpointGroup will give a `resourceInUseByAnotherResource`
/// error because Terraform will attempt to delete the
/// RegionNetworkEndpointGroup first, but an in-use RegionNetworkEndpointGroup
/// can't be deleted in the API. Use `lifecycle.create_before_destroy` to
/// reorder the plan and create the new resource first, allowing the deletion to
/// go through successfully. This is only recommended when strictly necessary,
/// as the `create_before_destroy` directive can be passed onto further
/// dependencies, creating unexpected plans.
///
/// Slots into the L7 Application LB chain as the backend leaf:
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
/// - [localName]: Terraform local name.
/// - `name`: GCP NEG resource name. 1-63 chars, RFC1035.
/// - `region`: GCP region the NEG lives in. For serverless NEGs the region
///   must match the Cloud Run / Cloud Function region; a backend service
///   aggregates per-region NEGs into one global backend.
///
/// `networkEndpointType` defaults to
/// [RegionNetworkEndpointGroupType.serverless] (provider default). Leave
/// `null` to inherit that default, or pass an explicit value for PSC /
/// INTERNET / portmap NEGs.
///
/// Serverless target — exactly one of `cloudRun` / `cloudFunction` /
/// `appEngine` via the inline nested classes; setting more than one is
/// rejected at apply time.
///
/// PSC consumer NEG: set
/// `networkEndpointType: RegionNetworkEndpointGroupType.privateServiceConnect`,
/// `pscTargetService` (Google API bundle name or producer Service Attachment
/// self-link), and typically also `network` (optionally `subnetwork`).
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
///   cloudRun: ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun(
///     service: TfArg.ref(cloudRunService.nameRef),
///   ),
/// );
/// ```
final class GoogleComputeRegionNetworkEndpointGroup extends Resource {
  static const String tfType = 'google_compute_region_network_endpoint_group';

  GoogleComputeRegionNetworkEndpointGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    TfArg<RegionNetworkEndpointGroupType>? networkEndpointType,
    ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun?
    cloudRun,
    ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudFunction?
    cloudFunction,
    ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupAppEngine?
    appEngine,
    TfArg<String>? pscTargetService,
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
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
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
