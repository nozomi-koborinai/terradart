// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_organization_custom_policy_rule`.
const Set<String> _awsConfigOrganizationCustomPolicyRuleSensitive = <String>{};

/// Config Organization Custom Policy Rule Maximum Execution enum for `maximum_execution_frequency`.
enum ConfigOrganizationCustomPolicyRuleMaximumExecutionFrequency
    implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigOrganizationCustomPolicyRuleMaximumExecutionFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Config Organization Custom Policy Rule Trigger enum for `trigger_types`.
enum ConfigOrganizationCustomPolicyRuleTriggerTypes implements TerraformEnum {
  configurationitemchangenotification('ConfigurationItemChangeNotification'),
  oversizedconfigurationitemchangenotification(
    'OversizedConfigurationItemChangeNotification',
  );

  const ConfigOrganizationCustomPolicyRuleTriggerTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_config_organization_custom_policy_rule`.
final class AwsConfigOrganizationCustomPolicyRule extends Resource {
  static const String tfType = 'aws_config_organization_custom_policy_rule';

  AwsConfigOrganizationCustomPolicyRule({
    required super.localName,
    TfArg<List<String>>? debugLogDeliveryAccounts,
    TfArg<String>? description,
    TfArg<List<String>>? excludedAccounts,
    TfArg<String>? inputParameters,
    TfArg<ConfigOrganizationCustomPolicyRuleMaximumExecutionFrequency>?
    maximumExecutionFrequency,
    required TfArg<String> name,
    required TfArg<String> policyRuntime,
    required TfArg<String> policyText,
    TfArg<String>? region,
    TfArg<String>? resourceIdScope,
    TfArg<List<String>>? resourceTypesScope,
    TfArg<String>? tagKeyScope,
    TfArg<String>? tagValueScope,
    required List<TfArg<ConfigOrganizationCustomPolicyRuleTriggerTypes>>
    triggerTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'debug_log_delivery_accounts': ?debugLogDeliveryAccounts,
           'description': ?description,
           'excluded_accounts': ?excludedAccounts,
           'input_parameters': ?inputParameters,
           'maximum_execution_frequency': ?maximumExecutionFrequency,
           'name': name,
           'policy_runtime': policyRuntime,
           'policy_text': policyText,
           'region': ?region,
           'resource_id_scope': ?resourceIdScope,
           'resource_types_scope': ?resourceTypesScope,
           'tag_key_scope': ?tagKeyScope,
           'tag_value_scope': ?tagValueScope,
           'trigger_types': TfArg.literal([
             for (final e in triggerTypes) e.toTfJson(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConfigOrganizationCustomPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigOrganizationCustomPolicyRule>`.
  RefTo<AwsConfigOrganizationCustomPolicyRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `debug_log_delivery_accounts` attribute.
  TfRef<List<String>> get debugLogDeliveryAccountsRef =>
      TfRef.attribute<List<String>>(this, 'debug_log_delivery_accounts');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `excluded_accounts` attribute.
  TfRef<List<String>> get excludedAccountsRef =>
      TfRef.attribute<List<String>>(this, 'excluded_accounts');

  /// Reference to `input_parameters` attribute.
  TfRef<String> get inputParametersRef =>
      TfRef.attribute<String>(this, 'input_parameters');

  /// Reference to `maximum_execution_frequency` attribute.
  TfRef<String> get maximumExecutionFrequencyRef =>
      TfRef.attribute<String>(this, 'maximum_execution_frequency');

  /// Reference to `policy_runtime` attribute.
  TfRef<String> get policyRuntimeRef =>
      TfRef.attribute<String>(this, 'policy_runtime');

  /// Reference to `policy_text` attribute.
  TfRef<String> get policyTextRef =>
      TfRef.attribute<String>(this, 'policy_text');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id_scope` attribute.
  TfRef<String> get resourceIdScopeRef =>
      TfRef.attribute<String>(this, 'resource_id_scope');

  /// Reference to `resource_types_scope` attribute.
  TfRef<List<String>> get resourceTypesScopeRef =>
      TfRef.attribute<List<String>>(this, 'resource_types_scope');

  /// Reference to `tag_key_scope` attribute.
  TfRef<String> get tagKeyScopeRef =>
      TfRef.attribute<String>(this, 'tag_key_scope');

  /// Reference to `tag_value_scope` attribute.
  TfRef<String> get tagValueScopeRef =>
      TfRef.attribute<String>(this, 'tag_value_scope');

  /// Reference to `trigger_types` attribute.
  TfRef<List<String>> get triggerTypesRef =>
      TfRef.attribute<List<String>>(this, 'trigger_types');
}
