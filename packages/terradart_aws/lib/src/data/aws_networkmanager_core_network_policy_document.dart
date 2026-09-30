// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_core_network_policy_document`.
const Set<String> _awsNetworkmanagerCoreNetworkPolicyDocumentSensitive =
    <String>{};

/// Typed helper for the `attachment_policies` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPolicies {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPolicies({
    this.conditionLogic,
    this.description,
    required this.ruleNumber,
    required this.action,
    required this.conditions,
  });

  final TfArg<String>? conditionLogic;

  final TfArg<String>? description;

  final TfArg<num> ruleNumber;

  final DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesAction
  action;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesConditions
  >
  conditions;

  Map<String, Object?> encode() => {
    'condition_logic': ?conditionLogic?.toTfJson(),
    'description': ?description?.toTfJson(),
    'rule_number': ruleNumber.toTfJson(),
    'action': action.encode(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// Typed helper for the `attachment_policies.action` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesAction {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesAction({
    this.addToNetworkFunctionGroup,
    this.associationMethod,
    this.requireAcceptance,
    this.segment,
    this.tagValueOfKey,
  });

  final TfArg<String>? addToNetworkFunctionGroup;

  final TfArg<String>? associationMethod;

  final TfArg<bool>? requireAcceptance;

  final TfArg<String>? segment;

  final TfArg<String>? tagValueOfKey;

  Map<String, Object?> encode() => {
    'add_to_network_function_group': ?addToNetworkFunctionGroup?.toTfJson(),
    'association_method': ?associationMethod?.toTfJson(),
    'require_acceptance': ?requireAcceptance?.toTfJson(),
    'segment': ?segment?.toTfJson(),
    'tag_value_of_key': ?tagValueOfKey?.toTfJson(),
  };
}

/// Typed helper for the `attachment_policies.conditions` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesConditions {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPoliciesConditions({
    this.key,
    this.operator,
    required this.type,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? operator;

  final TfArg<String> type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `attachment_routing_policy_rules` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRules {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRules({
    this.description,
    this.edgeLocations,
    required this.ruleNumber,
    required this.action,
    required this.conditions,
  });

  final TfArg<String>? description;

  final TfArg<List<String>>? edgeLocations;

  final TfArg<num> ruleNumber;

  final DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesAction
  action;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesConditions
  >
  conditions;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'edge_locations': ?edgeLocations?.toTfJson(),
    'rule_number': ruleNumber.toTfJson(),
    'action': action.encode(),
    'conditions': [for (final e in conditions) e.encode()],
  };
}

/// Typed helper for the `attachment_routing_policy_rules.action` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesAction {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesAction({
    required this.associateRoutingPolicies,
  });

  final TfArg<List<String>> associateRoutingPolicies;

  Map<String, Object?> encode() => {
    'associate_routing_policies': associateRoutingPolicies.toTfJson(),
  };
}

/// Typed helper for the `attachment_routing_policy_rules.conditions` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesConditions {
  const DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesConditions({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `core_network_configuration` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration {
  const DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration({
    required this.asnRanges,
    this.dnsSupport,
    this.insideCidrBlocks,
    this.securityGroupReferencingSupport,
    this.vpnEcmpSupport,
    required this.edgeLocations,
  });

  final TfArg<List<String>> asnRanges;

  final TfArg<bool>? dnsSupport;

  final TfArg<List<String>>? insideCidrBlocks;

  final TfArg<bool>? securityGroupReferencingSupport;

  final TfArg<bool>? vpnEcmpSupport;

  final List<DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocations>
  edgeLocations;

  Map<String, Object?> encode() => {
    'asn_ranges': asnRanges.toTfJson(),
    'dns_support': ?dnsSupport?.toTfJson(),
    'inside_cidr_blocks': ?insideCidrBlocks?.toTfJson(),
    'security_group_referencing_support': ?securityGroupReferencingSupport
        ?.toTfJson(),
    'vpn_ecmp_support': ?vpnEcmpSupport?.toTfJson(),
    'edge_locations': [for (final e in edgeLocations) e.encode()],
  };
}

/// Typed helper for the `core_network_configuration.edge_locations` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocations {
  const DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocations({
    this.asn,
    this.insideCidrBlocks,
    required this.location,
  });

  final TfArg<String>? asn;

  final TfArg<List<String>>? insideCidrBlocks;

  final TfArg<String> location;

  Map<String, Object?> encode() => {
    'asn': ?asn?.toTfJson(),
    'inside_cidr_blocks': ?insideCidrBlocks?.toTfJson(),
    'location': location.toTfJson(),
  };
}

/// Typed helper for the `network_function_groups` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentNetworkFunctionGroups {
  const DataNetworkmanagerCoreNetworkPolicyDocumentNetworkFunctionGroups({
    this.description,
    required this.name,
    required this.requireAttachmentAcceptance,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<bool> requireAttachmentAcceptance;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'require_attachment_acceptance': requireAttachmentAcceptance.toTfJson(),
  };
}

/// Typed helper for the `routing_policies` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicies {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicies({
    this.routingPolicyDescription,
    required this.routingPolicyDirection,
    required this.routingPolicyName,
    required this.routingPolicyNumber,
    required this.routingPolicyRules,
  });

  final TfArg<String>? routingPolicyDescription;

  final TfArg<String> routingPolicyDirection;

  final TfArg<String> routingPolicyName;

  final TfArg<num> routingPolicyNumber;

  final List<DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicyRules>
  routingPolicyRules;

  Map<String, Object?> encode() => {
    'routing_policy_description': ?routingPolicyDescription?.toTfJson(),
    'routing_policy_direction': routingPolicyDirection.toTfJson(),
    'routing_policy_name': routingPolicyName.toTfJson(),
    'routing_policy_number': routingPolicyNumber.toTfJson(),
    'routing_policy_rules': [for (final e in routingPolicyRules) e.encode()],
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicyRules {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicyRules({
    required this.ruleNumber,
    required this.ruleDefinition,
  });

  final TfArg<num> ruleNumber;

  final DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinition
  ruleDefinition;

  Map<String, Object?> encode() => {
    'rule_number': ruleNumber.toTfJson(),
    'rule_definition': ruleDefinition.encode(),
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinition {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinition({
    this.conditionLogic,
    required this.action,
    this.matchConditions,
  });

  final TfArg<String>? conditionLogic;

  final DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinitionAction action;

  final List<DataNetworkmanagerCoreNetworkPolicyDocumentMatchConditions>?
  matchConditions;

  Map<String, Object?> encode() => {
    'condition_logic': ?conditionLogic?.toTfJson(),
    'action': action.encode(),
    if (matchConditions != null)
      'match_conditions': [for (final e in matchConditions!) e.encode()],
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition.action` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinitionAction {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRuleDefinitionAction({
    required this.type,
    this.value,
  });

  final TfArg<String> type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition.match_conditions` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentMatchConditions {
  const DataNetworkmanagerCoreNetworkPolicyDocumentMatchConditions({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `segment_actions` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActions {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActions({
    required this.action,
    this.description,
    this.destinationCidrBlocks,
    this.destinations,
    this.mode,
    this.routingPolicyNames,
    required this.segment,
    this.shareWith,
    this.shareWithExcept,
    this.edgeLocationAssociation,
    this.via,
    this.whenSentTo,
  });

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<List<String>>? destinationCidrBlocks;

  final TfArg<List<String>>? destinations;

  final TfArg<String>? mode;

  final TfArg<List<String>>? routingPolicyNames;

  final TfArg<String> segment;

  final TfArg<List<String>>? shareWith;

  final TfArg<List<String>>? shareWithExcept;

  final DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocationAssociation?
  edgeLocationAssociation;

  final DataNetworkmanagerCoreNetworkPolicyDocumentVia? via;

  final DataNetworkmanagerCoreNetworkPolicyDocumentWhenSentTo? whenSentTo;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'destination_cidr_blocks': ?destinationCidrBlocks?.toTfJson(),
    'destinations': ?destinations?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'routing_policy_names': ?routingPolicyNames?.toTfJson(),
    'segment': segment.toTfJson(),
    'share_with': ?shareWith?.toTfJson(),
    'share_with_except': ?shareWithExcept?.toTfJson(),
    'edge_location_association': ?edgeLocationAssociation?.encode(),
    'via': ?via?.encode(),
    'when_sent_to': ?whenSentTo?.encode(),
  };
}

/// Typed helper for the `segment_actions.edge_location_association` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocationAssociation {
  const DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocationAssociation({
    required this.edgeLocation,
    required this.peerEdgeLocation,
    required this.routingPolicyNames,
  });

  final TfArg<String> edgeLocation;

  final TfArg<String> peerEdgeLocation;

  final TfArg<List<String>> routingPolicyNames;

  Map<String, Object?> encode() => {
    'edge_location': edgeLocation.toTfJson(),
    'peer_edge_location': peerEdgeLocation.toTfJson(),
    'routing_policy_names': routingPolicyNames.toTfJson(),
  };
}

/// Typed helper for the `segment_actions.via` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentVia {
  const DataNetworkmanagerCoreNetworkPolicyDocumentVia({
    this.networkFunctionGroups,
    this.withEdgeOverride,
  });

  final TfArg<List<String>>? networkFunctionGroups;

  final List<DataNetworkmanagerCoreNetworkPolicyDocumentWithEdgeOverride>?
  withEdgeOverride;

  Map<String, Object?> encode() => {
    'network_function_groups': ?networkFunctionGroups?.toTfJson(),
    if (withEdgeOverride != null)
      'with_edge_override': [for (final e in withEdgeOverride!) e.encode()],
  };
}

/// Typed helper for the `segment_actions.via.with_edge_override` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentWithEdgeOverride {
  const DataNetworkmanagerCoreNetworkPolicyDocumentWithEdgeOverride({
    this.edgeSets,
    this.useEdge,
    this.useEdgeLocation,
  });

  final TfArg<List<Object?>>? edgeSets;

  final TfArg<String>? useEdge;

  final TfArg<String>? useEdgeLocation;

  Map<String, Object?> encode() => {
    'edge_sets': ?edgeSets?.toTfJson(),
    'use_edge': ?useEdge?.toTfJson(),
    'use_edge_location': ?useEdgeLocation?.toTfJson(),
  };
}

/// Typed helper for the `segment_actions.when_sent_to` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentWhenSentTo {
  const DataNetworkmanagerCoreNetworkPolicyDocumentWhenSentTo({this.segments});

  final TfArg<List<String>>? segments;

  Map<String, Object?> encode() => {'segments': ?segments?.toTfJson()};
}

/// Typed helper for the `segments` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegments {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegments({
    this.allowFilter,
    this.denyFilter,
    this.description,
    this.edgeLocations,
    this.isolateAttachments,
    required this.name,
    this.requireAttachmentAcceptance,
  });

  final TfArg<List<String>>? allowFilter;

  final TfArg<List<String>>? denyFilter;

  final TfArg<String>? description;

  final TfArg<List<String>>? edgeLocations;

  final TfArg<bool>? isolateAttachments;

  final TfArg<String> name;

  final TfArg<bool>? requireAttachmentAcceptance;

  Map<String, Object?> encode() => {
    'allow_filter': ?allowFilter?.toTfJson(),
    'deny_filter': ?denyFilter?.toTfJson(),
    'description': ?description?.toTfJson(),
    'edge_locations': ?edgeLocations?.toTfJson(),
    'isolate_attachments': ?isolateAttachments?.toTfJson(),
    'name': name.toTfJson(),
    'require_attachment_acceptance': ?requireAttachmentAcceptance?.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkmanager_core_network_policy_document`.
final class DataAwsNetworkmanagerCoreNetworkPolicyDocument extends Data {
  static const String tfType =
      'aws_networkmanager_core_network_policy_document';

  DataAwsNetworkmanagerCoreNetworkPolicyDocument({
    required super.localName,
    TfArg<String>? version,
    List<DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentPolicies>?
    attachmentPolicies,
    List<
      DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRules
    >?
    attachmentRoutingPolicyRules,
    required List<
      DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration
    >
    coreNetworkConfiguration,
    List<DataNetworkmanagerCoreNetworkPolicyDocumentNetworkFunctionGroups>?
    networkFunctionGroups,
    List<DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPolicies>?
    routingPolicies,
    List<DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActions>?
    segmentActions,
    required List<DataNetworkmanagerCoreNetworkPolicyDocumentSegments> segments,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'version': ?version,
           if (attachmentPolicies != null)
             'attachment_policies': TfArg.literal([
               for (final e in attachmentPolicies) e.encode(),
             ]),
           if (attachmentRoutingPolicyRules != null)
             'attachment_routing_policy_rules': TfArg.literal([
               for (final e in attachmentRoutingPolicyRules) e.encode(),
             ]),
           'core_network_configuration': TfArg.literal([
             for (final e in coreNetworkConfiguration) e.encode(),
           ]),
           if (networkFunctionGroups != null)
             'network_function_groups': TfArg.literal([
               for (final e in networkFunctionGroups) e.encode(),
             ]),
           if (routingPolicies != null)
             'routing_policies': TfArg.literal([
               for (final e in routingPolicies) e.encode(),
             ]),
           if (segmentActions != null)
             'segment_actions': TfArg.literal([
               for (final e in segmentActions) e.encode(),
             ]),
           'segments': TfArg.literal([for (final e in segments) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerCoreNetworkPolicyDocumentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `json` attribute.
  TfRef<String> get json => TfRef.attribute<String>(this, 'json');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
