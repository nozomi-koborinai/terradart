// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_networkfirewall_firewall_policy`.
const Set<String> _awsNetworkfirewallFirewallPolicySensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyEncryptionConfiguration {
  const NetworkfirewallFirewallPolicyEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  final RefTo<AwsKmsKey>? keyId;

  final NetworkfirewallFirewallPolicyType type;

  @internal
  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkfirewallFirewallPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallFirewallPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const customerKms = NetworkfirewallFirewallPolicyType._(
    TfArgLiteral('CUSTOMER_KMS'),
  );
  static const awsOwnedKmsKey = NetworkfirewallFirewallPolicyType._(
    TfArgLiteral('AWS_OWNED_KMS_KEY'),
  );

  static const List<NetworkfirewallFirewallPolicyType> values = [
    customerKms,
    awsOwnedKmsKey,
  ];
}

/// Typed helper for the `firewall_policy` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicy {
  const NetworkfirewallFirewallPolicy({
    this.enableTlsSessionHolding,
    this.statefulDefaultActions,
    required this.statelessDefaultActions,
    required this.statelessFragmentDefaultActions,
    this.tlsInspectionConfigurationArn,
    this.policyVariables,
    this.statefulEngineOptions,
    this.statefulRuleGroupReference,
    this.statelessCustomAction,
    this.statelessRuleGroupReference,
  });

  final TfArg<bool>? enableTlsSessionHolding;

  final TfArg<List<String>>? statefulDefaultActions;

  final TfArg<List<String>> statelessDefaultActions;

  final TfArg<List<String>> statelessFragmentDefaultActions;

  final TfArg<String>? tlsInspectionConfigurationArn;

  final NetworkfirewallFirewallPolicyVariables? policyVariables;

  final NetworkfirewallFirewallPolicyStatefulEngineOptions?
  statefulEngineOptions;

  final List<NetworkfirewallFirewallPolicyStatefulRuleGroupReference>?
  statefulRuleGroupReference;

  final List<NetworkfirewallFirewallPolicyStatelessCustomAction>?
  statelessCustomAction;

  final List<NetworkfirewallFirewallPolicyStatelessRuleGroupReference>?
  statelessRuleGroupReference;

  @internal
  Map<String, Object?> encode() => {
    'enable_tls_session_holding': ?enableTlsSessionHolding?.toTfJson(),
    'stateful_default_actions': ?statefulDefaultActions?.toTfJson(),
    'stateless_default_actions': statelessDefaultActions.toTfJson(),
    'stateless_fragment_default_actions': statelessFragmentDefaultActions
        .toTfJson(),
    'tls_inspection_configuration_arn': ?tlsInspectionConfigurationArn
        ?.toTfJson(),
    'policy_variables': ?policyVariables?.encode(),
    'stateful_engine_options': ?statefulEngineOptions?.encode(),
    if (statefulRuleGroupReference != null)
      'stateful_rule_group_reference': [
        for (final e in statefulRuleGroupReference!) e.encode(),
      ],
    if (statelessCustomAction != null)
      'stateless_custom_action': [
        for (final e in statelessCustomAction!) e.encode(),
      ],
    if (statelessRuleGroupReference != null)
      'stateless_rule_group_reference': [
        for (final e in statelessRuleGroupReference!) e.encode(),
      ],
  };
}

/// Typed helper for the `firewall_policy.policy_variables` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyVariables {
  const NetworkfirewallFirewallPolicyVariables({this.ruleVariables});

  final List<NetworkfirewallFirewallPolicyRuleVariables>? ruleVariables;

  @internal
  Map<String, Object?> encode() => {
    if (ruleVariables != null)
      'rule_variables': [for (final e in ruleVariables!) e.encode()],
  };
}

/// Typed helper for the `firewall_policy.policy_variables.rule_variables` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyRuleVariables {
  const NetworkfirewallFirewallPolicyRuleVariables({
    required this.key,
    required this.ipSet,
  });

  final TfArg<String> key;

  final NetworkfirewallFirewallPolicyIpSet ipSet;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set': ipSet.encode(),
  };
}

/// Typed helper for the `firewall_policy.policy_variables.rule_variables.ip_set` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyIpSet {
  const NetworkfirewallFirewallPolicyIpSet({required this.definition});

  final TfArg<List<String>> definition;

  @internal
  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `firewall_policy.stateful_engine_options` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyStatefulEngineOptions {
  const NetworkfirewallFirewallPolicyStatefulEngineOptions({
    this.ruleOrder,
    this.streamExceptionPolicy,
    this.flowTimeouts,
  });

  final NetworkfirewallFirewallPolicyRuleOrder? ruleOrder;

  final NetworkfirewallFirewallPolicyStreamExceptionPolicy?
  streamExceptionPolicy;

  final NetworkfirewallFirewallPolicyFlowTimeouts? flowTimeouts;

  @internal
  Map<String, Object?> encode() => {
    'rule_order': ?ruleOrder?.toTfJson(),
    'stream_exception_policy': ?streamExceptionPolicy?.toTfJson(),
    'flow_timeouts': ?flowTimeouts?.encode(),
  };
}

/// `rule_order` — derived from the provider schema description.
extension type const NetworkfirewallFirewallPolicyRuleOrder._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallFirewallPolicyRuleOrder.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallPolicyRuleOrder.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallPolicyRuleOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultActionOrder = NetworkfirewallFirewallPolicyRuleOrder._(
    TfArgLiteral('DEFAULT_ACTION_ORDER'),
  );
  static const strictOrder = NetworkfirewallFirewallPolicyRuleOrder._(
    TfArgLiteral('STRICT_ORDER'),
  );

  static const List<NetworkfirewallFirewallPolicyRuleOrder> values = [
    defaultActionOrder,
    strictOrder,
  ];
}

/// `stream_exception_policy` — derived from the provider schema description.
extension type const NetworkfirewallFirewallPolicyStreamExceptionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkfirewallFirewallPolicyStreamExceptionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallPolicyStreamExceptionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallPolicyStreamExceptionPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const drop = NetworkfirewallFirewallPolicyStreamExceptionPolicy._(
    TfArgLiteral('DROP'),
  );
  static const continueCase =
      NetworkfirewallFirewallPolicyStreamExceptionPolicy._(
        TfArgLiteral('CONTINUE'),
      );
  static const reject = NetworkfirewallFirewallPolicyStreamExceptionPolicy._(
    TfArgLiteral('REJECT'),
  );

  static const List<NetworkfirewallFirewallPolicyStreamExceptionPolicy> values =
      [drop, continueCase, reject];
}

/// Typed helper for the `firewall_policy.stateful_engine_options.flow_timeouts` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFlowTimeouts {
  const NetworkfirewallFirewallPolicyFlowTimeouts({this.tcpIdleTimeoutSeconds});

  final TfArg<num>? tcpIdleTimeoutSeconds;

  @internal
  Map<String, Object?> encode() => {
    'tcp_idle_timeout_seconds': ?tcpIdleTimeoutSeconds?.toTfJson(),
  };
}

/// Typed helper for the `firewall_policy.stateful_rule_group_reference` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyStatefulRuleGroupReference {
  const NetworkfirewallFirewallPolicyStatefulRuleGroupReference({
    this.deepThreatInspection,
    this.priority,
    required this.resourceArn,
    this.override,
  });

  final TfArg<String>? deepThreatInspection;

  final TfArg<num>? priority;

  final TfArg<String> resourceArn;

  final NetworkfirewallFirewallPolicyOverride? override;

  @internal
  Map<String, Object?> encode() => {
    'deep_threat_inspection': ?deepThreatInspection?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
    'override': ?override?.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateful_rule_group_reference.override` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyOverride {
  const NetworkfirewallFirewallPolicyOverride({this.action});

  final NetworkfirewallFirewallPolicyAction? action;

  @internal
  Map<String, Object?> encode() => {'action': ?action?.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const NetworkfirewallFirewallPolicyAction._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallFirewallPolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallFirewallPolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallFirewallPolicyAction.arg(TfArg<String> arg)
    : this._(arg);

  static const dropToAlert = NetworkfirewallFirewallPolicyAction._(
    TfArgLiteral('DROP_TO_ALERT'),
  );

  static const List<NetworkfirewallFirewallPolicyAction> values = [dropToAlert];
}

/// Typed helper for the `firewall_policy.stateless_custom_action` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyStatelessCustomAction {
  const NetworkfirewallFirewallPolicyStatelessCustomAction({
    required this.actionName,
    required this.actionDefinition,
  });

  final TfArg<String> actionName;

  final NetworkfirewallFirewallPolicyActionDefinition actionDefinition;

  @internal
  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_definition': actionDefinition.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyActionDefinition {
  const NetworkfirewallFirewallPolicyActionDefinition({
    required this.publishMetricAction,
  });

  final NetworkfirewallFirewallPolicyPublishMetricAction publishMetricAction;

  @internal
  Map<String, Object?> encode() => {
    'publish_metric_action': publishMetricAction.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition.publish_metric_action` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyPublishMetricAction {
  const NetworkfirewallFirewallPolicyPublishMetricAction({
    required this.dimension,
  });

  final List<NetworkfirewallFirewallPolicyDimension> dimension;

  @internal
  Map<String, Object?> encode() => {
    'dimension': [for (final e in dimension) e.encode()],
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition.publish_metric_action.dimension` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyDimension {
  const NetworkfirewallFirewallPolicyDimension({required this.value});

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `firewall_policy.stateless_rule_group_reference` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyStatelessRuleGroupReference {
  const NetworkfirewallFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  final TfArg<num> priority;

  final TfArg<String> resourceArn;

  @internal
  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_firewall_policy`.
final class AwsNetworkfirewallFirewallPolicy extends Resource {
  static const String tfType = 'aws_networkfirewall_firewall_policy';

  AwsNetworkfirewallFirewallPolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    NetworkfirewallFirewallPolicyEncryptionConfiguration?
    encryptionConfiguration,
    required NetworkfirewallFirewallPolicy firewallPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           'firewall_policy': TfArg.literal(firewallPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallFirewallPolicy>`.
  RefTo<AwsNetworkfirewallFirewallPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
