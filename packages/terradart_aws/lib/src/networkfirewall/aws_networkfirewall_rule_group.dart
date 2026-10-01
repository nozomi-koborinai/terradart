// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_networkfirewall_rule_group`.
const Set<String> _awsNetworkfirewallRuleGroupSensitive = <String>{};

/// Networkfirewall Rule Group enum for `type`.
extension type const NetworkfirewallRuleGroupType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupType.arg(TfArg<String> arg) : this._(arg);

  static const stateless = NetworkfirewallRuleGroupType._(
    TfArgLiteral('STATELESS'),
  );
  static const stateful = NetworkfirewallRuleGroupType._(
    TfArgLiteral('STATEFUL'),
  );
  static const statefulDomain = NetworkfirewallRuleGroupType._(
    TfArgLiteral('STATEFUL_DOMAIN'),
  );

  static const List<NetworkfirewallRuleGroupType> values = [
    stateless,
    stateful,
    statefulDomain,
  ];
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

  final NetworkfirewallRuleGroupEncryptionConfigurationType type;

  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupEncryptionConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkfirewallRuleGroupEncryptionConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupEncryptionConfigurationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupEncryptionConfigurationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const customerKms =
      NetworkfirewallRuleGroupEncryptionConfigurationType._(
        TfArgLiteral('CUSTOMER_KMS'),
      );
  static const awsOwnedKmsKey =
      NetworkfirewallRuleGroupEncryptionConfigurationType._(
        TfArgLiteral('AWS_OWNED_KMS_KEY'),
      );

  static const List<NetworkfirewallRuleGroupEncryptionConfigurationType>
  values = [customerKms, awsOwnedKmsKey];
}

/// Typed helper for the `rule_group` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroup {
  const NetworkfirewallRuleGroup({
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

  final NetworkfirewallRuleGroupGeneratedRulesType generatedRulesType;

  final List<NetworkfirewallRuleGroupTargetTypes> targetTypes;

  final TfArg<List<String>> targets;

  Map<String, Object?> encode() => {
    'generated_rules_type': generatedRulesType.toTfJson(),
    'target_types': [for (final e in targetTypes) e.toTfJson()],
    'targets': targets.toTfJson(),
  };
}

/// `generated_rules_type` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupGeneratedRulesType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkfirewallRuleGroupGeneratedRulesType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupGeneratedRulesType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupGeneratedRulesType.arg(TfArg<String> arg)
    : this._(arg);

  static const allowlist = NetworkfirewallRuleGroupGeneratedRulesType._(
    TfArgLiteral('ALLOWLIST'),
  );
  static const denylist = NetworkfirewallRuleGroupGeneratedRulesType._(
    TfArgLiteral('DENYLIST'),
  );
  static const rejectlist = NetworkfirewallRuleGroupGeneratedRulesType._(
    TfArgLiteral('REJECTLIST'),
  );
  static const alertlist = NetworkfirewallRuleGroupGeneratedRulesType._(
    TfArgLiteral('ALERTLIST'),
  );

  static const List<NetworkfirewallRuleGroupGeneratedRulesType> values = [
    allowlist,
    denylist,
    rejectlist,
    alertlist,
  ];
}

/// `target_types` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupTargetTypes._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupTargetTypes.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupTargetTypes.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupTargetTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsSni = NetworkfirewallRuleGroupTargetTypes._(
    TfArgLiteral('TLS_SNI'),
  );
  static const httpHost = NetworkfirewallRuleGroupTargetTypes._(
    TfArgLiteral('HTTP_HOST'),
  );

  static const List<NetworkfirewallRuleGroupTargetTypes> values = [
    tlsSni,
    httpHost,
  ];
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

  final NetworkfirewallRuleGroupAction action;

  final NetworkfirewallRuleGroupHeader header;

  final List<NetworkfirewallRuleGroupRuleOption> ruleOption;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'header': header.encode(),
    'rule_option': [for (final e in ruleOption) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupAction._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupAction.arg(TfArg<String> arg) : this._(arg);

  static const pass = NetworkfirewallRuleGroupAction._(TfArgLiteral('PASS'));
  static const drop = NetworkfirewallRuleGroupAction._(TfArgLiteral('DROP'));
  static const alert = NetworkfirewallRuleGroupAction._(TfArgLiteral('ALERT'));
  static const reject = NetworkfirewallRuleGroupAction._(
    TfArgLiteral('REJECT'),
  );

  static const List<NetworkfirewallRuleGroupAction> values = [
    pass,
    drop,
    alert,
    reject,
  ];
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

  final NetworkfirewallRuleGroupDirection direction;

  final NetworkfirewallRuleGroupProtocol protocol;

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
extension type const NetworkfirewallRuleGroupDirection._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupDirection.arg(TfArg<String> arg) : this._(arg);

  static const forward = NetworkfirewallRuleGroupDirection._(
    TfArgLiteral('FORWARD'),
  );
  static const any = NetworkfirewallRuleGroupDirection._(TfArgLiteral('ANY'));

  static const List<NetworkfirewallRuleGroupDirection> values = [forward, any];
}

/// `protocol` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupProtocol.arg(TfArg<String> arg) : this._(arg);

  static const ip = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('IP'));
  static const tcp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('TCP'));
  static const udp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('UDP'));
  static const icmp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('ICMP'));
  static const http = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('HTTP'));
  static const ftp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('FTP'));
  static const tls = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('TLS'));
  static const smb = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('SMB'));
  static const dns = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('DNS'));
  static const dcerpc = NetworkfirewallRuleGroupProtocol._(
    TfArgLiteral('DCERPC'),
  );
  static const ssh = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('SSH'));
  static const smtp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('SMTP'));
  static const imap = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('IMAP'));
  static const msn = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('MSN'));
  static const krb5 = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('KRB5'));
  static const ikev2 = NetworkfirewallRuleGroupProtocol._(
    TfArgLiteral('IKEV2'),
  );
  static const tftp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('TFTP'));
  static const ntp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('NTP'));
  static const dhcp = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('DHCP'));
  static const http2 = NetworkfirewallRuleGroupProtocol._(
    TfArgLiteral('HTTP2'),
  );
  static const quic = NetworkfirewallRuleGroupProtocol._(TfArgLiteral('QUIC'));

  static const List<NetworkfirewallRuleGroupProtocol> values = [
    ip,
    tcp,
    udp,
    icmp,
    http,
    ftp,
    tls,
    smb,
    dns,
    dcerpc,
    ssh,
    smtp,
    imap,
    msn,
    krb5,
    ikev2,
    tftp,
    ntp,
    dhcp,
    http2,
    quic,
  ];
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

  final List<NetworkfirewallRuleGroupFlags> flags;

  final List<NetworkfirewallRuleGroupMasks>? masks;

  Map<String, Object?> encode() => {
    'flags': [for (final e in flags) e.toTfJson()],
    if (masks != null) 'masks': [for (final e in masks!) e.toTfJson()],
  };
}

/// `flags` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupFlags._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupFlags.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupFlags.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupFlags.arg(TfArg<String> arg) : this._(arg);

  static const fin = NetworkfirewallRuleGroupFlags._(TfArgLiteral('FIN'));
  static const syn = NetworkfirewallRuleGroupFlags._(TfArgLiteral('SYN'));
  static const rst = NetworkfirewallRuleGroupFlags._(TfArgLiteral('RST'));
  static const psh = NetworkfirewallRuleGroupFlags._(TfArgLiteral('PSH'));
  static const ack = NetworkfirewallRuleGroupFlags._(TfArgLiteral('ACK'));
  static const urg = NetworkfirewallRuleGroupFlags._(TfArgLiteral('URG'));
  static const ece = NetworkfirewallRuleGroupFlags._(TfArgLiteral('ECE'));
  static const cwr = NetworkfirewallRuleGroupFlags._(TfArgLiteral('CWR'));

  static const List<NetworkfirewallRuleGroupFlags> values = [
    fin,
    syn,
    rst,
    psh,
    ack,
    urg,
    ece,
    cwr,
  ];
}

/// `masks` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupMasks._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupMasks.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupMasks.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupMasks.arg(TfArg<String> arg) : this._(arg);

  static const fin = NetworkfirewallRuleGroupMasks._(TfArgLiteral('FIN'));
  static const syn = NetworkfirewallRuleGroupMasks._(TfArgLiteral('SYN'));
  static const rst = NetworkfirewallRuleGroupMasks._(TfArgLiteral('RST'));
  static const psh = NetworkfirewallRuleGroupMasks._(TfArgLiteral('PSH'));
  static const ack = NetworkfirewallRuleGroupMasks._(TfArgLiteral('ACK'));
  static const urg = NetworkfirewallRuleGroupMasks._(TfArgLiteral('URG'));
  static const ece = NetworkfirewallRuleGroupMasks._(TfArgLiteral('ECE'));
  static const cwr = NetworkfirewallRuleGroupMasks._(TfArgLiteral('CWR'));

  static const List<NetworkfirewallRuleGroupMasks> values = [
    fin,
    syn,
    rst,
    psh,
    ack,
    urg,
    ece,
    cwr,
  ];
}

/// Typed helper for the `rule_group.stateful_rule_options` block of
/// `aws_networkfirewall_rule_group` (derived from provider schema).
@immutable
final class NetworkfirewallRuleGroupStatefulRuleOptions {
  const NetworkfirewallRuleGroupStatefulRuleOptions({required this.ruleOrder});

  final NetworkfirewallRuleGroupRuleOrder ruleOrder;

  Map<String, Object?> encode() => {'rule_order': ruleOrder.toTfJson()};
}

/// `rule_order` — derived from the provider schema description.
extension type const NetworkfirewallRuleGroupRuleOrder._(TfArg<String> _)
    implements TfArg<String> {
  NetworkfirewallRuleGroupRuleOrder.variable(String name)
    : this._(TfArg.variable(name));
  NetworkfirewallRuleGroupRuleOrder.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkfirewallRuleGroupRuleOrder.arg(TfArg<String> arg) : this._(arg);

  static const defaultActionOrder = NetworkfirewallRuleGroupRuleOrder._(
    TfArgLiteral('DEFAULT_ACTION_ORDER'),
  );
  static const strictOrder = NetworkfirewallRuleGroupRuleOrder._(
    TfArgLiteral('STRICT_ORDER'),
  );

  static const List<NetworkfirewallRuleGroupRuleOrder> values = [
    defaultActionOrder,
    strictOrder,
  ];
}

/// Factory wrapper for `aws_networkfirewall_rule_group`.
final class AwsNetworkfirewallRuleGroup extends Resource {
  static const String tfType = 'aws_networkfirewall_rule_group';

  AwsNetworkfirewallRuleGroup(
    super.localName, {
    required TfArg<num> capacity,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? rules,
    TfArg<Map<String, String>>? tags,
    required NetworkfirewallRuleGroupType type,
    NetworkfirewallRuleGroupEncryptionConfiguration? encryptionConfiguration,
    NetworkfirewallRuleGroup? ruleGroup,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rules` attribute.
  TfRef<String> get rules => TfRef.attribute<String>(this, 'rules');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
