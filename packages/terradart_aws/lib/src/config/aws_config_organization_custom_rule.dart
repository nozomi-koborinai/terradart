// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_config_organization_custom_rule`.
const Set<String> _awsConfigOrganizationCustomRuleSensitive = <String>{};

/// Config Organization Custom Rule Maximum Execution enum for `maximum_execution_frequency`.
enum ConfigOrganizationCustomRuleMaximumExecutionFrequency
    implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigOrganizationCustomRuleMaximumExecutionFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Config Organization Custom Rule Trigger enum for `trigger_types`.
enum ConfigOrganizationCustomRuleTriggerTypes implements TerraformEnum {
  configurationitemchangenotification('ConfigurationItemChangeNotification'),
  oversizedconfigurationitemchangenotification(
    'OversizedConfigurationItemChangeNotification',
  ),
  schedulednotification('ScheduledNotification');

  const ConfigOrganizationCustomRuleTriggerTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_config_organization_custom_rule`.
final class AwsConfigOrganizationCustomRule extends Resource {
  static const String tfType = 'aws_config_organization_custom_rule';

  AwsConfigOrganizationCustomRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? excludedAccounts,
    TfArg<String>? inputParameters,
    required RefTo<AwsLambdaFunction> lambdaFunctionArn,
    TfArg<ConfigOrganizationCustomRuleMaximumExecutionFrequency>?
    maximumExecutionFrequency,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? resourceIdScope,
    TfArg<List<String>>? resourceTypesScope,
    TfArg<String>? tagKeyScope,
    TfArg<String>? tagValueScope,
    required List<TfArg<ConfigOrganizationCustomRuleTriggerTypes>> triggerTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (excludedAccounts != null) 'excluded_accounts': excludedAccounts,
           if (inputParameters != null) 'input_parameters': inputParameters,
           'lambda_function_arn': lambdaFunctionArn.encodeAs('arn'),
           if (maximumExecutionFrequency != null)
             'maximum_execution_frequency': maximumExecutionFrequency,
           'name': name,
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
  Set<String> get sensitiveFields => _awsConfigOrganizationCustomRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigOrganizationCustomRule>`.
  RefTo<AwsConfigOrganizationCustomRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
