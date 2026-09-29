// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tpu_v2_queued_resource`.
const Set<String> _googleTpuV2QueuedResourceSensitive = <String>{};

/// Typed helper for the `tpu` block of
/// `google_tpu_v2_queued_resource` (derived from provider schema).
@immutable
final class TpuV2QueuedResourceTpu {
  const TpuV2QueuedResourceTpu({this.nodeSpec});

  final List<TpuV2QueuedResourceTpuNodeSpec>? nodeSpec;

  Map<String, Object?> encode() => {
    if (nodeSpec != null) 'node_spec': [for (final e in nodeSpec!) e.encode()],
  };
}

/// Typed helper for the `tpu.node_spec` block of
/// `google_tpu_v2_queued_resource` (derived from provider schema).
@immutable
final class TpuV2QueuedResourceTpuNodeSpec {
  const TpuV2QueuedResourceTpuNodeSpec({
    this.nodeId,
    required this.parent,
    required this.node,
  });

  final TfArg<String>? nodeId;

  final TfArg<String> parent;

  final TpuV2QueuedResourceTpuNodeSpecNode node;

  Map<String, Object?> encode() => {
    'node_id': ?nodeId?.toTfJson(),
    'parent': parent.toTfJson(),
    'node': node.encode(),
  };
}

/// Typed helper for the `tpu.node_spec.node` block of
/// `google_tpu_v2_queued_resource` (derived from provider schema).
@immutable
final class TpuV2QueuedResourceTpuNodeSpecNode {
  const TpuV2QueuedResourceTpuNodeSpecNode({
    this.acceleratorType,
    this.description,
    required this.runtimeVersion,
    this.networkConfig,
  });

  final TfArg<String>? acceleratorType;

  final TfArg<String>? description;

  final TfArg<String> runtimeVersion;

  final TpuV2QueuedResourceTpuNodeSpecNodeNetworkConfig? networkConfig;

  Map<String, Object?> encode() => {
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'description': ?description?.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
    'network_config': ?networkConfig?.encode(),
  };
}

/// Typed helper for the `tpu.node_spec.node.network_config` block of
/// `google_tpu_v2_queued_resource` (derived from provider schema).
@immutable
final class TpuV2QueuedResourceTpuNodeSpecNodeNetworkConfig {
  const TpuV2QueuedResourceTpuNodeSpecNodeNetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
    this.subnetwork,
  });

  final TfArg<bool>? canIpForward;

  final TfArg<bool>? enableExternalIps;

  final TfArg<String>? network;

  final TfArg<num>? queueCount;

  final TfArg<String>? subnetwork;

  Map<String, Object?> encode() => {
    'can_ip_forward': ?canIpForward?.toTfJson(),
    'enable_external_ips': ?enableExternalIps?.toTfJson(),
    'network': ?network?.toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'subnetwork': ?subnetwork?.toTfJson(),
  };
}

/// Factory wrapper for `google_tpu_v2_queued_resource`.
///
/// A Cloud TPU Queued Resource.
final class GoogleTpuV2QueuedResource extends Resource {
  static const String tfType = 'google_tpu_v2_queued_resource';

  GoogleTpuV2QueuedResource({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? zone,
    TpuV2QueuedResourceTpu? tpu,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'name': name,
           'project': ?project,
           'zone': ?zone,
           if (tpu != null) 'tpu': TfArg.literal(tpu.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTpuV2QueuedResourceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTpuV2QueuedResource>`.
  RefTo<GoogleTpuV2QueuedResource> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
