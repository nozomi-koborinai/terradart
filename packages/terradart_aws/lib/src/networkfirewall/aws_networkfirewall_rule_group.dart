// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_rule_group`.
const Set<String> _awsNetworkfirewallRuleGroupSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupEncryptionConfiguration {
  const NetworkfirewallRuleGroupEncryptionConfiguration({
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

/// Typed helper for the `rule_group` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroup {
  const NetworkfirewallRuleGroupRuleGroup({
    this.referenceSets,
    this.ruleVariables,
    required this.rulesSource,
    this.statefulRuleOptions,
  });

  final NetworkfirewallRuleGroupRuleGroupReferenceSets? referenceSets;

  final NetworkfirewallRuleGroupRuleGroupRuleVariables? ruleVariables;

  final NetworkfirewallRuleGroupRuleGroupRulesSource rulesSource;

  final NetworkfirewallRuleGroupRuleGroupStatefulRuleOptions?
  statefulRuleOptions;

  Map<String, Object?> encode() => {
    if (referenceSets != null) 'reference_sets': referenceSets!.encode(),
    if (ruleVariables != null) 'rule_variables': ruleVariables!.encode(),
    'rules_source': rulesSource.encode(),
    if (statefulRuleOptions != null)
      'stateful_rule_options': statefulRuleOptions!.encode(),
  };
}

/// Typed helper for the `rule_group.reference_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupReferenceSets {
  const NetworkfirewallRuleGroupRuleGroupReferenceSets({this.ipSetReferences});

  final List<NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferences>?
  ipSetReferences;

  Map<String, Object?> encode() => {
    if (ipSetReferences != null)
      'ip_set_references': [for (final e in ipSetReferences!) e.encode()],
  };
}

/// Typed helper for the `rule_group.reference_sets.ip_set_references` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferences {
  const NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferences({
    required this.key,
    required this.ipSetReference,
  });

  final TfArg<String> key;

  final List<
    NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferencesIpSetReference
  >
  ipSetReference;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set_reference': [for (final e in ipSetReference) e.encode()],
  };
}

/// Typed helper for the `rule_group.reference_sets.ip_set_references.ip_set_reference` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferencesIpSetReference {
  const NetworkfirewallRuleGroupRuleGroupReferenceSetsIpSetReferencesIpSetReference({
    required this.referenceArn,
  });

  final TfArg<String> referenceArn;

  Map<String, Object?> encode() => {'reference_arn': referenceArn.toTfJson()};
}

/// Typed helper for the `rule_group.rule_variables` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRuleVariables {
  const NetworkfirewallRuleGroupRuleGroupRuleVariables({
    this.ipSets,
    this.portSets,
  });

  final List<NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSets>? ipSets;

  final List<NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSets>? portSets;

  Map<String, Object?> encode() => {
    if (ipSets != null) 'ip_sets': [for (final e in ipSets!) e.encode()],
    if (portSets != null) 'port_sets': [for (final e in portSets!) e.encode()],
  };
}

/// Typed helper for the `rule_group.rule_variables.ip_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSets {
  const NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSets({
    required this.key,
    required this.ipSet,
  });

  final TfArg<String> key;

  final NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSetsIpSet ipSet;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set': ipSet.encode(),
  };
}

/// Typed helper for the `rule_group.rule_variables.ip_sets.ip_set` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSetsIpSet {
  const NetworkfirewallRuleGroupRuleGroupRuleVariablesIpSetsIpSet({
    required this.definition,
  });

  final TfArg<List<Object?>> definition;

  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `rule_group.rule_variables.port_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSets {
  const NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSets({
    required this.key,
    required this.portSet,
  });

  final TfArg<String> key;

  final NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSetsPortSet portSet;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'port_set': portSet.encode(),
  };
}

/// Typed helper for the `rule_group.rule_variables.port_sets.port_set` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSetsPortSet {
  const NetworkfirewallRuleGroupRuleGroupRuleVariablesPortSetsPortSet({
    required this.definition,
  });

  final TfArg<List<Object?>> definition;

  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `rule_group.rules_source` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSource {
  const NetworkfirewallRuleGroupRuleGroupRulesSource({
    this.rulesString,
    this.rulesSourceList,
    this.statefulRule,
    this.statelessRulesAndCustomActions,
  });

  final TfArg<String>? rulesString;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceRulesSourceList?
  rulesSourceList;

  final List<NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRule>?
  statefulRule;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions?
  statelessRulesAndCustomActions;

  Map<String, Object?> encode() => {
    if (rulesString != null) 'rules_string': rulesString!.toTfJson(),
    if (rulesSourceList != null) 'rules_source_list': rulesSourceList!.encode(),
    if (statefulRule != null)
      'stateful_rule': [for (final e in statefulRule!) e.encode()],
    if (statelessRulesAndCustomActions != null)
      'stateless_rules_and_custom_actions': statelessRulesAndCustomActions!
          .encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.rules_source_list` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceRulesSourceList {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceRulesSourceList({
    required this.generatedRulesType,
    required this.targetTypes,
    required this.targets,
  });

  final TfArg<String> generatedRulesType;

  final TfArg<List<Object?>> targetTypes;

  final TfArg<List<Object?>> targets;

  Map<String, Object?> encode() => {
    'generated_rules_type': generatedRulesType.toTfJson(),
    'target_types': targetTypes.toTfJson(),
    'targets': targets.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateful_rule` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRule {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRule({
    required this.action,
    required this.header,
    required this.ruleOption,
  });

  final TfArg<String> action;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleHeader header;

  final List<NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleRuleOption>
  ruleOption;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'header': header.encode(),
    'rule_option': [for (final e in ruleOption) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateful_rule.header` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleHeader {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleHeader({
    required this.destination,
    required this.destinationPort,
    required this.direction,
    required this.protocol,
    required this.source,
    required this.sourcePort,
  });

  final TfArg<String> destination;

  final TfArg<String> destinationPort;

  final TfArg<String> direction;

  final TfArg<String> protocol;

  final TfArg<String> source;

  final TfArg<String> sourcePort;

  Map<String, Object?> encode() => {
    'destination': destination.toTfJson(),
    'destination_port': destinationPort.toTfJson(),
    'direction': direction.toTfJson(),
    'protocol': protocol.toTfJson(),
    'source': source.toTfJson(),
    'source_port': sourcePort.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateful_rule.rule_option` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleRuleOption {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatefulRuleRuleOption({
    required this.keyword,
    this.settings,
  });

  final TfArg<String> keyword;

  final TfArg<List<Object?>>? settings;

  Map<String, Object?> encode() => {
    'keyword': keyword.toTfJson(),
    if (settings != null) 'settings': settings!.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActions({
    this.customAction,
    required this.statelessRule,
  });

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction
  >?
  customAction;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule
  >
  statelessRule;

  Map<String, Object?> encode() => {
    if (customAction != null)
      'custom_action': [for (final e in customAction!) e.encode()],
    'stateless_rule': [for (final e in statelessRule) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction({
    required this.actionName,
    required this.actionDefinition,
  });

  final TfArg<String> actionName;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition
  actionDefinition;

  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_definition': actionDefinition.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition({
    required this.publishMetricAction,
  });

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction
  publishMetricAction;

  Map<String, Object?> encode() => {
    'publish_metric_action': publishMetricAction.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition.publish_metric_action` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction({
    required this.dimension,
  });

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension
  >
  dimension;

  Map<String, Object?> encode() => {
    'dimension': [for (final e in dimension) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition.publish_metric_action.dimension` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule({
    required this.priority,
    required this.ruleDefinition,
  });

  final TfArg<num> priority;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition
  ruleDefinition;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_definition': ruleDefinition.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition({
    required this.actions,
    required this.matchAttributes,
  });

  final TfArg<List<Object?>> actions;

  final NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes
  matchAttributes;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'match_attributes': matchAttributes.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes({
    this.protocols,
    this.destination,
    this.destinationPort,
    this.source,
    this.sourcePort,
    this.tcpFlag,
  });

  final TfArg<List<Object?>>? protocols;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination
  >?
  destination;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort
  >?
  destinationPort;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource
  >?
  source;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort
  >?
  sourcePort;

  final List<
    NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag
  >?
  tcpFlag;

  Map<String, Object?> encode() => {
    if (protocols != null) 'protocols': protocols!.toTfJson(),
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (destinationPort != null)
      'destination_port': [for (final e in destinationPort!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
    if (sourcePort != null)
      'source_port': [for (final e in sourcePort!) e.encode()],
    if (tcpFlag != null) 'tcp_flag': [for (final e in tcpFlag!) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.destination` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination({
    required this.addressDefinition,
  });

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.destination_port` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort({
    required this.fromPort,
    this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.source` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource({
    required this.addressDefinition,
  });

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.source_port` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePort({
    required this.fromPort,
    this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    if (toPort != null) 'to_port': toPort!.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.tcp_flag` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag {
  const NetworkfirewallRuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag({
    required this.flags,
    this.masks,
  });

  final TfArg<List<Object?>> flags;

  final TfArg<List<Object?>>? masks;

  Map<String, Object?> encode() => {
    'flags': flags.toTfJson(),
    if (masks != null) 'masks': masks!.toTfJson(),
  };
}

/// Typed helper for the `rule_group.stateful_rule_options` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleGroupStatefulRuleOptions {
  const NetworkfirewallRuleGroupRuleGroupStatefulRuleOptions({
    required this.ruleOrder,
  });

  final TfArg<String> ruleOrder;

  Map<String, Object?> encode() => {'rule_order': ruleOrder.toTfJson()};
}

/// Factory wrapper for `aws_networkfirewall_rule_group`.
final class AwsNetworkfirewallRuleGroup extends Resource {
  static const String tfType = 'aws_networkfirewall_rule_group';

  AwsNetworkfirewallRuleGroup({
    required super.localName,
    required TfArg<num> capacity,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? rules,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    NetworkfirewallRuleGroupEncryptionConfiguration? encryptionConfiguration,
    NetworkfirewallRuleGroupRuleGroup? ruleGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity': capacity,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (rules != null) 'rules': rules,
           if (tags != null) 'tags': tags,
           'type': type,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           if (ruleGroup != null)
             'rule_group': TfArg.literal(ruleGroup.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkfirewallRuleGroupSensitive;

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
