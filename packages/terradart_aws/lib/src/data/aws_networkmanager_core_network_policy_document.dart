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
    if (conditionLogic != null) 'condition_logic': conditionLogic!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
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
    if (addToNetworkFunctionGroup != null)
      'add_to_network_function_group': addToNetworkFunctionGroup!.toTfJson(),
    if (associationMethod != null)
      'association_method': associationMethod!.toTfJson(),
    if (requireAcceptance != null)
      'require_acceptance': requireAcceptance!.toTfJson(),
    if (segment != null) 'segment': segment!.toTfJson(),
    if (tagValueOfKey != null) 'tag_value_of_key': tagValueOfKey!.toTfJson(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    'type': type.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<List<Object?>>? edgeLocations;

  final TfArg<num> ruleNumber;

  final DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesAction
  action;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentAttachmentRoutingPolicyRulesConditions
  >
  conditions;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (edgeLocations != null) 'edge_locations': edgeLocations!.toTfJson(),
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

  final TfArg<List<Object?>> associateRoutingPolicies;

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

  final TfArg<List<Object?>> asnRanges;

  final TfArg<bool>? dnsSupport;

  final TfArg<List<Object?>>? insideCidrBlocks;

  final TfArg<bool>? securityGroupReferencingSupport;

  final TfArg<bool>? vpnEcmpSupport;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocations
  >
  edgeLocations;

  Map<String, Object?> encode() => {
    'asn_ranges': asnRanges.toTfJson(),
    if (dnsSupport != null) 'dns_support': dnsSupport!.toTfJson(),
    if (insideCidrBlocks != null)
      'inside_cidr_blocks': insideCidrBlocks!.toTfJson(),
    if (securityGroupReferencingSupport != null)
      'security_group_referencing_support': securityGroupReferencingSupport!
          .toTfJson(),
    if (vpnEcmpSupport != null) 'vpn_ecmp_support': vpnEcmpSupport!.toTfJson(),
    'edge_locations': [for (final e in edgeLocations) e.encode()],
  };
}

/// Typed helper for the `core_network_configuration.edge_locations` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocations {
  const DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocations({
    this.asn,
    this.insideCidrBlocks,
    required this.location,
  });

  final TfArg<String>? asn;

  final TfArg<List<Object?>>? insideCidrBlocks;

  final TfArg<String> location;

  Map<String, Object?> encode() => {
    if (asn != null) 'asn': asn!.toTfJson(),
    if (insideCidrBlocks != null)
      'inside_cidr_blocks': insideCidrBlocks!.toTfJson(),
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
    if (description != null) 'description': description!.toTfJson(),
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

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRules
  >
  routingPolicyRules;

  Map<String, Object?> encode() => {
    if (routingPolicyDescription != null)
      'routing_policy_description': routingPolicyDescription!.toTfJson(),
    'routing_policy_direction': routingPolicyDirection.toTfJson(),
    'routing_policy_name': routingPolicyName.toTfJson(),
    'routing_policy_number': routingPolicyNumber.toTfJson(),
    'routing_policy_rules': [for (final e in routingPolicyRules) e.encode()],
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRules {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRules({
    required this.ruleNumber,
    required this.ruleDefinition,
  });

  final TfArg<num> ruleNumber;

  final DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinition
  ruleDefinition;

  Map<String, Object?> encode() => {
    'rule_number': ruleNumber.toTfJson(),
    'rule_definition': ruleDefinition.encode(),
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinition {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinition({
    this.conditionLogic,
    required this.action,
    this.matchConditions,
  });

  final TfArg<String>? conditionLogic;

  final DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionAction
  action;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionMatchConditions
  >?
  matchConditions;

  Map<String, Object?> encode() => {
    if (conditionLogic != null) 'condition_logic': conditionLogic!.toTfJson(),
    'action': action.encode(),
    if (matchConditions != null)
      'match_conditions': [for (final e in matchConditions!) e.encode()],
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition.action` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionAction {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionAction({
    required this.type,
    this.value,
  });

  final TfArg<String> type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `routing_policies.routing_policy_rules.rule_definition.match_conditions` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionMatchConditions {
  const DataNetworkmanagerCoreNetworkPolicyDocumentRoutingPoliciesRoutingPolicyRulesRuleDefinitionMatchConditions({
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

  final TfArg<List<Object?>>? destinationCidrBlocks;

  final TfArg<List<Object?>>? destinations;

  final TfArg<String>? mode;

  final TfArg<List<Object?>>? routingPolicyNames;

  final TfArg<String> segment;

  final TfArg<List<Object?>>? shareWith;

  final TfArg<List<Object?>>? shareWithExcept;

  final DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsEdgeLocationAssociation?
  edgeLocationAssociation;

  final DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsVia? via;

  final DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsWhenSentTo?
  whenSentTo;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (destinationCidrBlocks != null)
      'destination_cidr_blocks': destinationCidrBlocks!.toTfJson(),
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (routingPolicyNames != null)
      'routing_policy_names': routingPolicyNames!.toTfJson(),
    'segment': segment.toTfJson(),
    if (shareWith != null) 'share_with': shareWith!.toTfJson(),
    if (shareWithExcept != null)
      'share_with_except': shareWithExcept!.toTfJson(),
    if (edgeLocationAssociation != null)
      'edge_location_association': edgeLocationAssociation!.encode(),
    if (via != null) 'via': via!.encode(),
    if (whenSentTo != null) 'when_sent_to': whenSentTo!.encode(),
  };
}

/// Typed helper for the `segment_actions.edge_location_association` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsEdgeLocationAssociation {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsEdgeLocationAssociation({
    required this.edgeLocation,
    required this.peerEdgeLocation,
    required this.routingPolicyNames,
  });

  final TfArg<String> edgeLocation;

  final TfArg<String> peerEdgeLocation;

  final TfArg<List<Object?>> routingPolicyNames;

  Map<String, Object?> encode() => {
    'edge_location': edgeLocation.toTfJson(),
    'peer_edge_location': peerEdgeLocation.toTfJson(),
    'routing_policy_names': routingPolicyNames.toTfJson(),
  };
}

/// Typed helper for the `segment_actions.via` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsVia {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsVia({
    this.networkFunctionGroups,
    this.withEdgeOverride,
  });

  final TfArg<List<Object?>>? networkFunctionGroups;

  final List<
    DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsViaWithEdgeOverride
  >?
  withEdgeOverride;

  Map<String, Object?> encode() => {
    if (networkFunctionGroups != null)
      'network_function_groups': networkFunctionGroups!.toTfJson(),
    if (withEdgeOverride != null)
      'with_edge_override': [for (final e in withEdgeOverride!) e.encode()],
  };
}

/// Typed helper for the `segment_actions.via.with_edge_override` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsViaWithEdgeOverride {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsViaWithEdgeOverride({
    this.edgeSets,
    this.useEdge,
    this.useEdgeLocation,
  });

  final TfArg<List<Object?>>? edgeSets;

  final TfArg<String>? useEdge;

  final TfArg<String>? useEdgeLocation;

  Map<String, Object?> encode() => {
    if (edgeSets != null) 'edge_sets': edgeSets!.toTfJson(),
    if (useEdge != null) 'use_edge': useEdge!.toTfJson(),
    if (useEdgeLocation != null)
      'use_edge_location': useEdgeLocation!.toTfJson(),
  };
}

/// Typed helper for the `segment_actions.when_sent_to` block of
/// `aws_networkmanager_core_network_policy_document` (derived from provider schema).
@immutable
final class DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsWhenSentTo {
  const DataNetworkmanagerCoreNetworkPolicyDocumentSegmentActionsWhenSentTo({
    this.segments,
  });

  final TfArg<List<Object?>>? segments;

  Map<String, Object?> encode() => {
    if (segments != null) 'segments': segments!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? allowFilter;

  final TfArg<List<Object?>>? denyFilter;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? edgeLocations;

  final TfArg<bool>? isolateAttachments;

  final TfArg<String> name;

  final TfArg<bool>? requireAttachmentAcceptance;

  Map<String, Object?> encode() => {
    if (allowFilter != null) 'allow_filter': allowFilter!.toTfJson(),
    if (denyFilter != null) 'deny_filter': denyFilter!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (edgeLocations != null) 'edge_locations': edgeLocations!.toTfJson(),
    if (isolateAttachments != null)
      'isolate_attachments': isolateAttachments!.toTfJson(),
    'name': name.toTfJson(),
    if (requireAttachmentAcceptance != null)
      'require_attachment_acceptance': requireAttachmentAcceptance!.toTfJson(),
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
           if (version != null) 'version': version,
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
}
