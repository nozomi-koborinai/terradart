// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_compute_firewall.schema.dart'
    show $GoogleComputeFirewall, googleComputeFirewallSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleComputeFirewallSchemaInstance implements $GoogleComputeFirewall {
  const _GoogleComputeFirewallSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// Direction of traffic this firewall rule applies to. For `ingress`,
/// at least one of `sourceRanges` / `sourceTags` / `sourceServiceAccounts`
/// is required by GCP.
enum FirewallDirection {
  ingress('INGRESS'),
  egress('EGRESS');

  const FirewallDirection(this.terraformValue);
  final String terraformValue;
}

/// Whether to include or exclude metadata for firewall logs.
/// Used as the `metadata` field of [FirewallLogConfig].
enum FirewallLogMetadata {
  includeAllMetadata('INCLUDE_ALL_METADATA'),
  excludeAllMetadata('EXCLUDE_ALL_METADATA');

  const FirewallLogMetadata(this.terraformValue);
  final String terraformValue;
}

/// One `allow` entry: an IP protocol plus optional list of port specs.
///
/// `protocol` is a string rather than an enum because GCP accepts both
/// well-known names (`tcp`, `udp`, `icmp`, `esp`, `ah`, `sctp`, `ipip`,
/// `all`) and raw IANA protocol numbers (e.g. `'47'` for GRE).
///
/// `ports` entries can be a single port (`'22'`) or a range (`'8000-9000'`).
/// Leave `ports` null when `protocol` does not support ports
/// (e.g. `icmp`, `esp`).
class FirewallAllowRule {
  const FirewallAllowRule({required this.protocol, this.ports});
  final String protocol;
  final List<String>? ports;
  Map<String, Object?> toArgMap() => {
    'protocol': protocol,
    if (ports != null) 'ports': ports,
  };
}

/// One `deny` entry. Same shape as [FirewallAllowRule]; kept separate so
/// caller intent is obvious at the call site (`allow:` vs `deny:` lists
/// are mutually exclusive per GCP API).
class FirewallDenyRule {
  const FirewallDenyRule({required this.protocol, this.ports});
  final String protocol;
  final List<String>? ports;
  Map<String, Object?> toArgMap() => {
    'protocol': protocol,
    if (ports != null) 'ports': ports,
  };
}

/// Firewall logging configuration (single block, max_items=1).
/// Setting this enables Cloud Logging export for matched traffic.
class FirewallLogConfig {
  const FirewallLogConfig({required this.metadata});
  final FirewallLogMetadata metadata;
  Map<String, Object?> toArgMap() => {'metadata': metadata.terraformValue};
}

/// Factory wrapper for `google_compute_firewall` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_firewall.`).
/// - `name`: GCP firewall rule name.
/// - `network`: VPC network this rule attaches to. Typically
///   `TfArg.ref(vpc.selfLink)` where `vpc` is a `GoogleComputeNetwork`.
///
/// Pass either `allow` OR `deny` (mutually exclusive per GCP API).
///
/// Example:
/// ```dart
/// final allowSsh = GoogleComputeFirewall(
///   localName: 'allow_ssh',
///   name: TfArg.literal('allow-ssh'),
///   network: TfArg.ref(vpc.selfLink),
///   direction: TfArg.literal(FirewallDirection.ingress),
///   priority: TfArg.literal(1000),
///   allow: const [FirewallAllowRule(protocol: 'tcp', ports: ['22'])],
///   sourceRanges: TfArg.literal(['10.0.0.0/8']),
/// );
/// ```
///
/// Manages a VPC firewall rule on GCP. Composition pattern: extends
/// `Resource<$GoogleComputeFirewall>` for runtime behavior. The `allow` /
/// `deny` list-typed blocks and the single `log_config` block are modeled
/// as helper classes in the `prelude` below.
final class GoogleComputeFirewall extends Resource<$GoogleComputeFirewall> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_firewall';

  GoogleComputeFirewall({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    TfArg<FirewallDirection>? direction,
    TfArg<num>? priority,
    List<FirewallAllowRule>? allow,
    List<FirewallDenyRule>? deny,
    TfArg<List<String>>? sourceRanges,
    TfArg<List<String>>? sourceTags,
    TfArg<List<String>>? sourceServiceAccounts,
    TfArg<List<String>>? targetTags,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<List<String>>? destinationRanges,
    FirewallLogConfig? logConfig,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleComputeFirewallSchemaInstance(),
         argMap: {
           'name': name,
           'network': network,
           if (direction != null) 'direction': direction,
           if (priority != null) 'priority': priority,
           if (allow != null)
             'allow': TfArg.literal(allow.map((r) => r.toArgMap()).toList()),
           if (deny != null)
             'deny': TfArg.literal(deny.map((r) => r.toArgMap()).toList()),
           if (sourceRanges != null) 'source_ranges': sourceRanges,
           if (sourceTags != null) 'source_tags': sourceTags,
           if (sourceServiceAccounts != null)
             'source_service_accounts': sourceServiceAccounts,
           if (targetTags != null) 'target_tags': targetTags,
           if (targetServiceAccounts != null)
             'target_service_accounts': targetServiceAccounts,
           if (destinationRanges != null)
             'destination_ranges': destinationRanges,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           if (disabled != null) 'disabled': disabled,
           if (enableLogging != null) 'enable_logging': enableLogging,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleComputeFirewallSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `fw.nameRef` → `${google_compute_firewall.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/firewalls/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
