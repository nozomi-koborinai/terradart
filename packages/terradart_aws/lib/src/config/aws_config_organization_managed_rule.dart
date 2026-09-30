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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_id_scope` attribute.
  TfRef<String> get resourceIdScopeRef =>
      TfRef.attribute<String>(this, 'resource_id_scope');

  /// Reference to `resource_types_scope` attribute.
  TfRef<List<String>> get resourceTypesScopeRef =>
      TfRef.attribute<List<String>>(this, 'resource_types_scope');

  /// Reference to `rule_identifier` attribute.
  TfRef<String> get ruleIdentifierRef =>
      TfRef.attribute<String>(this, 'rule_identifier');

  /// Reference to `tag_key_scope` attribute.
  TfRef<String> get tagKeyScopeRef =>
      TfRef.attribute<String>(this, 'tag_key_scope');

  /// Reference to `tag_value_scope` attribute.
  TfRef<String> get tagValueScopeRef =>
      TfRef.attribute<String>(this, 'tag_value_scope');
}
