// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? keyId;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (keyId != null) 'key_id': keyId!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `firewall_policy` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicy {
  const NetworkfirewallFirewallPolicyFirewallPolicy({
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

  final TfArg<List<Object?>>? statefulDefaultActions;

  final TfArg<List<Object?>> statelessDefaultActions;

  final TfArg<List<Object?>> statelessFragmentDefaultActions;

  final TfArg<String>? tlsInspectionConfigurationArn;

  final NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariables?
  policyVariables;

  final NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptions?
  statefulEngineOptions;

  final List<
    NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReference
  >?
  statefulRuleGroupReference;

  final List<NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomAction>?
  statelessCustomAction;

  final List<
    NetworkfirewallFirewallPolicyFirewallPolicyStatelessRuleGroupReference
  >?
  statelessRuleGroupReference;

  Map<String, Object?> encode() => {
    if (enableTlsSessionHolding != null)
      'enable_tls_session_holding': enableTlsSessionHolding!.toTfJson(),
    if (statefulDefaultActions != null)
      'stateful_default_actions': statefulDefaultActions!.toTfJson(),
    'stateless_default_actions': statelessDefaultActions.toTfJson(),
    'stateless_fragment_default_actions': statelessFragmentDefaultActions
        .toTfJson(),
    if (tlsInspectionConfigurationArn != null)
      'tls_inspection_configuration_arn': tlsInspectionConfigurationArn!
          .toTfJson(),
    if (policyVariables != null) 'policy_variables': policyVariables!.encode(),
    if (statefulEngineOptions != null)
      'stateful_engine_options': statefulEngineOptions!.encode(),
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
final class NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariables {
  const NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariables({
    this.ruleVariables,
  });

  final List<
    NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariables
  >?
  ruleVariables;

  Map<String, Object?> encode() => {
    if (ruleVariables != null)
      'rule_variables': [for (final e in ruleVariables!) e.encode()],
  };
}

/// Typed helper for the `firewall_policy.policy_variables.rule_variables` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariables {
  const NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariables({
    required this.key,
    required this.ipSet,
  });

  final TfArg<String> key;

  final NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariablesIpSet
  ipSet;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set': ipSet.encode(),
  };
}

/// Typed helper for the `firewall_policy.policy_variables.rule_variables.ip_set` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariablesIpSet {
  const NetworkfirewallFirewallPolicyFirewallPolicyPolicyVariablesRuleVariablesIpSet({
    required this.definition,
  });

  final TfArg<List<Object?>> definition;

  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `firewall_policy.stateful_engine_options` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptions {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptions({
    this.ruleOrder,
    this.streamExceptionPolicy,
    this.flowTimeouts,
  });

  final TfArg<String>? ruleOrder;

  final TfArg<String>? streamExceptionPolicy;

  final NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts?
  flowTimeouts;

  Map<String, Object?> encode() => {
    if (ruleOrder != null) 'rule_order': ruleOrder!.toTfJson(),
    if (streamExceptionPolicy != null)
      'stream_exception_policy': streamExceptionPolicy!.toTfJson(),
    if (flowTimeouts != null) 'flow_timeouts': flowTimeouts!.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateful_engine_options.flow_timeouts` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatefulEngineOptionsFlowTimeouts({
    this.tcpIdleTimeoutSeconds,
  });

  final TfArg<num>? tcpIdleTimeoutSeconds;

  Map<String, Object?> encode() => {
    if (tcpIdleTimeoutSeconds != null)
      'tcp_idle_timeout_seconds': tcpIdleTimeoutSeconds!.toTfJson(),
  };
}

/// Typed helper for the `firewall_policy.stateful_rule_group_reference` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReference {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReference({
    this.deepThreatInspection,
    this.priority,
    required this.resourceArn,
    this.override,
  });

  final TfArg<String>? deepThreatInspection;

  final TfArg<num>? priority;

  final TfArg<String> resourceArn;

  final NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride?
  override;

  Map<String, Object?> encode() => {
    if (deepThreatInspection != null)
      'deep_threat_inspection': deepThreatInspection!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
    if (override != null) 'override': override!.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateful_rule_group_reference.override` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride({
    this.action,
  });

  final TfArg<String>? action;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomAction {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomAction({
    required this.actionName,
    required this.actionDefinition,
  });

  final TfArg<String> actionName;

  final NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
  actionDefinition;

  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_definition': actionDefinition.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition({
    required this.publishMetricAction,
  });

  final NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction
  publishMetricAction;

  Map<String, Object?> encode() => {
    'publish_metric_action': publishMetricAction.encode(),
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition.publish_metric_action` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction({
    required this.dimension,
  });

  final List<
    NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension
  >
  dimension;

  Map<String, Object?> encode() => {
    'dimension': [for (final e in dimension) e.encode()],
  };
}

/// Typed helper for the `firewall_policy.stateless_custom_action.action_definition.publish_metric_action.dimension` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `firewall_policy.stateless_rule_group_reference` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  const NetworkfirewallFirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  final TfArg<num> priority;

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_firewall_policy`.
final class AwsNetworkfirewallFirewallPolicy extends Resource {
  static const String tfType = 'aws_networkfirewall_firewall_policy';

  AwsNetworkfirewallFirewallPolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    NetworkfirewallFirewallPolicyEncryptionConfiguration?
    encryptionConfiguration,
    required NetworkfirewallFirewallPolicyFirewallPolicy firewallPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           'firewall_policy': TfArg.literal(firewallPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallFirewallPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');
}
