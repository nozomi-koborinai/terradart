// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_policy`.
const Set<String> _awsNetworksecuritymanagerPolicySensitive = <String>{};

/// Networksecuritymanager Policy Firewall enum for `firewall_type`.
extension type const NetworksecuritymanagerPolicyFirewallType._(TfArg<String> _)
    implements TfArg<String> {
  NetworksecuritymanagerPolicyFirewallType.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerPolicyFirewallType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerPolicyFirewallType.arg(TfArg<String> arg)
    : this._(arg);

  static const waf = NetworksecuritymanagerPolicyFirewallType._(
    TfArgLiteral('WAF'),
  );
  static const shieldAdvanced = NetworksecuritymanagerPolicyFirewallType._(
    TfArgLiteral('SHIELD_ADVANCED'),
  );

  static const List<NetworksecuritymanagerPolicyFirewallType> values = [
    waf,
    shieldAdvanced,
  ];
}

/// Typed helper for the `configuration` block of
/// `aws_networksecuritymanager_policy` (derived from provider schema).
@immutable
final class NetworksecuritymanagerPolicyConfiguration {
  const NetworksecuritymanagerPolicyConfiguration({
    required this.remediationEnabled,
    required this.resourcesCleanUp,
    this.wafConfig,
  });

  final TfArg<bool> remediationEnabled;

  final TfArg<bool> resourcesCleanUp;

  final List<NetworksecuritymanagerPolicyWafConfig>? wafConfig;

  @internal
  Map<String, Object?> encode() => {
    'remediation_enabled': remediationEnabled.toTfJson(),
    'resources_clean_up': resourcesCleanUp.toTfJson(),
    if (wafConfig != null)
      'waf_config': [for (final e in wafConfig!) e.encode()],
  };
}

/// Typed helper for the `configuration.waf_config` block of
/// `aws_networksecuritymanager_policy` (derived from provider schema).
@immutable
final class NetworksecuritymanagerPolicyWafConfig {
  const NetworksecuritymanagerPolicyWafConfig({
    required this.conflictResolution,
    required this.existingCustomerWebAclResolution,
  });

  final NetworksecuritymanagerPolicyConflictResolution conflictResolution;

  final NetworksecuritymanagerPolicyExistingCustomerWebAclResolution
  existingCustomerWebAclResolution;

  @internal
  Map<String, Object?> encode() => {
    'conflict_resolution': conflictResolution.toTfJson(),
    'existing_customer_web_acl_resolution': existingCustomerWebAclResolution
        .toTfJson(),
  };
}

/// `conflict_resolution` — derived from the provider schema description.
extension type const NetworksecuritymanagerPolicyConflictResolution._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworksecuritymanagerPolicyConflictResolution.variable(String name)
    : this._(TfArg.variable(name));
  NetworksecuritymanagerPolicyConflictResolution.expression(String template)
    : this._(TfArg.expression(template));
  const NetworksecuritymanagerPolicyConflictResolution.arg(TfArg<String> arg)
    : this._(arg);

  static const mergeWhereApplicable =
      NetworksecuritymanagerPolicyConflictResolution._(
        TfArgLiteral('MERGE_WHERE_APPLICABLE'),
      );

  static const List<NetworksecuritymanagerPolicyConflictResolution> values = [
    mergeWhereApplicable,
  ];
}

/// `existing_customer_web_acl_resolution` — derived from the provider schema description.
extension type const NetworksecuritymanagerPolicyExistingCustomerWebAclResolution._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworksecuritymanagerPolicyExistingCustomerWebAclResolution.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworksecuritymanagerPolicyExistingCustomerWebAclResolution.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworksecuritymanagerPolicyExistingCustomerWebAclResolution.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const retrofit =
      NetworksecuritymanagerPolicyExistingCustomerWebAclResolution._(
        TfArgLiteral('RETROFIT'),
      );
  static const overrideAssociation =
      NetworksecuritymanagerPolicyExistingCustomerWebAclResolution._(
        TfArgLiteral('OVERRIDE_ASSOCIATION'),
      );
  static const noRemediation =
      NetworksecuritymanagerPolicyExistingCustomerWebAclResolution._(
        TfArgLiteral('NO_REMEDIATION'),
      );

  static const List<
    NetworksecuritymanagerPolicyExistingCustomerWebAclResolution
  >
  values = [retrofit, overrideAssociation, noRemediation];
}

/// Exactly one of `rule_identifier`, `template_identifier` on the `template_or_rule` block of `aws_networksecuritymanager_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.ruleIdentifier(...)`.
sealed class NetworksecuritymanagerPolicyTemplateOrRule {
  const NetworksecuritymanagerPolicyTemplateOrRule();

  /// Sets `rule_identifier`.
  const factory NetworksecuritymanagerPolicyTemplateOrRule.ruleIdentifier(
    TfArg<String> ruleIdentifier,
  ) = NetworksecuritymanagerPolicyTemplateOrRuleIdentifier;

  /// Sets `template_identifier`.
  const factory NetworksecuritymanagerPolicyTemplateOrRule.templateIdentifier(
    TfArg<String> templateIdentifier,
  ) = NetworksecuritymanagerPolicyTemplateOrRuleTemplateIdentifier;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [NetworksecuritymanagerPolicyTemplateOrRule.ruleIdentifier] choice: sets `rule_identifier`.
final class NetworksecuritymanagerPolicyTemplateOrRuleIdentifier
    extends NetworksecuritymanagerPolicyTemplateOrRule {
  const NetworksecuritymanagerPolicyTemplateOrRuleIdentifier(
    this.ruleIdentifier,
  );

  final TfArg<String> ruleIdentifier;

  @internal
  @override
  String get blockKey => 'rule_identifier';

  @internal
  @override
  Map<String, Object?> encode() => {
    'rule_identifier': ruleIdentifier.toTfJson(),
  };
}

/// The [NetworksecuritymanagerPolicyTemplateOrRule.templateIdentifier] choice: sets `template_identifier`.
final class NetworksecuritymanagerPolicyTemplateOrRuleTemplateIdentifier
    extends NetworksecuritymanagerPolicyTemplateOrRule {
  const NetworksecuritymanagerPolicyTemplateOrRuleTemplateIdentifier(
    this.templateIdentifier,
  );

  final TfArg<String> templateIdentifier;

  @internal
  @override
  String get blockKey => 'template_identifier';

  @internal
  @override
  Map<String, Object?> encode() => {
    'template_identifier': templateIdentifier.toTfJson(),
  };
}

/// Factory wrapper for `aws_networksecuritymanager_policy`.
final class AwsNetworksecuritymanagerPolicy extends Resource {
  static const String tfType = 'aws_networksecuritymanager_policy';

  AwsNetworksecuritymanagerPolicy(
    super.localName, {
    TfArg<String>? description,
    required NetworksecuritymanagerPolicyFirewallType firewallType,
    TfArg<bool>? isPublished,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NetworksecuritymanagerPolicyConfiguration>? configuration,
    List<NetworksecuritymanagerPolicyTemplateOrRule>? templateOrRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'firewall_type': firewallType,
           'is_published': ?isPublished,
           'name': name,
           'priority': priority,
           'region': ?region,
           'tags': ?tags,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
           if (templateOrRule != null)
             'template_or_rule': TfArg.literal([
               for (final e in templateOrRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworksecuritymanagerPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerPolicy>`.
  RefTo<AwsNetworksecuritymanagerPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `firewall_type` attribute.
  TfRef<String> get firewallType =>
      TfRef.attribute<String>(this, 'firewall_type');

  /// Reference to `is_published` attribute.
  TfRef<bool> get isPublished => TfRef.attribute<bool>(this, 'is_published');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
