// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_packet_mirroring`.
const Set<String> _googleComputePacketMirroringSensitive = <String>{};

/// Compute Packet Mirroring enum for `enable`.
enum ComputePacketMirroringEnable implements TerraformEnum {
  trueCase('TRUE'),
  falseCase('FALSE');

  const ComputePacketMirroringEnable(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `collector_ilb` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringCollectorIlb {
  const ComputePacketMirroringCollectorIlb({required this.url});

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `filter` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringFilter {
  const ComputePacketMirroringFilter({
    this.cidrRanges,
    this.direction,
    this.ipProtocols,
  });

  final TfArg<List<Object?>>? cidrRanges;

  final TfArg<ComputePacketMirroringFilterDirection>? direction;

  final TfArg<List<Object?>>? ipProtocols;

  Map<String, Object?> encode() => {
    if (cidrRanges != null) 'cidr_ranges': cidrRanges!.toTfJson(),
    if (direction != null) 'direction': direction!.toTfJson(),
    if (ipProtocols != null) 'ip_protocols': ipProtocols!.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum ComputePacketMirroringFilterDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS'),
  both('BOTH');

  const ComputePacketMirroringFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mirrored_resources` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringMirroredResources {
  const ComputePacketMirroringMirroredResources({
    this.tags,
    this.instances,
    this.subnetworks,
  });

  final TfArg<List<Object?>>? tags;

  final List<ComputePacketMirroringMirroredResourcesInstances>? instances;

  final List<ComputePacketMirroringMirroredResourcesSubnetworks>? subnetworks;

  Map<String, Object?> encode() => {
    if (tags != null) 'tags': tags!.toTfJson(),
    if (instances != null)
      'instances': [for (final e in instances!) e.encode()],
    if (subnetworks != null)
      'subnetworks': [for (final e in subnetworks!) e.encode()],
  };
}

/// Typed helper for the `mirrored_resources.instances` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringMirroredResourcesInstances {
  const ComputePacketMirroringMirroredResourcesInstances({required this.url});

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `mirrored_resources.subnetworks` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringMirroredResourcesSubnetworks {
  const ComputePacketMirroringMirroredResourcesSubnetworks({required this.url});

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `network` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringNetwork {
  const ComputePacketMirroringNetwork({required this.url});

  final TfArg<String> url;

  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Factory wrapper for `google_compute_packet_mirroring`.
///
/// Packet Mirroring mirrors traffic to and from particular VM instances. You
/// can use the collected traffic to help you detect security threats and
/// monitor application performance.
///
/// Compute Engine **packet mirroring** — VPC packet mirror policy (collector
/// ILB + mirrored instances / subnets / tags).
///
/// **Cost / apply:** gcp-cost: Compute Engine `6F81-5844-456A` Network Packet
/// Mirroring Data Processing Americas SKU `A0DF-D169-F1EE` **$0.008/GiBy**
/// (Japan `F615-AC9B-DE64` **$0.012/GiBy**). billing-behavior: mirrored
/// traffic volume bills while packet mirroring is enabled; destroy stops
/// new processing charges. **Never** wire into apply-smoke.
final class GoogleComputePacketMirroring extends Resource {
  static const String tfType = 'google_compute_packet_mirroring';

  GoogleComputePacketMirroring({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required ComputePacketMirroringNetwork network,
    required ComputePacketMirroringCollectorIlb collectorIlb,
    required ComputePacketMirroringMirroredResources mirroredResources,
    ComputePacketMirroringFilter? filter,
    TfArg<String>? description,
    TfArg<String>? enable,
    TfArg<num>? priority,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'network': TfArg.literal(network.encode()),
           'collector_ilb': TfArg.literal(collectorIlb.encode()),
           'mirrored_resources': TfArg.literal(mirroredResources.encode()),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           if (description != null) 'description': description,
           if (enable != null) 'enable': enable,
           if (priority != null) 'priority': priority,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputePacketMirroringSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
