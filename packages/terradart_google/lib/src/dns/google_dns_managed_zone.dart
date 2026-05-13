// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_dns_managed_zone.schema.dart'
    show $GoogleDnsManagedZone, googleDnsManagedZoneSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleDnsManagedZoneSchemaInstance implements $GoogleDnsManagedZone {
  const _GoogleDnsManagedZoneSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// Enums — discovered from Magic Modules `enum_values`.
// ===========================================================================

/// Visibility of a managed zone (`google_dns_managed_zone.visibility`).
enum DnsZoneVisibility {
  public('public'),
  private('private');

  const DnsZoneVisibility(this.terraformValue);
  final String terraformValue;
}

/// `dnssec_config.state` — whether DNSSEC is on, off, or in transfer.
enum DnssecState {
  off('off'),
  on('on'),
  transfer('transfer');

  const DnssecState(this.terraformValue);
  final String terraformValue;
}

/// `dnssec_config.non_existence` — proof-of-non-existence record type.
enum DnssecNonExistence {
  nsec('nsec'),
  nsec3('nsec3');

  const DnssecNonExistence(this.terraformValue);
  final String terraformValue;
}

/// `dnssec_config.default_key_specs.algorithm`.
enum DnssecKeyAlgorithm {
  ecdsap256sha256('ecdsap256sha256'),
  ecdsap384sha384('ecdsap384sha384'),
  rsasha1('rsasha1'),
  rsasha256('rsasha256'),
  rsasha512('rsasha512');

  const DnssecKeyAlgorithm(this.terraformValue);
  final String terraformValue;
}

/// `dnssec_config.default_key_specs.key_type` — KSK vs ZSK.
enum DnssecKeyType {
  keySigning('keySigning'),
  zoneSigning('zoneSigning');

  const DnssecKeyType(this.terraformValue);
  final String terraformValue;
}

/// `forwarding_config.target_name_servers.forwarding_path` — how Cloud DNS
/// resolves the target's address range.
enum ForwardingPath {
  standard('default'),
  private('private');

  const ForwardingPath(this.terraformValue);
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
class PrivateVisibilityConfig {
  const PrivateVisibilityConfig({this.gkeClusters, this.networks});
  final List<PrivateVisibilityGkeCluster>? gkeClusters;
  final List<PrivateVisibilityNetwork>? networks;
  Map<String, Object?> toArgMap() => {
    if (gkeClusters != null)
      'gke_clusters': gkeClusters!.map((g) => g.toArgMap()).toList(),
    if (networks != null)
      'networks': networks!.map((n) => n.toArgMap()).toList(),
  };
}

/// One entry inside `private_visibility_config.gke_clusters`.
class PrivateVisibilityGkeCluster {
  const PrivateVisibilityGkeCluster({required this.gkeClusterName});
  final String gkeClusterName;
  Map<String, Object?> toArgMap() => {'gke_cluster_name': gkeClusterName};
}

/// One entry inside `private_visibility_config.networks`.
class PrivateVisibilityNetwork {
  const PrivateVisibilityNetwork({required this.networkUrl});
  final String networkUrl;
  Map<String, Object?> toArgMap() => {'network_url': networkUrl};
}

/// `dnssec_config` block. `kind` is rarely overridden; defaults to
/// `dns#managedZoneDnsSecConfig` on the server.
class DnssecConfig {
  const DnssecConfig({
    this.kind,
    this.nonExistence,
    this.state,
    this.defaultKeySpecs,
  });
  final String? kind;
  final DnssecNonExistence? nonExistence;
  final DnssecState? state;
  final List<DnssecKeySpec>? defaultKeySpecs;
  Map<String, Object?> toArgMap() => {
    if (kind != null) 'kind': kind,
    if (nonExistence != null) 'non_existence': nonExistence!.terraformValue,
    if (state != null) 'state': state!.terraformValue,
    if (defaultKeySpecs != null)
      'default_key_specs': defaultKeySpecs!.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry inside `dnssec_config.default_key_specs`.
class DnssecKeySpec {
  const DnssecKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });
  final DnssecKeyAlgorithm? algorithm;
  final int? keyLength;
  final DnssecKeyType? keyType;
  final String? kind;
  Map<String, Object?> toArgMap() => {
    if (algorithm != null) 'algorithm': algorithm!.terraformValue,
    if (keyLength != null) 'key_length': keyLength,
    if (keyType != null) 'key_type': keyType!.terraformValue,
    if (kind != null) 'kind': kind,
  };
}

/// `peering_config` block. Exactly one `target_network` is required.
class PeeringConfig {
  const PeeringConfig({required this.targetNetwork});
  final PeeringTargetNetwork targetNetwork;
  Map<String, Object?> toArgMap() => {
    'target_network': [targetNetwork.toArgMap()],
  };
}

/// `peering_config.target_network` single sub-block (`max_items=1`).
class PeeringTargetNetwork {
  const PeeringTargetNetwork({required this.networkUrl});
  final String networkUrl;
  Map<String, Object?> toArgMap() => {'network_url': networkUrl};
}

/// `forwarding_config` block. At least one `targetNameServers` entry.
class ForwardingConfig {
  const ForwardingConfig({required this.targetNameServers});
  final List<ForwardingTargetNameServer> targetNameServers;
  Map<String, Object?> toArgMap() => {
    'target_name_servers': targetNameServers.map((s) => s.toArgMap()).toList(),
  };
}

/// One entry inside `forwarding_config.target_name_servers`.
class ForwardingTargetNameServer {
  const ForwardingTargetNameServer({
    this.domainName,
    this.ipv4Address,
    this.ipv6Address,
    this.forwardingPath,
  });
  final String? domainName;
  final String? ipv4Address;
  final String? ipv6Address;
  final ForwardingPath? forwardingPath;
  Map<String, Object?> toArgMap() => {
    if (domainName != null) 'domain_name': domainName,
    if (ipv4Address != null) 'ipv4_address': ipv4Address,
    if (ipv6Address != null) 'ipv6_address': ipv6Address,
    if (forwardingPath != null)
      'forwarding_path': forwardingPath!.terraformValue,
  };
}

/// `cloud_logging_config` block — toggles export to Cloud Logging.
class CloudLoggingConfig {
  const CloudLoggingConfig({required this.enableLogging});
  final bool enableLogging;
  Map<String, Object?> toArgMap() => {'enable_logging': enableLogging};
}

/// Factory wrapper for `google_dns_managed_zone` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_dns_managed_zone.`).
/// - `name`: GCP-internal zone name (forces replacement when changed).
/// - `dns_name`: DNS name of the zone, must end with a trailing dot
///   (e.g. `'example.com.'`).
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
///
/// Manages a DNS Managed Zone. The 5 nested blocks
/// (`private_visibility_config` / `dnssec_config` / `peering_config` /
/// `forwarding_config` / `cloud_logging_config`) are modeled as helper
/// classes in the `prelude` below; each block has `max_items=1`, so the
/// factory wraps the encoded map in a single-element list before passing
/// it to Terraform.
final class GoogleDnsManagedZone extends Resource<$GoogleDnsManagedZone> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_dns_managed_zone';

  GoogleDnsManagedZone({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dnsName,
    TfArg<String>? description,
    TfArg<DnsZoneVisibility>? visibility,
    PrivateVisibilityConfig? privateVisibilityConfig,
    DnssecConfig? dnssecConfig,
    PeeringConfig? peeringConfig,
    ForwardingConfig? forwardingConfig,
    CloudLoggingConfig? cloudLoggingConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? forceDestroy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleDnsManagedZoneSchemaInstance(),
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
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleDnsManagedZoneSensitive;

  /// Reference to `id` attribute (`projects/{project}/managedZones/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute. Most DNS-record / IAM resources expect
  /// the zone reference as its `name`, not its full `id`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `dns_name` attribute (the trailing-dot DNS name).
  TfRef<String> get dnsNameRef => TfRef.attribute<String>(this, 'dns_name');
}
