// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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
/// caller intent is obvious at the call site.
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

// ===========================================================================
// ComputeFirewallRulePolicy — sealed (allow | deny)
// ===========================================================================

/// Mutually exclusive `allow` / `deny` rule lists per GCP API.
sealed class ComputeFirewallRulePolicy {
  const ComputeFirewallRulePolicy();

  /// Terraform block key (`allow` or `deny`).
  String get blockKey;

  List<Map<String, Object?>> encode();
}

/// `allow` block list. [protocol] / [ports] describe the first entry;
/// [additionalRules] appends more `allow` blocks for multi-protocol rules.
@immutable
final class ComputeFirewallAllowPolicy extends ComputeFirewallRulePolicy {
  const ComputeFirewallAllowPolicy({
    required this.protocol,
    this.ports,
    this.additionalRules = const [],
  });

  final TfArg<String> protocol;
  final List<String>? ports;
  final List<ComputeFirewallFirewallAllowRule> additionalRules;

  @override
  String get blockKey => 'allow';

  @override
  List<Map<String, Object?>> encode() => [
    {'protocol': protocol.toTfJson(), if (ports != null) 'ports': ports},
    ...additionalRules.map((r) => r.toArgMap()),
  ];
}

/// `deny` block list. See [ComputeFirewallAllowPolicy] for the shape.
@immutable
final class ComputeFirewallDenyPolicy extends ComputeFirewallRulePolicy {
  const ComputeFirewallDenyPolicy({
    required this.protocol,
    this.ports,
    this.additionalRules = const [],
  });

  final TfArg<String> protocol;
  final List<String>? ports;
  final List<ComputeFirewallFirewallDenyRule> additionalRules;

  @override
  String get blockKey => 'deny';

  @override
  List<Map<String, Object?>> encode() => [
    {'protocol': protocol.toTfJson(), if (ports != null) 'ports': ports},
    ...additionalRules.map((r) => r.toArgMap()),
  ];
}

/// Factory wrapper for `google_compute_firewall`.
///
/// Each network has its own firewall controlling access to and from the
/// instances.
///
/// All traffic to instances, even from other instances, is blocked by the
/// firewall unless firewall rules are created to allow it.
///
/// The default network has automatically created firewall rules that are shown
/// in default firewall rules. No manually created network has automatically
/// created firewall rules except for a default "allow" rule for outgoing
/// traffic and a default "deny" for incoming traffic. For all networks except
/// the default network, you must create any firewall rules you need.
///
/// This resource models a VPC firewall rule.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_firewall.`).
/// - `name`: GCP firewall rule name.
/// - `network`: VPC network this rule attaches to. Typically
///   `TfArg.ref(vpc.selfLink)` where `vpc` is a `GoogleComputeNetwork`.
///
/// Choose exactly one [ComputeFirewallRulePolicy]:
/// - [ComputeFirewallAllowPolicy] — permit matching traffic.
/// - [ComputeFirewallDenyPolicy] — block matching traffic.
///
/// Example:
/// ```dart
/// final allowSsh = GoogleComputeFirewall(
///   localName: 'allow_ssh',
///   name: TfArg.literal('allow-ssh'),
///   network: TfArg.ref(vpc.selfLink),
///   direction: TfArg.literal(FirewallDirection.ingress),
///   priority: TfArg.literal(1000),
///   rulePolicy: ComputeFirewallAllowPolicy(
///     protocol: TfArg.literal('tcp'),
///     ports: ['22'],
///   ),
///   sourceRanges: TfArg.literal(['10.0.0.0/8']),
/// );
/// ```
///
/// Composition pattern: extends `Resource` for runtime behavior. The
/// sealed [ComputeFirewallRulePolicy] and the single `log_config` block
/// are modeled as helper classes in the `prelude` below.
final class GoogleComputeFirewall extends Resource {
  static const String tfType = 'google_compute_firewall';

  GoogleComputeFirewall({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    TfArg<FirewallDirection>? direction,
    TfArg<num>? priority,
    required ComputeFirewallRulePolicy rulePolicy,
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
           rulePolicy.blockKey: TfArg.literal(rulePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFirewallSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
