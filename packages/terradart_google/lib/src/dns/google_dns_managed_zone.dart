// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_managed_zone`.
const Set<String> _googleDnsManagedZoneSensitive = <String>{};

// ===========================================================================
// Enums — discovered from Magic Modules `enum_values`.
// ===========================================================================

/// Visibility of a managed zone (`google_dns_managed_zone.visibility`).
enum DnsZoneVisibility implements TerraformEnum {
  public('public'),
  private('private');

  const DnsZoneVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dnssec_config.state` — whether DNSSEC is on, off, or in transfer.
enum DnssecState implements TerraformEnum {
  off('off'),
  on('on'),
  transfer('transfer');

  const DnssecState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dnssec_config.non_existence` — proof-of-non-existence record type.
enum DnssecNonExistence implements TerraformEnum {
  nsec('nsec'),
  nsec3('nsec3');

  const DnssecNonExistence(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dnssec_config.default_key_specs.algorithm`.
enum DnssecKeyAlgorithm implements TerraformEnum {
  ecdsap256sha256('ecdsap256sha256'),
  ecdsap384sha384('ecdsap384sha384'),
  rsasha1('rsasha1'),
  rsasha256('rsasha256'),
  rsasha512('rsasha512');

  const DnssecKeyAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dnssec_config.default_key_specs.key_type` — KSK vs ZSK.
enum DnssecKeyType implements TerraformEnum {
  keySigning('keySigning'),
  zoneSigning('zoneSigning');

  const DnssecKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `forwarding_config.target_name_servers.forwarding_path` — how Cloud DNS
/// resolves the target's address range.
enum ForwardingPath implements TerraformEnum {
  standard('default'),
  private('private');

  const ForwardingPath(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers. Each exposes `toArgMap()` returning the raw
// `Map<String, Object?>` shape that Terraform expects. The factory wraps
// single-instance (`max_items=1`) blocks in a `[map]` list; list-typed
// sub-blocks (`default_key_specs`, `target_name_servers`, `gke_clusters`,
// `networks`) are passed through as `List<Map>`.
// ===========================================================================

/// `private_visibility_config` block. At least one of `gkeClusters` or
/// `networks` must be supplied.
class DnsManagedZonePrivateVisibilityConfig {
  const DnsManagedZonePrivateVisibilityConfig({
    this.gkeClusters,
    this.networks,
  });
  final List<DnsManagedZonePrivateVisibilityGkeCluster>? gkeClusters;
  final List<DnsManagedZonePrivateVisibilityNetwork>? networks;
  Map<String, Object?> toArgMap() => {
    if (gkeClusters != null)
      'gke_clusters': gkeClusters!.map((g) => g.toArgMap()).toList(),
    if (networks != null)
      'networks': networks!.map((n) => n.toArgMap()).toList(),
  };
}

/// One entry inside `private_visibility_config.gke_clusters`.
class DnsManagedZonePrivateVisibilityGkeCluster {
  const DnsManagedZonePrivateVisibilityGkeCluster({
    required this.gkeClusterName,
  });
  final TfArg<String> gkeClusterName;
  Map<String, Object?> toArgMap() => {'gke_cluster_name': gkeClusterName};
}

/// One entry inside `private_visibility_config.networks`.
class DnsManagedZonePrivateVisibilityNetwork {
  const DnsManagedZonePrivateVisibilityNetwork({required this.networkUrl});
  final TfArg<String> networkUrl;
  Map<String, Object?> toArgMap() => {'network_url': networkUrl};
}

/// `dnssec_config` block. `kind` is rarely overridden; defaults to
/// `dns#managedZoneDnsSecConfig` on the server.
class DnsManagedZoneDnssecConfig {
  const DnsManagedZoneDnssecConfig({
    this.kind,
    this.nonExistence,
    this.state,
    this.defaultKeySpecs,
  });
  final TfArg<String>? kind;
  final DnssecNonExistence? nonExistence;
  final DnssecState? state;
  final List<DnsManagedZoneDnssecKeySpec>? defaultKeySpecs;
  Map<String, Object?> toArgMap() => {
    if (kind != null) 'kind': kind!.toTfJson(),
    if (nonExistence != null) 'non_existence': nonExistence!.terraformValue,
    if (state != null) 'state': state!.terraformValue,
    if (defaultKeySpecs != null)
      'default_key_specs': defaultKeySpecs!.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry inside `dnssec_config.default_key_specs`.
class DnsManagedZoneDnssecKeySpec {
  const DnsManagedZoneDnssecKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });
  final DnssecKeyAlgorithm? algorithm;
  final TfArg<int>? keyLength;
  final DnssecKeyType? keyType;
  final TfArg<String>? kind;
  Map<String, Object?> toArgMap() => {
    if (algorithm != null) 'algorithm': algorithm!.terraformValue,
    if (keyLength != null) 'key_length': keyLength!.toTfJson(),
    if (keyType != null) 'key_type': keyType!.terraformValue,
    if (kind != null) 'kind': kind!.toTfJson(),
  };
}

/// `peering_config` block. Exactly one `target_network` is required.
class DnsManagedZonePeeringConfig {
  const DnsManagedZonePeeringConfig({required this.targetNetwork});
  final DnsManagedZonePeeringTargetNetwork targetNetwork;
  Map<String, Object?> toArgMap() => {
    'target_network': [targetNetwork.toArgMap()],
  };
}

/// `peering_config.target_network` single sub-block (`max_items=1`).
class DnsManagedZonePeeringTargetNetwork {
  const DnsManagedZonePeeringTargetNetwork({required this.networkUrl});
  final TfArg<String> networkUrl;
  Map<String, Object?> toArgMap() => {'network_url': networkUrl};
}

/// `forwarding_config` block. At least one `targetNameServers` entry.
class DnsManagedZoneForwardingConfig {
  const DnsManagedZoneForwardingConfig({required this.targetNameServers});
  final List<DnsManagedZoneForwardingTargetNameServer> targetNameServers;
  Map<String, Object?> toArgMap() => {
    'target_name_servers': targetNameServers.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry inside `forwarding_config.target_name_servers`.
class DnsManagedZoneForwardingTargetNameServer {
  const DnsManagedZoneForwardingTargetNameServer({
    this.domainName,
    this.ipv4Address,
    this.ipv6Address,
    this.forwardingPath,
  });
  final TfArg<String>? domainName;
  final TfArg<String>? ipv4Address;
  final TfArg<String>? ipv6Address;
  final ForwardingPath? forwardingPath;
  Map<String, Object?> toArgMap() => {
    if (domainName != null) 'domain_name': domainName!.toTfJson(),
    if (ipv4Address != null) 'ipv4_address': ipv4Address!.toTfJson(),
    if (ipv6Address != null) 'ipv6_address': ipv6Address!.toTfJson(),
    if (forwardingPath != null)
      'forwarding_path': forwardingPath!.terraformValue,
  };
}

/// `cloud_logging_config` block — toggles export to Cloud Logging.
class DnsManagedZoneCloudLoggingConfig {
  const DnsManagedZoneCloudLoggingConfig({required this.enableLogging});
  final TfArg<bool> enableLogging;
  Map<String, Object?> toArgMap() => {'enable_logging': enableLogging};
}

/// Factory wrapper for `google_dns_managed_zone`.
///
/// A zone is a subtree of the DNS namespace under one administrative
/// responsibility. A ManagedZone is a resource that represents a DNS zone
/// hosted by the Cloud DNS service.
///
/// Manages a Cloud DNS **managed zone** — the container that holds DNS
/// records for a single DNS name (e.g. `example.com.`). Zones can be
/// public (served to the internet) or private (visible only within
/// specified VPC networks or GKE clusters).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_dns_managed_zone.`).
/// - `name`: GCP-internal zone name (forces replacement when changed).
/// - `dns_name`: DNS name of the zone; must end with a trailing dot
///   (e.g. `'example.com.'`).
///
/// The 5 nested blocks (`private_visibility_config` / `dnssec_config` /
/// `peering_config` / `forwarding_config` / `cloud_logging_config`) are
/// modeled as helper classes in the prelude; each block has `max_items=1`,
/// so the factory wraps the encoded map in a single-element list before
/// passing it to Terraform.
///
/// Example (public zone):
/// ```dart
/// final prod = GoogleDnsManagedZone(
///   localName: 'prod',
///   name: TfArg.literal('prod-zone'),
///   dnsName: TfArg.literal('prod.example.com.'),
///   description: TfArg.literal('Production zone'),
///   visibility: TfArg.literal(DnsZoneVisibility.public),
/// );
/// ```
final class GoogleDnsManagedZone extends Resource {
  static const String tfType = 'google_dns_managed_zone';

  GoogleDnsManagedZone({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dnsName,
    TfArg<String>? description,
    TfArg<DnsZoneVisibility>? visibility,
    DnsManagedZonePrivateVisibilityConfig? privateVisibilityConfig,
    DnsManagedZoneDnssecConfig? dnssecConfig,
    DnsManagedZonePeeringConfig? peeringConfig,
    DnsManagedZoneForwardingConfig? forwardingConfig,
    DnsManagedZoneCloudLoggingConfig? cloudLoggingConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? forceDestroy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dns_name': dnsName,
           if (description != null) 'description': description,
           if (visibility != null) 'visibility': visibility,
           if (privateVisibilityConfig != null)
             'private_visibility_config': TfArg.literal([
               privateVisibilityConfig.toArgMap(),
             ]),
           if (dnssecConfig != null)
             'dnssec_config': TfArg.literal([dnssecConfig.toArgMap()]),
           if (peeringConfig != null)
             'peering_config': TfArg.literal([peeringConfig.toArgMap()]),
           if (forwardingConfig != null)
             'forwarding_config': TfArg.literal([forwardingConfig.toArgMap()]),
           if (cloudLoggingConfig != null)
             'cloud_logging_config': TfArg.literal([
               cloudLoggingConfig.toArgMap(),
             ]),
           if (labels != null) 'labels': labels,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `managed_zone_id` attribute.
  TfRef<num> get managedZoneId => TfRef.attribute<num>(this, 'managed_zone_id');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `dns_name` attribute (the trailing-dot DNS name).
  TfRef<String> get dnsNameRef => TfRef.attribute<String>(this, 'dns_name');
}
