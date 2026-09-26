// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_organization_managed_rule`.
const Set<String> _awsConfigOrganizationManagedRuleSensitive = <String>{};

/// Factory wrapper for `aws_config_organization_managed_rule`.
final class AwsConfigOrganizationManagedRule extends Resource {
  static const String tfType = 'aws_config_organization_managed_rule';

  AwsConfigOrganizationManagedRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? excludedAccounts,
    TfArg<String>? inputParameters,
    TfArg<String>? maximumExecutionFrequency,
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
           if (description != null) 'description': description,
           if (excludedAccounts != null) 'excluded_accounts': excludedAccounts,
           if (inputParameters != null) 'input_parameters': inputParameters,
           if (maximumExecutionFrequency != null)
             'maximum_execution_frequency': maximumExecutionFrequency,
           'name': name,
           if (region != null) 'region': region,
           if (resourceIdScope != null) 'resource_id_scope': resourceIdScope,
           if (resourceTypesScope != null)
             'resource_types_scope': resourceTypesScope,
           'rule_identifier': ruleIdentifier,
           if (tagKeyScope != null) 'tag_key_scope': tagKeyScope,
           if (tagValueScope != null) 'tag_value_scope': tagValueScope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigOrganizationManagedRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
