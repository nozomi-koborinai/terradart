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
           if (debugLogDeliveryAccounts != null)
             'debug_log_delivery_accounts': debugLogDeliveryAccounts,
           if (description != null) 'description': description,
           if (excludedAccounts != null) 'excluded_accounts': excludedAccounts,
           if (inputParameters != null) 'input_parameters': inputParameters,
           if (maximumExecutionFrequency != null)
             'maximum_execution_frequency': maximumExecutionFrequency,
           'name': name,
           'policy_runtime': policyRuntime,
           'policy_text': policyText,
           if (region != null) 'region': region,
           if (resourceIdScope != null) 'resource_id_scope': resourceIdScope,
           if (resourceTypesScope != null)
             'resource_types_scope': resourceTypesScope,
           if (tagKeyScope != null) 'tag_key_scope': tagKeyScope,
           if (tagValueScope != null) 'tag_value_scope': tagValueScope,
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
}
