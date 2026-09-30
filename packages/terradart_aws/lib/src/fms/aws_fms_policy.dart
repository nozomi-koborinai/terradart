// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fms_policy`.
const Set<String> _awsFmsPolicySensitive = <String>{};

/// Fms Policy Resource Tag Logical enum for `resource_tag_logical_operator`.
enum FmsPolicyResourceTagLogicalOperator implements TerraformEnum {
  and('AND'),
  or('OR');

  const FmsPolicyResourceTagLogicalOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `resource_type`, `resource_type_list` on `aws_fms_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceType(...)`.
sealed class FmsPolicyResourceType {
  const FmsPolicyResourceType();

  /// Sets `resource_type`.
  const factory FmsPolicyResourceType.resourceType(TfArg<String> resourceType) =
      FmsPolicyResourceTypeChoice;

  /// Sets `resource_type_list`.
  const factory FmsPolicyResourceType.resourceTypeList(
    TfArg<List<String>> resourceTypeList,
  ) = FmsPolicyResourceTypeList;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FmsPolicyResourceType.resourceType] choice: sets `resource_type`.
final class FmsPolicyResourceTypeChoice extends FmsPolicyResourceType {
  const FmsPolicyResourceTypeChoice(this.resourceType);

  final TfArg<String> resourceType;

  @override
  String get blockKey => 'resource_type';

  @override
  Map<String, Object?> encode() => {'resource_type': resourceType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'resource_type': resourceType};
}

/// The [FmsPolicyResourceType.resourceTypeList] choice: sets `resource_type_list`.
final class FmsPolicyResourceTypeList extends FmsPolicyResourceType {
  const FmsPolicyResourceTypeList(this.resourceTypeList);

  final TfArg<List<String>> resourceTypeList;

  @override
  String get blockKey => 'resource_type_list';

  @override
  Map<String, Object?> encode() => {
    'resource_type_list': resourceTypeList.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_type_list': resourceTypeList,
  };
}

/// Typed helper for the `exclude_map` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicyExcludeMap {
  const FmsPolicyExcludeMap({this.account, this.orgunit});

  final TfArg<List<String>>? account;

  final TfArg<List<String>>? orgunit;

  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'orgunit': ?orgunit?.toTfJson(),
  };
}

/// Typed helper for the `include_map` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicyIncludeMap {
  const FmsPolicyIncludeMap({this.account, this.orgunit});

  final TfArg<List<String>>? account;

  final TfArg<List<String>>? orgunit;

  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'orgunit': ?orgunit?.toTfJson(),
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
    'managed_service_data': ?managedServiceData?.toTfJson(),
    'type': type.toTfJson(),
    'policy_option': ?policyOption?.encode(),
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
    'network_acl_common_policy': ?networkAclCommonPolicy?.encode(),
    'network_firewall_policy': ?networkFirewallPolicy?.encode(),
    'third_party_firewall_policy': ?thirdPartyFirewallPolicy?.encode(),
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
    'network_acl_entry_set': ?networkAclEntrySet?.encode(),
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
    'cidr_block': ?cidrBlock?.toTfJson(),
    'egress': egress.toTfJson(),
    'ipv6_cidr_block': ?ipv6CidrBlock?.toTfJson(),
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
    'code': ?code?.toTfJson(),
    'type': ?type?.toTfJson(),
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
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
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
    'cidr_block': ?cidrBlock?.toTfJson(),
    'egress': egress.toTfJson(),
    'ipv6_cidr_block': ?ipv6CidrBlock?.toTfJson(),
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
    'code': ?code?.toTfJson(),
    'type': ?type?.toTfJson(),
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
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `security_service_policy_data.policy_option.network_firewall_policy` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy {
  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicy({
    this.firewallDeploymentModel,
  });

  final TfArg<
    FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicyFirewallDeploymentModel
  >?
  firewallDeploymentModel;

  Map<String, Object?> encode() => {
    'firewall_deployment_model': ?firewallDeploymentModel?.toTfJson(),
  };
}

/// `firewall_deployment_model` — derived from the provider schema description.
enum FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicyFirewallDeploymentModel
    implements TerraformEnum {
  centralized('CENTRALIZED'),
  distributed('DISTRIBUTED');

  const FmsPolicySecurityServicePolicyDataPolicyOptionNetworkFirewallPolicyFirewallDeploymentModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `security_service_policy_data.policy_option.third_party_firewall_policy` block of
/// `aws_fms_policy` (derived from provider schema).
@immutable
final class FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy {
  const FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicy({
    this.firewallDeploymentModel,
  });

  final TfArg<
    FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicyFirewallDeploymentModel
  >?
  firewallDeploymentModel;

  Map<String, Object?> encode() => {
    'firewall_deployment_model': ?firewallDeploymentModel?.toTfJson(),
  };
}

/// `firewall_deployment_model` — derived from the provider schema description.
enum FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicyFirewallDeploymentModel
    implements TerraformEnum {
  centralized('CENTRALIZED'),
  distributed('DISTRIBUTED');

  const FmsPolicySecurityServicePolicyDataPolicyOptionThirdPartyFirewallPolicyFirewallDeploymentModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    TfArg<FmsPolicyResourceTagLogicalOperator>? resourceTagLogicalOperator,
    TfArg<Map<String, String>>? resourceTags,
    FmsPolicyResourceType? resourceType,
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
           'delete_all_policy_resources': ?deleteAllPolicyResources,
           'delete_unused_fm_managed_resources':
               ?deleteUnusedFmManagedResources,
           'description': ?description,
           'exclude_resource_tags': excludeResourceTags,
           'name': name,
           'region': ?region,
           'remediation_enabled': ?remediationEnabled,
           'resource_set_ids': ?resourceSetIds,
           'resource_tag_logical_operator': ?resourceTagLogicalOperator,
           'resource_tags': ?resourceTags,
           ...?resourceType?.argMap,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFmsPolicy>`.
  RefTo<AwsFmsPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `policy_update_token` attribute.
  TfRef<String> get policyUpdateToken =>
      TfRef.attribute<String>(this, 'policy_update_token');

  /// Reference to `delete_all_policy_resources` attribute.
  TfRef<bool> get deleteAllPolicyResourcesRef =>
      TfRef.attribute<bool>(this, 'delete_all_policy_resources');

  /// Reference to `delete_unused_fm_managed_resources` attribute.
  TfRef<bool> get deleteUnusedFmManagedResourcesRef =>
      TfRef.attribute<bool>(this, 'delete_unused_fm_managed_resources');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_resource_tags` attribute.
  TfRef<bool> get excludeResourceTagsRef =>
      TfRef.attribute<bool>(this, 'exclude_resource_tags');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `remediation_enabled` attribute.
  TfRef<bool> get remediationEnabledRef =>
      TfRef.attribute<bool>(this, 'remediation_enabled');

  /// Reference to `resource_set_ids` attribute.
  TfRef<List<String>> get resourceSetIdsRef =>
      TfRef.attribute<List<String>>(this, 'resource_set_ids');

  /// Reference to `resource_tag_logical_operator` attribute.
  TfRef<String> get resourceTagLogicalOperatorRef =>
      TfRef.attribute<String>(this, 'resource_tag_logical_operator');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `resource_type_list` attribute.
  TfRef<List<String>> get resourceTypeListRef =>
      TfRef.attribute<List<String>>(this, 'resource_type_list');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
