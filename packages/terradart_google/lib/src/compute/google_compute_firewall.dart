// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_firewall`.
const Set<String> _googleComputeFirewallSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.toTfJson()` getter.

/// Direction of traffic this firewall rule applies to. For `ingress`,
/// at least one of `sourceRanges` / `sourceTags` / `sourceServiceAccounts`
/// is required by GCP.
extension type const FirewallDirection._(TfArg<String> _)
    implements TfArg<String> {
  FirewallDirection.variable(String name) : this._(TfArg.variable(name));
  FirewallDirection.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallDirection.arg(TfArg<String> arg) : this._(arg);

  static const ingress = FirewallDirection._(TfArgLiteral('INGRESS'));
  static const egress = FirewallDirection._(TfArgLiteral('EGRESS'));

  static const List<FirewallDirection> values = [ingress, egress];
}

/// Whether to include or exclude metadata for firewall logs.
/// Used as the `metadata` field of [ComputeFirewallLogConfig].
extension type const FirewallLogMetadata._(TfArg<String> _)
    implements TfArg<String> {
  FirewallLogMetadata.variable(String name) : this._(TfArg.variable(name));
  FirewallLogMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const FirewallLogMetadata.arg(TfArg<String> arg) : this._(arg);

  static const includeAllMetadata = FirewallLogMetadata._(
    TfArgLiteral('INCLUDE_ALL_METADATA'),
  );
  static const excludeAllMetadata = FirewallLogMetadata._(
    TfArgLiteral('EXCLUDE_ALL_METADATA'),
  );

  static const List<FirewallLogMetadata> values = [
    includeAllMetadata,
    excludeAllMetadata,
  ];
}

/// Firewall logging configuration (single block, max_items=1).
/// Setting this enables Cloud Logging export for matched traffic.
class ComputeFirewallLogConfig {
  const ComputeFirewallLogConfig({required this.metadata});
  final FirewallLogMetadata metadata;
  Map<String, Object?> toArgMap() => {'metadata': metadata.toTfJson()};
}

/// Exactly one of `allow`, `deny` on `google_compute_firewall`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allow(...)`.
sealed class ComputeFirewallRulePolicy {
  const ComputeFirewallRulePolicy();

  /// Sets `allow`.
  const factory ComputeFirewallRulePolicy.allow(
    List<ComputeFirewallAllow> allow,
  ) = ComputeFirewallRulePolicyAllow;

  /// Sets `deny`.
  const factory ComputeFirewallRulePolicy.deny(List<ComputeFirewallDeny> deny) =
      ComputeFirewallRulePolicyDeny;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeFirewallRulePolicy.allow] choice: sets `allow`.
final class ComputeFirewallRulePolicyAllow extends ComputeFirewallRulePolicy {
  const ComputeFirewallRulePolicyAllow(this.allow);

  final List<ComputeFirewallAllow> allow;

  @internal
  @override
  String get blockKey => 'allow';

  @internal
  @override
  Map<String, Object?> encode() => {
    'allow': [for (final e in allow) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'allow': TfArg.literal([for (final e in allow) e.encode()]),
  };
}

/// The [ComputeFirewallRulePolicy.deny] choice: sets `deny`.
final class ComputeFirewallRulePolicyDeny extends ComputeFirewallRulePolicy {
  const ComputeFirewallRulePolicyDeny(this.deny);

  final List<ComputeFirewallDeny> deny;

  @internal
  @override
  String get blockKey => 'deny';

  @internal
  @override
  Map<String, Object?> encode() => {
    'deny': [for (final e in deny) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'deny': TfArg.literal([for (final e in deny) e.encode()]),
  };
}

/// Typed helper for the `allow` block of
/// `google_compute_firewall` (derived from provider schema).
@immutable
final class ComputeFirewallAllow {
  const ComputeFirewallAllow({this.ports, required this.protocol});

  final TfArg<List<String>>? ports;

  final TfArg<String> protocol;

  @internal
  Map<String, Object?> encode() => {
    'ports': ?ports?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `deny` block of
/// `google_compute_firewall` (derived from provider schema).
@immutable
final class ComputeFirewallDeny {
  const ComputeFirewallDeny({this.ports, required this.protocol});

  final TfArg<List<String>>? ports;

  final TfArg<String> protocol;

  @internal
  Map<String, Object?> encode() => {
    'ports': ?ports?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_firewall` (derived from provider schema).
@immutable
final class ComputeFirewallParams {
  const ComputeFirewallParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  @internal
  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
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
///   `vpc.ref` where `vpc` is a `GoogleComputeNetwork`.
///
/// Choose exactly one [ComputeFirewallRulePolicy]: `.allow([...])`
/// permits matching traffic, `.deny([...])` blocks it.
///
/// Example:
/// ```dart
/// final allowSsh = GoogleComputeFirewall(
///   'allow_ssh',
///   name: TfArg.literal('allow-ssh'),
///   network: vpc.ref,
///   direction: FirewallDirection.ingress,
///   priority: TfArg.literal(1000),
///   rulePolicy: .allow([
///     .new(protocol: .literal('tcp'), ports: .literal(['22'])),
///   ]),
///   sourceRanges: TfArg.literal(['10.0.0.0/8']),
/// );
/// ```
///
/// The single `log_config` block is [ComputeFirewallLogConfig].
final class GoogleComputeFirewall extends Resource {
  static const String tfType = 'google_compute_firewall';

  GoogleComputeFirewall(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    FirewallDirection? direction,
    TfArg<num>? priority,
    required ComputeFirewallRulePolicy rulePolicy,
    TfArg<List<String>>? sourceRanges,
    TfArg<List<String>>? sourceTags,
    TfArg<List<String>>? sourceServiceAccounts,
    TfArg<List<String>>? targetTags,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<List<String>>? destinationRanges,
    ComputeFirewallLogConfig? logConfig,
    TfArg<bool>? disabled,
    TfArg<bool>? enableLogging,
    TfArg<String>? description,
    ComputeFirewallParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network.encodeAs('id'),
           'direction': ?direction,
           'priority': ?priority,
           'source_ranges': ?sourceRanges,
           'source_tags': ?sourceTags,
           'source_service_accounts': ?sourceServiceAccounts,
           'target_tags': ?targetTags,
           'target_service_accounts': ?targetServiceAccounts,
           'destination_ranges': ?destinationRanges,
           if (logConfig != null)
             'log_config': TfArg.literal([logConfig.toArgMap()]),
           'disabled': ?disabled,
           'enable_logging': ?enableLogging,
           'description': ?description,
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
           ...rulePolicy.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFirewallSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeFirewall>`.
  RefTo<GoogleComputeFirewall> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_ranges` attribute.
  TfRef<List<String>> get destinationRanges =>
      TfRef.attribute<List<String>>(this, 'destination_ranges');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLogging =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_ranges` attribute.
  TfRef<List<String>> get sourceRanges =>
      TfRef.attribute<List<String>>(this, 'source_ranges');

  /// Reference to `source_service_accounts` attribute.
  TfRef<List<String>> get sourceServiceAccounts =>
      TfRef.attribute<List<String>>(this, 'source_service_accounts');

  /// Reference to `source_tags` attribute.
  TfRef<List<String>> get sourceTags =>
      TfRef.attribute<List<String>>(this, 'source_tags');

  /// Reference to `target_service_accounts` attribute.
  TfRef<List<String>> get targetServiceAccounts =>
      TfRef.attribute<List<String>>(this, 'target_service_accounts');

  /// Reference to `target_tags` attribute.
  TfRef<List<String>> get targetTags =>
      TfRef.attribute<List<String>>(this, 'target_tags');
}
