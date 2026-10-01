// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

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
///   with [GoogleComputeRegionNetworkEndpointGroup.serverless].
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
class ComputeRegionNetworkEndpointGroupCloudRun {
  const ComputeRegionNetworkEndpointGroupCloudRun({
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
class ComputeRegionNetworkEndpointGroupCloudFunction {
  const ComputeRegionNetworkEndpointGroupCloudFunction({
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
class ComputeRegionNetworkEndpointGroupAppEngine {
  const ComputeRegionNetworkEndpointGroupAppEngine({
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

/// At most one of `cloud_run`, `cloud_function`, `app_engine` on `google_compute_region_network_endpoint_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudRun(...)`.
sealed class ComputeRegionNetworkEndpointGroupServerless {
  const ComputeRegionNetworkEndpointGroupServerless();

  /// Sets `cloud_run`.
  const factory ComputeRegionNetworkEndpointGroupServerless.cloudRun(
    ComputeRegionNetworkEndpointGroupCloudRun cloudRun,
  ) = ComputeRegionNetworkEndpointGroupServerlessCloudRun;

  /// Sets `cloud_function`.
  const factory ComputeRegionNetworkEndpointGroupServerless.cloudFunction(
    ComputeRegionNetworkEndpointGroupCloudFunction cloudFunction,
  ) = ComputeRegionNetworkEndpointGroupServerlessCloudFunction;

  /// Sets `app_engine`.
  const factory ComputeRegionNetworkEndpointGroupServerless.appEngine(
    ComputeRegionNetworkEndpointGroupAppEngine appEngine,
  ) = ComputeRegionNetworkEndpointGroupServerlessAppEngine;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRegionNetworkEndpointGroupServerless.cloudRun] choice: sets `cloud_run`.
final class ComputeRegionNetworkEndpointGroupServerlessCloudRun
    extends ComputeRegionNetworkEndpointGroupServerless {
  const ComputeRegionNetworkEndpointGroupServerlessCloudRun(this.cloudRun);

  final ComputeRegionNetworkEndpointGroupCloudRun cloudRun;

  @override
  String get blockKey => 'cloud_run';

  @override
  Map<String, Object?> encode() => {
    'cloud_run': [cloudRun.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloud_run': TfArg.literal([cloudRun.toArgMap()]),
  };
}

/// The [ComputeRegionNetworkEndpointGroupServerless.cloudFunction] choice: sets `cloud_function`.
final class ComputeRegionNetworkEndpointGroupServerlessCloudFunction
    extends ComputeRegionNetworkEndpointGroupServerless {
  const ComputeRegionNetworkEndpointGroupServerlessCloudFunction(
    this.cloudFunction,
  );

  final ComputeRegionNetworkEndpointGroupCloudFunction cloudFunction;

  @override
  String get blockKey => 'cloud_function';

  @override
  Map<String, Object?> encode() => {
    'cloud_function': [cloudFunction.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloud_function': TfArg.literal([cloudFunction.toArgMap()]),
  };
}

/// The [ComputeRegionNetworkEndpointGroupServerless.appEngine] choice: sets `app_engine`.
final class ComputeRegionNetworkEndpointGroupServerlessAppEngine
    extends ComputeRegionNetworkEndpointGroupServerless {
  const ComputeRegionNetworkEndpointGroupServerlessAppEngine(this.appEngine);

  final ComputeRegionNetworkEndpointGroupAppEngine appEngine;

  @override
  String get blockKey => 'app_engine';

  @override
  Map<String, Object?> encode() => {
    'app_engine': [appEngine.toArgMap()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'app_engine': TfArg.literal([appEngine.toArgMap()]),
  };
}

/// Typed helper for the `psc_data` block of
/// `google_compute_region_network_endpoint_group` (derived from provider schema).
@immutable
final class ComputeRegionNetworkEndpointGroupPscData {
  const ComputeRegionNetworkEndpointGroupPscData({this.producerPort});

  final TfArg<String>? producerPort;

  Map<String, Object?> encode() => {'producer_port': ?producerPort?.toTfJson()};
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
/// ```text
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
/// Serverless target — `serverless` takes at most one of `.cloudRun(...)` /
/// `.cloudFunction(...)` / `.appEngine(...)`.
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
///   serverless: .cloudRun(
///     ComputeRegionNetworkEndpointGroupCloudRun(
///       service: TfArg.ref(cloudRunService.nameRef),
///     ),
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
    ComputeRegionNetworkEndpointGroupServerless? serverless,
    TfArg<String>? pscTargetService,
    ComputeRegionNetworkEndpointGroupPscData? pscData,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           'network_endpoint_type': ?networkEndpointType,
           ...?serverless?.argMap,
           'psc_target_service': ?pscTargetService,
           if (pscData != null) 'psc_data': TfArg.literal(pscData.encode()),
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkEndpointGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkEndpointGroup>`.
  RefTo<GoogleComputeRegionNetworkEndpointGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_endpoint_type` attribute.
  TfRef<String> get networkEndpointTypeRef =>
      TfRef.attribute<String>(this, 'network_endpoint_type');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `psc_target_service` attribute.
  TfRef<String> get pscTargetServiceRef =>
      TfRef.attribute<String>(this, 'psc_target_service');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetworkRef =>
      TfRef.attribute<String>(this, 'subnetwork');
}
