// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_forwarding_rule.dart'
    show GoogleComputeForwardingRule;
import '../compute/google_compute_instance.dart' show GoogleComputeInstance;
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

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

  final RefTo<GoogleComputeForwardingRule> url;

  Map<String, Object?> encode() => {
    'url': url.encodeAs('self_link').toTfJson(),
  };
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

  final TfArg<List<String>>? cidrRanges;

  final TfArg<ComputePacketMirroringDirection>? direction;

  final TfArg<List<String>>? ipProtocols;

  Map<String, Object?> encode() => {
    'cidr_ranges': ?cidrRanges?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'ip_protocols': ?ipProtocols?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum ComputePacketMirroringDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS'),
  both('BOTH');

  const ComputePacketMirroringDirection(this.terraformValue);
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

  final TfArg<List<String>>? tags;

  final List<ComputePacketMirroringInstances>? instances;

  final List<ComputePacketMirroringSubnetworks>? subnetworks;

  Map<String, Object?> encode() => {
    'tags': ?tags?.toTfJson(),
    if (instances != null)
      'instances': [for (final e in instances!) e.encode()],
    if (subnetworks != null)
      'subnetworks': [for (final e in subnetworks!) e.encode()],
  };
}

/// Typed helper for the `mirrored_resources.instances` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringInstances {
  const ComputePacketMirroringInstances({required this.url});

  final RefTo<GoogleComputeInstance> url;

  Map<String, Object?> encode() => {
    'url': url.encodeAs('self_link').toTfJson(),
  };
}

/// Typed helper for the `mirrored_resources.subnetworks` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringSubnetworks {
  const ComputePacketMirroringSubnetworks({required this.url});

  final RefTo<GoogleComputeSubnetwork> url;

  Map<String, Object?> encode() => {
    'url': url.encodeAs('self_link').toTfJson(),
  };
}

/// Typed helper for the `network` block of
/// `google_compute_packet_mirroring` (derived from provider schema).
@immutable
final class ComputePacketMirroringNetwork {
  const ComputePacketMirroringNetwork({required this.url});

  final RefTo<GoogleComputeNetwork> url;

  Map<String, Object?> encode() => {
    'url': url.encodeAs('self_link').toTfJson(),
  };
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'network': TfArg.literal(network.encode()),
           'collector_ilb': TfArg.literal(collectorIlb.encode()),
           'mirrored_resources': TfArg.literal(mirroredResources.encode()),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'description': ?description,
           'enable': ?enable,
           'priority': ?priority,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputePacketMirroringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputePacketMirroring>`.
  RefTo<GoogleComputePacketMirroring> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enable` attribute.
  TfRef<String> get enableRef => TfRef.attribute<String>(this, 'enable');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
