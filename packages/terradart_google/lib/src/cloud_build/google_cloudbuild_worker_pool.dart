// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudbuild_worker_pool`.
const Set<String> _googleCloudbuildWorkerPoolSensitive = <String>{};

// ===========================================================================
// Nested-block helper classes (worker pool has no top-level enums; all
// strings are free-form — `machine_type` is open-ended, the API treats
// `state` as Output-only, and `location` is a region string).
// ===========================================================================

/// `worker_config` block. Configures the VM shape used for workers in
/// this pool. All fields are optional — omitting the block leaves Cloud
/// Build's defaults (`n1-standard-1`, standard disk, public egress).
@immutable
class CloudBuildWorkerPoolWorkerConfig {
  const CloudBuildWorkerPoolWorkerConfig({
    this.diskSizeGb,
    this.machineType,
    this.noExternalIp,
    this.enableNestedVirtualization,
  });

  /// Size of the worker boot disk in GB. Specify up to 1000. `0`
  /// (the documented sentinel) means "use the Cloud Build default".
  final TfArg<int>? diskSizeGb;

  /// Machine type, e.g. `'n1-standard-1'`, `'e2-medium'`,
  /// `'e2-standard-4'`. Free-form: the provider passes the string
  /// through to the Cloud Build API.
  final TfArg<String>? machineType;

  /// When `true`, workers are created without any public IP, blocking
  /// egress to the public internet. Pair with [CloudBuildWorkerPoolNetworkConfig]
  /// (VPC peering) or [CloudBuildWorkerPoolPrivateServiceConnect] when
  /// the build still needs registry / API access.
  final TfArg<bool>? noExternalIp;

  /// Enables nested virtualization on the worker (only honored by
  /// machine types that support it). Defaults to `false`.
  final TfArg<bool>? enableNestedVirtualization;

  Map<String, Object?> toArgMap() => {
    if (diskSizeGb != null) 'disk_size_gb': diskSizeGb!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (noExternalIp != null) 'no_external_ip': noExternalIp!.toTfJson(),
    if (enableNestedVirtualization != null)
      'enable_nested_virtualization': enableNestedVirtualization!.toTfJson(),
  };
}

/// `network_config` block. Legacy VPC-peering form: the workers are
/// peered to a customer VPC via Service Networking. Mutually exclusive
/// with [CloudBuildWorkerPoolPrivateServiceConnect]; pick at most one.
/// Immutable after pool creation.
@immutable
class CloudBuildWorkerPoolNetworkConfig {
  const CloudBuildWorkerPoolNetworkConfig({
    required this.peeredNetwork,
    this.peeredNetworkIpRange,
  });

  /// Self-link of the VPC the workers peer to. Must use the
  /// `projects/{project_number}/global/networks/{network}` form — pass
  /// `TfArg.ref(vpc.selfLink)` so the value resolves correctly. Note
  /// the path requires a project NUMBER, not a project ID.
  final TfArg<String> peeredNetwork;

  /// Optional CIDR range allocated to workers inside the peered VPC.
  /// Specify either a full CIDR (e.g. `'192.168.0.0/29'`) or just a
  /// prefix size (e.g. `'/24'`) to let Cloud Build pick the base.
  /// Defaults to `/24` when omitted.
  final TfArg<String>? peeredNetworkIpRange;

  Map<String, Object?> toArgMap() => {
    'peered_network': peeredNetwork.toTfJson(),
    if (peeredNetworkIpRange != null)
      'peered_network_ip_range': peeredNetworkIpRange!.toTfJson(),
  };
}

/// `private_service_connect` block. Newer alternative to
/// [CloudBuildWorkerPoolNetworkConfig]: workers connect to a Network
/// Attachment in the customer VPC via PSC. Mutually exclusive with
/// [CloudBuildWorkerPoolNetworkConfig]; pick at most one. Immutable
/// after pool creation.
@immutable
class CloudBuildWorkerPoolPrivateServiceConnect {
  const CloudBuildWorkerPoolPrivateServiceConnect({
    required this.networkAttachment,
    this.routeAllTraffic,
  });

  /// Self-link of the Network Attachment that the worker network
  /// interface is connected to. Format:
  /// `projects/{project}/regions/{region}/networkAttachments/{attachment}`.
  /// The attachment region MUST equal the pool's [location].
  final TfArg<String> networkAttachment;

  /// When `true`, **all** worker traffic (including public-internet
  /// destinations) is routed through the PSC interface — set up Cloud
  /// NAT in the customer subnet if egress to the public internet is
  /// required. When `false` (default), only RFC1918 ranges
  /// (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) are routed via PSC.
  final TfArg<bool>? routeAllTraffic;

  Map<String, Object?> toArgMap() => {
    'network_attachment': networkAttachment.toTfJson(),
    if (routeAllTraffic != null)
      'route_all_traffic': routeAllTraffic!.toTfJson(),
  };
}

/// Factory wrapper for `google_cloudbuild_worker_pool` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **private pool** runs Cloud Build jobs on dedicated worker VMs inside
/// a project-private network, providing isolation from the shared default
/// pool. Triggers reference a pool via `build.options.pool` (the worker
/// pool's `id` attribute). Worker pools are **regional** — pin the region
/// via [location] and reference the pool from triggers in the same region.
///
/// **Network invariant**: pick at most ONE of [networkConfig] (legacy VPC
/// peering form, uses `network_config.peered_network` + an optional CIDR)
/// or [privateServiceConnect] (newer Private Service Connect form, uses
/// `private_service_connect.network_attachment`). Omitting both leaves
/// workers on Google's service-producer network (no VPC reach).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_cloudbuild_worker_pool.`).
/// - `name`: pool name (1-63 chars). Forces replacement when changed.
/// - `location`: GCP region (e.g. `'asia-northeast1'`). Required.
///
/// Example (minimal regional pool on the service-producer network):
/// ```dart
/// final pool = GoogleCloudbuildWorkerPool(
///   localName: 'main_pool',
///   name: TfArg.literal('main-pool'),
///   location: TfArg.literal('asia-northeast1'),
///   workerConfig: const CloudBuildWorkerPoolWorkerConfig(
///     diskSizeGb: TfArg.literal(100),
///     machineType: TfArg.literal('e2-medium'),
///     noExternalIp: TfArg.literal(true),
///   ),
/// );
/// ```
///
/// Example (pool peered into an existing VPC):
/// ```dart
/// final pool = GoogleCloudbuildWorkerPool(
///   localName: 'vpc_pool',
///   name: TfArg.literal('vpc-pool'),
///   location: TfArg.literal('asia-northeast1'),
///   workerConfig: const CloudBuildWorkerPoolWorkerConfig(
///     machineType: TfArg.literal('e2-standard-4'),
///     noExternalIp: TfArg.literal(true),
///   ),
///   networkConfig: CloudBuildWorkerPoolNetworkConfig(
///     peeredNetwork: TfArg.ref(vpc.selfLink),
///     peeredNetworkIpRange: TfArg.literal('/29'),
///   ),
/// );
/// ```
///
/// Cross-resource references:
/// - Consumed by `google_cloudbuild_trigger` via
///   `build.options.pool = <pool.id>` (regional pools require the trigger
///   to be in the same `location`).
///
/// Composition pattern: extends `Resource<$GoogleCloudbuildWorkerPool>`
/// for runtime behavior.
final class GoogleCloudbuildWorkerPool extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_cloudbuild_worker_pool';

  GoogleCloudbuildWorkerPool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    CloudBuildWorkerPoolWorkerConfig? workerConfig,
    CloudBuildWorkerPoolNetworkConfig? networkConfig,
    CloudBuildWorkerPoolPrivateServiceConnect? privateServiceConnect,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (annotations != null) 'annotations': annotations,
           if (workerConfig != null)
             'worker_config': TfArg.literal([workerConfig.toArgMap()]),
           if (networkConfig != null)
             'network_config': TfArg.literal([networkConfig.toArgMap()]),
           if (privateServiceConnect != null)
             'private_service_connect': TfArg.literal([
               privateServiceConnect.toArgMap(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleCloudbuildWorkerPoolSensitive;

  /// Reference to `name` attribute. Pass to triggers as the short pool
  /// name when interpolating into descriptive fields.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/workerPools/{name}`). This
  /// is the value `google_cloudbuild_trigger.build.options.pool` expects.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uid` attribute (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `state` attribute. One of `STATE_UNSPECIFIED`,
  /// `PENDING`, `APPROVED`, `REJECTED`, `CANCELLED` (Output-only on the
  /// provider; surfaced as a string for interpolation into outputs).
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `create_time` attribute (RFC 3339 timestamp).
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute (RFC 3339 timestamp).
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
