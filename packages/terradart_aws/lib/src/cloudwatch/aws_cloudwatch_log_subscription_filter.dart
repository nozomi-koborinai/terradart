// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_log_subscription_filter`.
const Set<String> _awsCloudwatchLogSubscriptionFilterSensitive = <String>{};

/// Cloudwatch Log Subscription Filter enum for `distribution`.
enum CloudwatchLogSubscriptionFilterDistribution implements TerraformEnum {
  random('Random'),
  bylogstream('ByLogStream');

  const CloudwatchLogSubscriptionFilterDistribution(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudwatch Log Subscription Filter Emit System enum for `emit_system_fields`.
enum CloudwatchLogSubscriptionFilterEmitSystemFields implements TerraformEnum {
  awsAccount('@aws.account'),
  awsRegion('@aws.region'),
  sourceLog('@source.log');

  const CloudwatchLogSubscriptionFilterEmitSystemFields(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_log_subscription_filter`.
final class AwsCloudwatchLogSubscriptionFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_subscription_filter';

  AwsCloudwatchLogSubscriptionFilter({
    required super.localName,
    TfArg<bool>? applyOnTransformedLogs,
    required TfArg<String> destinationArn,
    TfArg<CloudwatchLogSubscriptionFilterDistribution>? distribution,
    List<TfArg<CloudwatchLogSubscriptionFilterEmitSystemFields>>?
    emitSystemFields,
    required TfArg<String> filterPattern,
    required RefTo<AwsCloudwatchLogGroup> logGroupName,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_on_transformed_logs': ?applyOnTransformedLogs,
           'destination_arn': destinationArn,
           'distribution': ?distribution,
           if (emitSystemFields != null)
             'emit_system_fields': TfArg.literal([
               for (final e in emitSystemFields) e.toTfJson(),
             ]),
           'filter_pattern': filterPattern,
           'log_group_name': logGroupName.encodeAs('name'),
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogSubscriptionFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogSubscriptionFilter>`.
  RefTo<AwsCloudwatchLogSubscriptionFilter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_on_transformed_logs` attribute.
  TfRef<bool> get applyOnTransformedLogsRef =>
      TfRef.attribute<bool>(this, 'apply_on_transformed_logs');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArnRef =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `distribution` attribute.
  TfRef<String> get distributionRef =>
      TfRef.attribute<String>(this, 'distribution');

  /// Reference to `emit_system_fields` attribute.
  TfRef<List<String>> get emitSystemFieldsRef =>
      TfRef.attribute<List<String>>(this, 'emit_system_fields');

  /// Reference to `filter_pattern` attribute.
  TfRef<String> get filterPatternRef =>
      TfRef.attribute<String>(this, 'filter_pattern');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupNameRef =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');
}
