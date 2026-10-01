// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_config_organization_custom_rule`.
const Set<String> _awsConfigOrganizationCustomRuleSensitive = <String>{};

/// Config Organization Custom Rule Maximum Execution enum for `maximum_execution_frequency`.
extension type const ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  ConfigOrganizationCustomRuleMaximumExecutionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ConfigOrganizationCustomRuleMaximumExecutionFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ConfigOrganizationCustomRuleMaximumExecutionFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const oneHour =
      ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
        TfArgLiteral('One_Hour'),
      );
  static const threeHours =
      ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
        TfArgLiteral('Three_Hours'),
      );
  static const sixHours =
      ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
        TfArgLiteral('Six_Hours'),
      );
  static const twelveHours =
      ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
        TfArgLiteral('Twelve_Hours'),
      );
  static const twentyfourHours =
      ConfigOrganizationCustomRuleMaximumExecutionFrequency._(
        TfArgLiteral('TwentyFour_Hours'),
      );

  static const List<ConfigOrganizationCustomRuleMaximumExecutionFrequency>
  values = [oneHour, threeHours, sixHours, twelveHours, twentyfourHours];
}

/// Config Organization Custom Rule Trigger enum for `trigger_types`.
extension type const ConfigOrganizationCustomRuleTriggerTypes._(TfArg<String> _)
    implements TfArg<String> {
  ConfigOrganizationCustomRuleTriggerTypes.variable(String name)
    : this._(TfArg.variable(name));
  ConfigOrganizationCustomRuleTriggerTypes.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigOrganizationCustomRuleTriggerTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const configurationitemchangenotification =
      ConfigOrganizationCustomRuleTriggerTypes._(
        TfArgLiteral('ConfigurationItemChangeNotification'),
      );
  static const oversizedconfigurationitemchangenotification =
      ConfigOrganizationCustomRuleTriggerTypes._(
        TfArgLiteral('OversizedConfigurationItemChangeNotification'),
      );
  static const schedulednotification =
      ConfigOrganizationCustomRuleTriggerTypes._(
        TfArgLiteral('ScheduledNotification'),
      );

  static const List<ConfigOrganizationCustomRuleTriggerTypes> values = [
    configurationitemchangenotification,
    oversizedconfigurationitemchangenotification,
    schedulednotification,
  ];
}

/// Factory wrapper for `aws_config_organization_custom_rule`.
final class AwsConfigOrganizationCustomRule extends Resource {
  static const String tfType = 'aws_config_organization_custom_rule';

  AwsConfigOrganizationCustomRule(
    super.localName, {
    TfArg<String>? description,
    TfArg<List<String>>? excludedAccounts,
    TfArg<String>? inputParameters,
    required RefTo<AwsLambdaFunction> lambdaFunctionArn,
    ConfigOrganizationCustomRuleMaximumExecutionFrequency?
    maximumExecutionFrequency,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? resourceIdScope,
    TfArg<List<String>>? resourceTypesScope,
    TfArg<String>? tagKeyScope,
    TfArg<String>? tagValueScope,
    required List<ConfigOrganizationCustomRuleTriggerTypes> triggerTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'excluded_accounts': ?excludedAccounts,
           'input_parameters': ?inputParameters,
           'lambda_function_arn': lambdaFunctionArn.encodeAs('arn'),
           'maximum_execution_frequency': ?maximumExecutionFrequency,
           'name': name,
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
  Set<String> get sensitiveFields => _awsConfigOrganizationCustomRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigOrganizationCustomRule>`.
  RefTo<AwsConfigOrganizationCustomRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `excluded_accounts` attribute.
  TfRef<List<String>> get excludedAccounts =>
      TfRef.attribute<List<String>>(this, 'excluded_accounts');

  /// Reference to `input_parameters` attribute.
  TfRef<String> get inputParameters =>
      TfRef.attribute<String>(this, 'input_parameters');

  /// Reference to `lambda_function_arn` attribute.
  TfRef<String> get lambdaFunctionArn =>
      TfRef.attribute<String>(this, 'lambda_function_arn');

  /// Reference to `maximum_execution_frequency` attribute.
  TfRef<String> get maximumExecutionFrequency =>
      TfRef.attribute<String>(this, 'maximum_execution_frequency');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id_scope` attribute.
  TfRef<String> get resourceIdScope =>
      TfRef.attribute<String>(this, 'resource_id_scope');

  /// Reference to `resource_types_scope` attribute.
  TfRef<List<String>> get resourceTypesScope =>
      TfRef.attribute<List<String>>(this, 'resource_types_scope');

  /// Reference to `tag_key_scope` attribute.
  TfRef<String> get tagKeyScope =>
      TfRef.attribute<String>(this, 'tag_key_scope');

  /// Reference to `tag_value_scope` attribute.
  TfRef<String> get tagValueScope =>
      TfRef.attribute<String>(this, 'tag_value_scope');

  /// Reference to `trigger_types` attribute.
  TfRef<List<String>> get triggerTypes =>
      TfRef.attribute<List<String>>(this, 'trigger_types');
}
