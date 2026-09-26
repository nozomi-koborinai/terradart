// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fms_policy`.
const Set<String> _awsFmsPolicySensitive = <String>{};

/// Typed helper for the `exclude_map` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicyExcludeMap {
  const FmsPolicyExcludeMap({this.account, this.orgunit});

  final TfArg<List<Object?>>? account;

  final TfArg<List<Object?>>? orgunit;

  Map<String, Object?> encode() => {
    if (account != null) 'account': account!.toTfJson(),
    if (orgunit != null) 'orgunit': orgunit!.toTfJson(),
  };
}

/// Typed helper for the `include_map` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicyIncludeMap {
  const FmsPolicyIncludeMap({this.account, this.orgunit});

  final TfArg<List<Object?>>? account;

  final TfArg<List<Object?>>? orgunit;

  Map<String, Object?> encode() => {
    if (account != null) 'account': account!.toTfJson(),
    if (orgunit != null) 'orgunit': orgunit!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyData {
  const FmsPolicySecurityServicePolicyData({
    this.managedServiceData,
    required this.type,
    this.policyOption,
  });

  final TfArg<String>? managedServiceData;

  final TfArg<String> type;

  final FmsPolicySecurityServicePolicyDataPolicyOption? policyOption;

  Map<String, Object?> encode() => {
    if (managedServiceData != null)
      'managed_service_data': managedServiceData!.toTfJson(),
    'type': type.toTfJson(),
    if (policyOption != null) 'policy_option': policyOption!.encode(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOption {
  const FmsPolicySecurityServicePolicyDataPolicyOption({
    this.networkAclCommonPolicy,
    this.networkFirewallPolicy,
    this.thirdPartyFirewallPolicy,
  });

  final FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy?
  networkAclCommonPolicy;

  final FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy?
  networkFirewallPolicy;

  final FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy?
  thirdPartyFirewallPolicy;

  Map<String, Object?> encode() => {
    if (networkAclCommonPolicy != null)
      'network_acl_common_policy': networkAclCommonPolicy!.encode(),
    if (networkFirewallPolicy != null)
      'network_firewall_policy': networkFirewallPolicy!.encode(),
    if (thirdPartyFirewallPolicy != null)
      'third_party_firewall_policy': thirdPartyFirewallPolicy!.encode(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicy({
    this.networkAclEntrySet,
  });

  final FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet?
  networkAclEntrySet;

  Map<String, Object?> encode() => {
    if (networkAclEntrySet != null)
      'network_acl_entry_set': networkAclEntrySet!.encode(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySet({
    required this.forceRemediateForFirstEntries,
    required this.forceRemediateForLastEntries,
    this.firstEntry,
    this.lastEntry,
  });

  final TfArg<bool> forceRemediateForFirstEntries;

  final TfArg<bool> forceRemediateForLastEntries;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry
  >?
  firstEntry;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry
  >?
  lastEntry;

  Map<String, Object?> encode() => {
    'force_remediate_for_first_entries': forceRemediateForFirstEntries
        .toTfJson(),
    'force_remediate_for_last_entries': forceRemediateForLastEntries.toTfJson(),
    if (firstEntry != null)
      'first_entry': [for (final e in firstEntry!) e.encode()],
    if (lastEntry != null)
      'last_entry': [for (final e in lastEntry!) e.encode()],
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.first_entry` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntry({
    this.cidrBlock,
    required this.egress,
    this.ipv6CidrBlock,
    required this.protocol,
    required this.ruleAction,
    this.icmpTypeCode,
    this.portRange,
  });

  final TfArg<String>? cidrBlock;

  final TfArg<bool> egress;

  final TfArg<String>? ipv6CidrBlock;

  final TfArg<String> protocol;

  final TfArg<String> ruleAction;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode
  >?
  icmpTypeCode;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange
  >?
  portRange;

  Map<String, Object?> encode() => {
    if (cidrBlock != null) 'cidr_block': cidrBlock!.toTfJson(),
    'egress': egress.toTfJson(),
    if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock!.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_action': ruleAction.toTfJson(),
    if (icmpTypeCode != null)
      'icmp_type_code': [for (final e in icmpTypeCode!) e.encode()],
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.first_entry.icmp_type_code` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryIcmpTypeCode({
    this.code,
    this.type,
  });

  final TfArg<num>? code;

  final TfArg<num>? type;

  Map<String, Object?> encode() => {
    if (code != null) 'code': code!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.first_entry.port_range` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetFirstEntryPortRange({
    this.from,
    this.to,
  });

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.last_entry` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntry({
    this.cidrBlock,
    required this.egress,
    this.ipv6CidrBlock,
    required this.protocol,
    required this.ruleAction,
    this.icmpTypeCode,
    this.portRange,
  });

  final TfArg<String>? cidrBlock;

  final TfArg<bool> egress;

  final TfArg<String>? ipv6CidrBlock;

  final TfArg<String> protocol;

  final TfArg<String> ruleAction;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode
  >?
  icmpTypeCode;

  final List<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange
  >?
  portRange;

  Map<String, Object?> encode() => {
    if (cidrBlock != null) 'cidr_block': cidrBlock!.toTfJson(),
    'egress': egress.toTfJson(),
    if (ipv6CidrBlock != null) 'ipv6_cidr_block': ipv6CidrBlock!.toTfJson(),
    'protocol': protocol.toTfJson(),
    'rule_action': ruleAction.toTfJson(),
    if (icmpTypeCode != null)
      'icmp_type_code': [for (final e in icmpTypeCode!) e.encode()],
    if (portRange != null)
      'port_range': [for (final e in portRange!) e.encode()],
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.last_entry.icmp_type_code` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryIcmpTypeCode({
    this.code,
    this.type,
  });

  final TfArg<num>? code;

  final TfArg<num>? type;

  Map<String, Object?> encode() => {
    if (code != null) 'code': code!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_acl_common_policy.network_acl_entry_set.last_entry.port_range` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkAclCommonPolicyNetworkAclEntrySetLastEntryPortRange({
    this.from,
    this.to,
  });

  final TfArg<num>? from;

  final TfArg<num>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_firewall_policy` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy({
    this.firewallDeploymentModel,
  });

  final TfArg<String>? firewallDeploymentModel;

  Map<String, Object?> encode() => {
    if (firewallDeploymentModel != null)
      'firewall_deployment_model': firewallDeploymentModel!.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.third_party_firewall_policy` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy {
  const FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy({
    this.firewallDeploymentModel,
  });

  final TfArg<String>? firewallDeploymentModel;

  Map<String, Object?> encode() => {
    if (firewallDeploymentModel != null)
      'firewall_deployment_model': firewallDeploymentModel!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fms_policy`.
final class AwsFmsPolicy extends Resource {
  static const String tfType = 'aws_fms_policy';

  AwsFmsPolicy({
    required super.localName,
    TfArg<bool>? deleteAllPolicyResources,
    TfArg<bool>? deleteUnusedFmManagedResources,
    TfArg<String>? description,
    required TfArg<bool> excludeResourceTags,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? remediationEnabled,
    TfArg<List<String>>? resourceSetIds,
    TfArg<String>? resourceTagLogicalOperator,
    TfArg<Map<String, String>>? resourceTags,
    TfArg<String>? resourceType,
    TfArg<List<String>>? resourceTypeList,
    TfArg<Map<String, String>>? tags,
    FmsPolicyExcludeMap? excludeMap,
    FmsPolicyIncludeMap? includeMap,
    required FmsPolicySecurityServicePolicyData securityServicePolicyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deleteAllPolicyResources != null)
             'delete_all_policy_resources': deleteAllPolicyResources,
           if (deleteUnusedFmManagedResources != null)
             'delete_unused_fm_managed_resources':
                 deleteUnusedFmManagedResources,
           if (description != null) 'description': description,
           'exclude_resource_tags': excludeResourceTags,
           'name': name,
           if (region != null) 'region': region,
           if (remediationEnabled != null)
             'remediation_enabled': remediationEnabled,
           if (resourceSetIds != null) 'resource_set_ids': resourceSetIds,
           if (resourceTagLogicalOperator != null)
             'resource_tag_logical_operator': resourceTagLogicalOperator,
           if (resourceTags != null) 'resource_tags': resourceTags,
           if (resourceType != null) 'resource_type': resourceType,
           if (resourceTypeList != null) 'resource_type_list': resourceTypeList,
           if (tags != null) 'tags': tags,
           if (excludeMap != null)
             'exclude_map': TfArg.literal(excludeMap.encode()),
           if (includeMap != null)
             'include_map': TfArg.literal(includeMap.encode()),
           'security_service_policy_data': TfArg.literal(
             securityServicePolicyData.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFmsPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `policy_update_token` attribute.
  TfRef<String> get policyUpdateToken =>
      TfRef.attribute<String>(this, 'policy_update_token');
}
