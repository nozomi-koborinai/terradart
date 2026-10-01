// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_network_policy.dart'
    show GoogleComputeRegionNetworkPolicy;

/// Sensitive field paths for `google_compute_region_network_policy_traffic_classification_rule`.
const Set<String>
_googleComputeRegionNetworkPolicyTrafficClassificationRuleSensitive =
    <String>{};

/// At most one of `target_service_accounts`, `target_secure_tags` on `google_compute_region_network_policy_traffic_classification_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.targetServiceAccounts(...)`.
sealed class ComputeRegionNetworkPolicyTrafficClassificationRuleTarget {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleTarget();

  /// Sets `target_service_accounts`.
  const factory ComputeRegionNetworkPolicyTrafficClassificationRuleTarget.targetServiceAccounts(
    TfArg<List<String>> targetServiceAccounts,
  ) = ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccounts;

  /// Sets `target_secure_tags`.
  const factory ComputeRegionNetworkPolicyTrafficClassificationRuleTarget.targetSecureTags(
    List<ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags>
    targetSecureTags,
  ) = ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTagsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRegionNetworkPolicyTrafficClassificationRuleTarget.targetServiceAccounts] choice: sets `target_service_accounts`.
final class ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccounts
    extends ComputeRegionNetworkPolicyTrafficClassificationRuleTarget {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccounts(
    this.targetServiceAccounts,
  );

  final TfArg<List<String>> targetServiceAccounts;

  @override
  String get blockKey => 'target_service_accounts';

  @override
  Map<String, Object?> encode() => {
    'target_service_accounts': targetServiceAccounts.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_service_accounts': targetServiceAccounts,
  };
}

/// The [ComputeRegionNetworkPolicyTrafficClassificationRuleTarget.targetSecureTags] choice: sets `target_secure_tags`.
final class ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTagsChoice
    extends ComputeRegionNetworkPolicyTrafficClassificationRuleTarget {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTagsChoice(
    this.targetSecureTags,
  );

  final List<
    ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags
  >
  targetSecureTags;

  @override
  String get blockKey => 'target_secure_tags';

  @override
  Map<String, Object?> encode() => {
    'target_secure_tags': [for (final e in targetSecureTags) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'target_secure_tags': TfArg.literal([
      for (final e in targetSecureTags) e.encode(),
    ]),
  };
}

/// Typed helper for the `action` block of
/// `google_compute_region_network_policy_traffic_classification_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkPolicyTrafficClassificationRuleAction {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleAction({
    this.dscpMode,
    this.dscpValue,
    this.trafficClass,
    this.type,
  });

  final TfArg<ComputeRegionNetworkPolicyTrafficClassificationRuleDscpMode>?
  dscpMode;

  final TfArg<num>? dscpValue;

  final TfArg<ComputeRegionNetworkPolicyTrafficClassificationRuleTrafficClass>?
  trafficClass;

  final TfArg<ComputeRegionNetworkPolicyTrafficClassificationRuleType>? type;

  Map<String, Object?> encode() => {
    'dscp_mode': ?dscpMode?.toTfJson(),
    'dscp_value': ?dscpValue?.toTfJson(),
    'traffic_class': ?trafficClass?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `dscp_mode` — derived from the provider schema description.
enum ComputeRegionNetworkPolicyTrafficClassificationRuleDscpMode
    implements TerraformEnum {
  auto('AUTO'),
  custom('CUSTOM');

  const ComputeRegionNetworkPolicyTrafficClassificationRuleDscpMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `traffic_class` — derived from the provider schema description.
enum ComputeRegionNetworkPolicyTrafficClassificationRuleTrafficClass
    implements TerraformEnum {
  tc1('TC1'),
  tc2('TC2'),
  tc3('TC3'),
  tc4('TC4'),
  tc5('TC5'),
  tc6('TC6');

  const ComputeRegionNetworkPolicyTrafficClassificationRuleTrafficClass(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum ComputeRegionNetworkPolicyTrafficClassificationRuleType
    implements TerraformEnum {
  applyTrafficClassification('apply_traffic_classification');

  const ComputeRegionNetworkPolicyTrafficClassificationRuleType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `match` block of
/// `google_compute_region_network_policy_traffic_classification_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkPolicyTrafficClassificationRuleMatch {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleMatch({
    this.destIpRanges,
    this.srcIpRanges,
    required this.layer4Configs,
  });

  final TfArg<List<String>>? destIpRanges;

  final TfArg<List<String>>? srcIpRanges;

  final List<ComputeRegionNetworkPolicyTrafficClassificationRuleLayer4Configs>
  layer4Configs;

  Map<String, Object?> encode() => {
    'dest_ip_ranges': ?destIpRanges?.toTfJson(),
    'src_ip_ranges': ?srcIpRanges?.toTfJson(),
    'layer4_configs': [for (final e in layer4Configs) e.encode()],
  };
}

/// Typed helper for the `match.layer4_configs` block of
/// `google_compute_region_network_policy_traffic_classification_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkPolicyTrafficClassificationRuleLayer4Configs {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleLayer4Configs({
    required this.ipProtocol,
    this.ports,
  });

  final TfArg<String> ipProtocol;

  final TfArg<List<String>>? ports;

  Map<String, Object?> encode() => {
    'ip_protocol': ipProtocol.toTfJson(),
    'ports': ?ports?.toTfJson(),
  };
}

/// Typed helper for the `target_secure_tags` block of
/// `google_compute_region_network_policy_traffic_classification_rule` (derived from provider schema).
@immutable
final class ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags {
  const ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags({
    this.name,
  });

  final TfArg<String>? name;

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Factory wrapper for `google_compute_region_network_policy_traffic_classification_rule`.
///
/// Represents a traffic classification rule that describes one or more match
/// conditions along with the action to be taken when traffic matches this
/// condition.
final class GoogleComputeRegionNetworkPolicyTrafficClassificationRule
    extends Resource {
  static const String tfType =
      'google_compute_region_network_policy_traffic_classification_rule';

  GoogleComputeRegionNetworkPolicyTrafficClassificationRule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    required RefTo<GoogleComputeRegionNetworkPolicy> networkPolicy,
    required TfArg<num> priority,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? ruleName,
    ComputeRegionNetworkPolicyTrafficClassificationRuleTarget? target,
    ComputeRegionNetworkPolicyTrafficClassificationRuleAction? action,
    required ComputeRegionNetworkPolicyTrafficClassificationRuleMatch match,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'disabled': ?disabled,
           'network_policy': networkPolicy.encodeAs('name'),
           'priority': priority,
           'project': ?project,
           'region': ?region,
           'rule_name': ?ruleName,
           ...?target?.argMap,
           if (action != null) 'action': TfArg.literal(action.encode()),
           'match': TfArg.literal(match.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkPolicyTrafficClassificationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionNetworkPolicyTrafficClassificationRule>`.
  RefTo<GoogleComputeRegionNetworkPolicyTrafficClassificationRule> get ref =>
      RefTo.of(this);

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `rule_tuple_count` attribute.
  TfRef<num> get ruleTupleCount =>
      TfRef.attribute<num>(this, 'rule_tuple_count');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `network_policy` attribute.
  TfRef<String> get networkPolicy =>
      TfRef.attribute<String>(this, 'network_policy');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `target_service_accounts` attribute.
  TfRef<List<String>> get targetServiceAccounts =>
      TfRef.attribute<List<String>>(this, 'target_service_accounts');
}
