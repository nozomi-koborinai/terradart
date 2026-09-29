// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_account_policy`.
const Set<String> _awsCloudwatchLogAccountPolicySensitive = <String>{};

/// Cloudwatch Log Account Policy Policy enum for `policy_type`.
enum CloudwatchLogAccountPolicyPolicyType implements TerraformEnum {
  dataProtectionPolicy('DATA_PROTECTION_POLICY'),
  subscriptionFilterPolicy('SUBSCRIPTION_FILTER_POLICY'),
  fieldIndexPolicy('FIELD_INDEX_POLICY'),
  transformerPolicy('TRANSFORMER_POLICY'),
  metricExtractionPolicy('METRIC_EXTRACTION_POLICY');

  const CloudwatchLogAccountPolicyPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Log Account Policy enum for `scope`.
enum CloudwatchLogAccountPolicyScope implements TerraformEnum {
  all('ALL');

  const CloudwatchLogAccountPolicyScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_log_account_policy`.
final class AwsCloudwatchLogAccountPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_account_policy';

  AwsCloudwatchLogAccountPolicy({
    required super.localName,
    required TfArg<String> policyDocument,
    required TfArg<String> policyName,
    required TfArg<CloudwatchLogAccountPolicyPolicyType> policyType,
    TfArg<String>? region,
    TfArg<CloudwatchLogAccountPolicyScope>? scope,
    TfArg<String>? selectionCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_document': policyDocument,
           'policy_name': policyName,
           'policy_type': policyType,
           if (region != null) 'region': region,
           if (scope != null) 'scope': scope,
           if (selectionCriteria != null)
             'selection_criteria': selectionCriteria,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogAccountPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogAccountPolicy>`.
  RefTo<AwsCloudwatchLogAccountPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
