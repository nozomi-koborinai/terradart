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

  final TfArg<NetworkfirewallFirewallPolicyType> type;

  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkfirewallFirewallPolicyType implements TerraformEnum {
  customerKms('CUSTOMER_KMS'),
  awsOwnedKmsKey('AWS_OWNED_KMS_KEY');

  const NetworkfirewallFirewallPolicyType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<NetworkfirewallFirewallPolicyRuleOrder>? ruleOrder;

  final TfArg<NetworkfirewallFirewallPolicyStreamExceptionPolicy>?
  streamExceptionPolicy;

  final NetworkfirewallFirewallPolicyFlowTimeouts? flowTimeouts;

  Map<String, Object?> encode() => {
    'rule_order': ?ruleOrder?.toTfJson(),
    'stream_exception_policy': ?streamExceptionPolicy?.toTfJson(),
    'flow_timeouts': ?flowTimeouts?.encode(),
  };
}

/// `rule_order` — derived from the provider schema description.
enum NetworkfirewallFirewallPolicyRuleOrder implements TerraformEnum {
  defaultActionOrder('DEFAULT_ACTION_ORDER'),
  strictOrder('STRICT_ORDER');

  const NetworkfirewallFirewallPolicyRuleOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `stream_exception_policy` — derived from the provider schema description.
enum NetworkfirewallFirewallPolicyStreamExceptionPolicy
    implements TerraformEnum {
  drop('DROP'),
  continueCase('CONTINUE'),
  reject('REJECT');

  const NetworkfirewallFirewallPolicyStreamExceptionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `firewall_policy.stateful_engine_options.flow_timeouts` block of
/// `aws_networkfirewall_firewall_policy` (derived from provider schema).
@immutable
final class NetworkfirewallFirewallPolicyFlowTimeouts {
  const NetworkfirewallFirewallPolicyFlowTimeouts({this.tcpIdleTimeoutSeconds});

  final TfArg<num>? tcpIdleTimeoutSeconds;

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

  final TfArg<NetworkfirewallFirewallPolicyAction>? action;

  Map<String, Object?> encode() => {'action': ?action?.toTfJson()};
}

/// `action` — derived from the provider schema description.
enum NetworkfirewallFirewallPolicyAction implements TerraformEnum {
  dropToAlert('DROP_TO_ALERT');

  const NetworkfirewallFirewallPolicyAction(this.terraformValue);
  @override
  final String terraformValue;
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
