// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_networkfirewall_rule_group`.
const Set<String> _awsNetworkfirewallRuleGroupSensitive = <String>{};

/// Networkfirewall Rule Group enum for `type`.
enum NetworkfirewallRuleGroupType implements TerraformEnum {
  stateless('STATELESS'),
  stateful('STATEFUL'),
  statefulDomain('STATEFUL_DOMAIN');

  const NetworkfirewallRuleGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupEncryptionConfiguration {
  const NetworkfirewallRuleGroupEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  final RefTo<AwsKmsKey>? keyId;

  final TfArg<NetworkfirewallRuleGroupEncryptionConfigurationType> type;

  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NetworkfirewallRuleGroupEncryptionConfigurationType
    implements TerraformEnum {
  customerKms('CUSTOMER_KMS'),
  awsOwnedKmsKey('AWS_OWNED_KMS_KEY');

  const NetworkfirewallRuleGroupEncryptionConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final NetworkfirewallRuleGroupReferenceSets? referenceSets;

  final NetworkfirewallRuleGroupRuleVariables? ruleVariables;

  final NetworkfirewallRuleGroupRulesSource rulesSource;

  final NetworkfirewallRuleGroupStatefulRuleOptions? statefulRuleOptions;

  Map<String, Object?> encode() => {
    'reference_sets': ?referenceSets?.encode(),
    'rule_variables': ?ruleVariables?.encode(),
    'rules_source': rulesSource.encode(),
    'stateful_rule_options': ?statefulRuleOptions?.encode(),
  };
}

/// Typed helper for the `rule_group.reference_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupReferenceSets {
  const NetworkfirewallRuleGroupReferenceSets({this.ipSetReferences});

  final List<NetworkfirewallRuleGroupIpSetReferences>? ipSetReferences;

  Map<String, Object?> encode() => {
    if (ipSetReferences != null)
      'ip_set_references': [for (final e in ipSetReferences!) e.encode()],
  };
}

/// Typed helper for the `rule_group.reference_sets.ip_set_references` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupIpSetReferences {
  const NetworkfirewallRuleGroupIpSetReferences({
    required this.key,
    required this.ipSetReference,
  });

  final TfArg<String> key;

  final List<NetworkfirewallRuleGroupIpSetReference> ipSetReference;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set_reference': [for (final e in ipSetReference) e.encode()],
  };
}

/// Typed helper for the `rule_group.reference_sets.ip_set_references.ip_set_reference` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupIpSetReference {
  const NetworkfirewallRuleGroupIpSetReference({required this.referenceArn});

  final TfArg<String> referenceArn;

  Map<String, Object?> encode() => {'reference_arn': referenceArn.toTfJson()};
}

/// Typed helper for the `rule_group.rule_variables` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleVariables {
  const NetworkfirewallRuleGroupRuleVariables({this.ipSets, this.portSets});

  final List<NetworkfirewallRuleGroupIpSets>? ipSets;

  final List<NetworkfirewallRuleGroupPortSets>? portSets;

  Map<String, Object?> encode() => {
    if (ipSets != null) 'ip_sets': [for (final e in ipSets!) e.encode()],
    if (portSets != null) 'port_sets': [for (final e in portSets!) e.encode()],
  };
}

/// Typed helper for the `rule_group.rule_variables.ip_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupIpSets {
  const NetworkfirewallRuleGroupIpSets({
    required this.key,
    required this.ipSet,
  });

  final TfArg<String> key;

  final NetworkfirewallRuleGroupIpSet ipSet;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'ip_set': ipSet.encode(),
  };
}

/// Typed helper for the `rule_group.rule_variables.ip_sets.ip_set` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupIpSet {
  const NetworkfirewallRuleGroupIpSet({required this.definition});

  final TfArg<List<String>> definition;

  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `rule_group.rule_variables.port_sets` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupPortSets {
  const NetworkfirewallRuleGroupPortSets({
    required this.key,
    required this.portSet,
  });

  final TfArg<String> key;

  final NetworkfirewallRuleGroupPortSet portSet;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'port_set': portSet.encode(),
  };
}

/// Typed helper for the `rule_group.rule_variables.port_sets.port_set` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupPortSet {
  const NetworkfirewallRuleGroupPortSet({required this.definition});

  final TfArg<List<String>> definition;

  Map<String, Object?> encode() => {'definition': definition.toTfJson()};
}

/// Typed helper for the `rule_group.rules_source` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRulesSource {
  const NetworkfirewallRuleGroupRulesSource({
    this.rulesString,
    this.rulesSourceList,
    this.statefulRule,
    this.statelessRulesAndCustomActions,
  });

  final TfArg<String>? rulesString;

  final NetworkfirewallRuleGroupRulesSourceList? rulesSourceList;

  final List<NetworkfirewallRuleGroupStatefulRule>? statefulRule;

  final NetworkfirewallRuleGroupStatelessRulesAndCustomActions?
  statelessRulesAndCustomActions;

  Map<String, Object?> encode() => {
    'rules_string': ?rulesString?.toTfJson(),
    'rules_source_list': ?rulesSourceList?.encode(),
    if (statefulRule != null)
      'stateful_rule': [for (final e in statefulRule!) e.encode()],
    'stateless_rules_and_custom_actions': ?statelessRulesAndCustomActions
        ?.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.rules_source_list` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRulesSourceList {
  const NetworkfirewallRuleGroupRulesSourceList({
    required this.generatedRulesType,
    required this.targetTypes,
    required this.targets,
  });

  final TfArg<NetworkfirewallRuleGroupGeneratedRulesType> generatedRulesType;

  final List<TfArg<NetworkfirewallRuleGroupTargetTypes>> targetTypes;

  final TfArg<List<String>> targets;

  Map<String, Object?> encode() => {
    'generated_rules_type': generatedRulesType.toTfJson(),
    'target_types': [for (final e in targetTypes) e.toTfJson()],
    'targets': targets.toTfJson(),
  };
}

/// `generated_rules_type` — derived from the provider schema description.
enum NetworkfirewallRuleGroupGeneratedRulesType implements TerraformEnum {
  allowlist('ALLOWLIST'),
  denylist('DENYLIST'),
  rejectlist('REJECTLIST'),
  alertlist('ALERTLIST');

  const NetworkfirewallRuleGroupGeneratedRulesType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target_types` — derived from the provider schema description.
enum NetworkfirewallRuleGroupTargetTypes implements TerraformEnum {
  tlsSni('TLS_SNI'),
  httpHost('HTTP_HOST');

  const NetworkfirewallRuleGroupTargetTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_group.rules_source.stateful_rule` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupStatefulRule {
  const NetworkfirewallRuleGroupStatefulRule({
    required this.action,
    required this.header,
    required this.ruleOption,
  });

  final TfArg<NetworkfirewallRuleGroupAction> action;

  final NetworkfirewallRuleGroupHeader header;

  final List<NetworkfirewallRuleGroupRuleOption> ruleOption;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'header': header.encode(),
    'rule_option': [for (final e in ruleOption) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum NetworkfirewallRuleGroupAction implements TerraformEnum {
  pass('PASS'),
  drop('DROP'),
  alert('ALERT'),
  reject('REJECT');

  const NetworkfirewallRuleGroupAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_group.rules_source.stateful_rule.header` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupHeader {
  const NetworkfirewallRuleGroupHeader({
    required this.destination,
    required this.destinationPort,
    required this.direction,
    required this.protocol,
    required this.source,
    required this.sourcePort,
  });

  final TfArg<String> destination;

  final TfArg<String> destinationPort;

  final TfArg<NetworkfirewallRuleGroupDirection> direction;

  final TfArg<NetworkfirewallRuleGroupProtocol> protocol;

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

/// `direction` — derived from the provider schema description.
enum NetworkfirewallRuleGroupDirection implements TerraformEnum {
  forward('FORWARD'),
  any('ANY');

  const NetworkfirewallRuleGroupDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `protocol` — derived from the provider schema description.
enum NetworkfirewallRuleGroupProtocol implements TerraformEnum {
  ip('IP'),
  tcp('TCP'),
  udp('UDP'),
  icmp('ICMP'),
  http('HTTP'),
  ftp('FTP'),
  tls('TLS'),
  smb('SMB'),
  dns('DNS'),
  dcerpc('DCERPC'),
  ssh('SSH'),
  smtp('SMTP'),
  imap('IMAP'),
  msn('MSN'),
  krb5('KRB5'),
  ikev2('IKEV2'),
  tftp('TFTP'),
  ntp('NTP'),
  dhcp('DHCP'),
  http2('HTTP2'),
  quic('QUIC');

  const NetworkfirewallRuleGroupProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_group.rules_source.stateful_rule.rule_option` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleOption {
  const NetworkfirewallRuleGroupRuleOption({
    required this.keyword,
    this.settings,
  });

  final TfArg<String> keyword;

  final TfArg<List<String>>? settings;

  Map<String, Object?> encode() => {
    'keyword': keyword.toTfJson(),
    'settings': ?settings?.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupStatelessRulesAndCustomActions {
  const NetworkfirewallRuleGroupStatelessRulesAndCustomActions({
    this.customAction,
    required this.statelessRule,
  });

  final List<NetworkfirewallRuleGroupCustomAction>? customAction;

  final List<NetworkfirewallRuleGroupStatelessRule> statelessRule;

  Map<String, Object?> encode() => {
    if (customAction != null)
      'custom_action': [for (final e in customAction!) e.encode()],
    'stateless_rule': [for (final e in statelessRule) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupCustomAction {
  const NetworkfirewallRuleGroupCustomAction({
    required this.actionName,
    required this.actionDefinition,
  });

  final TfArg<String> actionName;

  final NetworkfirewallRuleGroupActionDefinition actionDefinition;

  Map<String, Object?> encode() => {
    'action_name': actionName.toTfJson(),
    'action_definition': actionDefinition.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupActionDefinition {
  const NetworkfirewallRuleGroupActionDefinition({
    required this.publishMetricAction,
  });

  final NetworkfirewallRuleGroupPublishMetricAction publishMetricAction;

  Map<String, Object?> encode() => {
    'publish_metric_action': publishMetricAction.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition.publish_metric_action` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupPublishMetricAction {
  const NetworkfirewallRuleGroupPublishMetricAction({required this.dimension});

  final List<NetworkfirewallRuleGroupDimension> dimension;

  Map<String, Object?> encode() => {
    'dimension': [for (final e in dimension) e.encode()],
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.custom_action.action_definition.publish_metric_action.dimension` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupDimension {
  const NetworkfirewallRuleGroupDimension({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupStatelessRule {
  const NetworkfirewallRuleGroupStatelessRule({
    required this.priority,
    required this.ruleDefinition,
  });

  final TfArg<num> priority;

  final NetworkfirewallRuleGroupRuleDefinition ruleDefinition;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_definition': ruleDefinition.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupRuleDefinition {
  const NetworkfirewallRuleGroupRuleDefinition({
    required this.actions,
    required this.matchAttributes,
  });

  final TfArg<List<String>> actions;

  final NetworkfirewallRuleGroupMatchAttributes matchAttributes;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'match_attributes': matchAttributes.encode(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupMatchAttributes {
  const NetworkfirewallRuleGroupMatchAttributes({
    this.protocols,
    this.destination,
    this.destinationPort,
    this.source,
    this.sourcePort,
    this.tcpFlag,
  });

  final TfArg<List<num>>? protocols;

  final List<NetworkfirewallRuleGroupDestination>? destination;

  final List<NetworkfirewallRuleGroupDestinationPort>? destinationPort;

  final List<NetworkfirewallRuleGroupSource>? source;

  final List<NetworkfirewallRuleGroupSourcePort>? sourcePort;

  final List<NetworkfirewallRuleGroupTcpFlag>? tcpFlag;

  Map<String, Object?> encode() => {
    'protocols': ?protocols?.toTfJson(),
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
final class NetworkfirewallRuleGroupDestination {
  const NetworkfirewallRuleGroupDestination({required this.addressDefinition});

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.destination_port` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupDestinationPort {
  const NetworkfirewallRuleGroupDestinationPort({
    required this.fromPort,
    this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.source` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupSource {
  const NetworkfirewallRuleGroupSource({required this.addressDefinition});

  final TfArg<String> addressDefinition;

  Map<String, Object?> encode() => {
    'address_definition': addressDefinition.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.source_port` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupSourcePort {
  const NetworkfirewallRuleGroupSourcePort({
    required this.fromPort,
    this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<num>? toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'to_port': ?toPort?.toTfJson(),
  };
}

/// Typed helper for the `rule_group.rules_source.stateless_rules_and_custom_actions.stateless_rule.rule_definition.match_attributes.tcp_flag` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupTcpFlag {
  const NetworkfirewallRuleGroupTcpFlag({required this.flags, this.masks});

  final List<TfArg<NetworkfirewallRuleGroupFlags>> flags;

  final List<TfArg<NetworkfirewallRuleGroupMasks>>? masks;

  Map<String, Object?> encode() => {
    'flags': [for (final e in flags) e.toTfJson()],
    if (masks != null) 'masks': [for (final e in masks!) e.toTfJson()],
  };
}

/// `flags` — derived from the provider schema description.
enum NetworkfirewallRuleGroupFlags implements TerraformEnum {
  fin('FIN'),
  syn('SYN'),
  rst('RST'),
  psh('PSH'),
  ack('ACK'),
  urg('URG'),
  ece('ECE'),
  cwr('CWR');

  const NetworkfirewallRuleGroupFlags(this.terraformValue);
  @override
  final String terraformValue;
}

/// `masks` — derived from the provider schema description.
enum NetworkfirewallRuleGroupMasks implements TerraformEnum {
  fin('FIN'),
  syn('SYN'),
  rst('RST'),
  psh('PSH'),
  ack('ACK'),
  urg('URG'),
  ece('ECE'),
  cwr('CWR');

  const NetworkfirewallRuleGroupMasks(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_group.stateful_rule_options` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupStatefulRuleOptions {
  const NetworkfirewallRuleGroupStatefulRuleOptions({required this.ruleOrder});

  final TfArg<NetworkfirewallRuleGroupRuleOrder> ruleOrder;

  Map<String, Object?> encode() => {'rule_order': ruleOrder.toTfJson()};
}

/// `rule_order` — derived from the provider schema description.
enum NetworkfirewallRuleGroupRuleOrder implements TerraformEnum {
  defaultActionOrder('DEFAULT_ACTION_ORDER'),
  strictOrder('STRICT_ORDER');

  const NetworkfirewallRuleGroupRuleOrder(this.terraformValue);
  @override
  final String terraformValue;
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
    required TfArg<NetworkfirewallRuleGroupType> type,
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
           'description': ?description,
           'name': name,
           'region': ?region,
           'rules': ?rules,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkfirewallRuleGroup>`.
  RefTo<AwsNetworkfirewallRuleGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacityRef => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `rules` attribute.
  TfRef<String> get rulesRef => TfRef.attribute<String>(this, 'rules');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
