// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_account_policy`.
const Set<String> _awsCloudwatchLogAccountPolicySensitive = <String>{};

/// Cloudwatch Log Account Policy enum for `policy_type`.
extension type const CloudwatchLogAccountPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogAccountPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogAccountPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogAccountPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const dataProtectionPolicy = CloudwatchLogAccountPolicyType._(
    TfArgLiteral('DATA_PROTECTION_POLICY'),
  );
  static const subscriptionFilterPolicy = CloudwatchLogAccountPolicyType._(
    TfArgLiteral('SUBSCRIPTION_FILTER_POLICY'),
  );
  static const fieldIndexPolicy = CloudwatchLogAccountPolicyType._(
    TfArgLiteral('FIELD_INDEX_POLICY'),
  );
  static const transformerPolicy = CloudwatchLogAccountPolicyType._(
    TfArgLiteral('TRANSFORMER_POLICY'),
  );
  static const metricExtractionPolicy = CloudwatchLogAccountPolicyType._(
    TfArgLiteral('METRIC_EXTRACTION_POLICY'),
  );

  static const List<CloudwatchLogAccountPolicyType> values = [
    dataProtectionPolicy,
    subscriptionFilterPolicy,
    fieldIndexPolicy,
    transformerPolicy,
    metricExtractionPolicy,
  ];
}

/// Cloudwatch Log Account Policy enum for `scope`.
extension type const CloudwatchLogAccountPolicyScope._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogAccountPolicyScope.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogAccountPolicyScope.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogAccountPolicyScope.arg(TfArg<String> arg) : this._(arg);

  static const all = CloudwatchLogAccountPolicyScope._(TfArgLiteral('ALL'));

  static const List<CloudwatchLogAccountPolicyScope> values = [all];
}

/// Factory wrapper for `aws_cloudwatch_log_account_policy`.
final class AwsCloudwatchLogAccountPolicy extends Resource {
  static const String tfType = 'aws_cloudwatch_log_account_policy';

  AwsCloudwatchLogAccountPolicy(
    super.localName, {
    required TfArg<String> policyDocument,
    required TfArg<String> policyName,
    required CloudwatchLogAccountPolicyType policyType,
    TfArg<String>? region,
    CloudwatchLogAccountPolicyScope? scope,
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
           'region': ?region,
           'scope': ?scope,
           'selection_criteria': ?selectionCriteria,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogAccountPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogAccountPolicy>`.
  RefTo<AwsCloudwatchLogAccountPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocument =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `policy_name` attribute.
  TfRef<String> get policyName => TfRef.attribute<String>(this, 'policy_name');

  /// Reference to `policy_type` attribute.
  TfRef<String> get policyType => TfRef.attribute<String>(this, 'policy_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `selection_criteria` attribute.
  TfRef<String> get selectionCriteria =>
      TfRef.attribute<String>(this, 'selection_criteria');
}
