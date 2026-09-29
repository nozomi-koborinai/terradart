// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_organization_managed_rule`.
const Set<String> _awsConfigOrganizationManagedRuleSensitive = <String>{};

/// Config Organization Managed Rule Maximum Execution enum for `maximum_execution_frequency`.
enum ConfigOrganizationManagedRuleMaximumExecutionFrequency
    implements TerraformEnum {
  oneHour('One_Hour'),
  threeHours('Three_Hours'),
  sixHours('Six_Hours'),
  twelveHours('Twelve_Hours'),
  twentyfourHours('TwentyFour_Hours');

  const ConfigOrganizationManagedRuleMaximumExecutionFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_config_organization_managed_rule`.
final class AwsConfigOrganizationManagedRule extends Resource {
  static const String tfType = 'aws_config_organization_managed_rule';

  AwsConfigOrganizationManagedRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? excludedAccounts,
    TfArg<String>? inputParameters,
    TfArg<ConfigOrganizationManagedRuleMaximumExecutionFrequency>?
    maximumExecutionFrequency,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? resourceIdScope,
    TfArg<List<String>>? resourceTypesScope,
    required TfArg<String> ruleIdentifier,
    TfArg<String>? tagKeyScope,
    TfArg<String>? tagValueScope,
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
           'maximum_execution_frequency': ?maximumExecutionFrequency,
           'name': name,
           'region': ?region,
           'resource_id_scope': ?resourceIdScope,
           'resource_types_scope': ?resourceTypesScope,
           'rule_identifier': ruleIdentifier,
           'tag_key_scope': ?tagKeyScope,
           'tag_value_scope': ?tagValueScope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigOrganizationManagedRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigOrganizationManagedRule>`.
  RefTo<AwsConfigOrganizationManagedRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
