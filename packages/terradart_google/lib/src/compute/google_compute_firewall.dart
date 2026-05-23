// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_firewall`.
const Set<String> _googleComputeFirewallSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// Direction of traffic this firewall rule applies to. For `ingress`,
/// at least one of `sourceRanges` / `sourceTags` / `sourceServiceAccounts`
/// is required by GCP.
enum FirewallDirection implements TerraformEnum {
  ingress('INGRESS'),
  egress('EGRESS');

  const FirewallDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Whether to include or exclude metadata for firewall logs.
/// Used as the `metadata` field of [ComputeFirewallFirewallLogConfig].
enum FirewallLogMetadata implements TerraformEnum {
  includeAllMetadata('INCLUDE_ALL_METADATA'),
  excludeAllMetadata('EXCLUDE_ALL_METADATA');

  const FirewallLogMetadata(this.terraformValue);
  @override
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
class ComputeFirewallFirewallAllowRule {
  const ComputeFirewallFirewallAllowRule({required this.protocol, this.ports});
  final TfArg<String> protocol;
  final List<String>? ports;
  Map<String, Object?> toArgMap() => {
    'protocol': protocol.toTfJson(),
    if (ports != null) 'ports': ports,
  };
}

/// One `deny` entry. Same shape as [ComputeFirewallFirewallAllowRule]; kept separate so
/// caller intent is obvious at the call site (`allow:` vs `deny:` lists
/// are mutually exclusive per GCP API).
class ComputeFirewallFirewallDenyRule {
  const ComputeFirewallFirewallDenyRule({required this.protocol, this.ports});
  final TfArg<String> protocol;
  final List<String>? ports;
  Map<String, Object?> toArgMap() => {
    'protocol': protocol.toTfJson(),
    if (ports != null) 'ports': ports,
  };
}

/// Firewall logging configuration (single block, max_items=1).
/// Setting this enables Cloud Logging export for matched traffic.
class ComputeFirewallFirewallLogConfig {
  const ComputeFirewallFirewallLogConfig({required this.metadata});
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
///   allow: const [ComputeFirewallFirewallAllowRule(protocol: 'tcp', ports: ['22'])],
///   sourceRanges: TfArg.literal(['10.0.0.0/8']),
/// );
/// ```
///
/// Manages a VPC firewall rule on GCP. Composition pattern: extends
/// `Resource<$GoogleComputeFirewall>` for runtime behavior. The `allow` /
/// `deny` list-typed blocks and the single `log_config` block are modeled
/// as helper classes in the `prelude` below.
final class GoogleComputeFirewall extends Resource {
  static const String tfType = 'google_compute_firewall';

  GoogleComputeFirewall({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    TfArg<FirewallDirection>? direction,
    TfArg<num>? priority,
    List<ComputeFirewallFirewallAllowRule>? allow,
    List<ComputeFirewallFirewallDenyRule>? deny,
    TfArg<List<String>>? sourceRanges,
    TfArg<List<String>>? sourceTags,
    TfArg<List<String>>? sourceServiceAccounts,
    TfArg<List<String>>? targetTags,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<List<String>>? destinationRanges,
    ComputeFirewallFirewallLogConfig? logConfig,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
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
  Set<String> get sensitiveFields => _googleComputeFirewallSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `fw.nameRef` → `${google_compute_firewall.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/firewalls/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
