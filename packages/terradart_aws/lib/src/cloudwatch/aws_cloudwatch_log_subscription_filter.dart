// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cloudwatch_log_subscription_filter`.
const Set<String> _awsCloudwatchLogSubscriptionFilterSensitive = <String>{};

/// Cloudwatch Log Subscription Filter enum for `distribution`.
extension type const CloudwatchLogSubscriptionFilterDistribution._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchLogSubscriptionFilterDistribution.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogSubscriptionFilterDistribution.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogSubscriptionFilterDistribution.arg(TfArg<String> arg)
    : this._(arg);

  static const random = CloudwatchLogSubscriptionFilterDistribution._(
    TfArgLiteral('Random'),
  );
  static const bylogstream = CloudwatchLogSubscriptionFilterDistribution._(
    TfArgLiteral('ByLogStream'),
  );

  static const List<CloudwatchLogSubscriptionFilterDistribution> values = [
    random,
    bylogstream,
  ];
}

/// Cloudwatch Log Subscription Filter Emit System enum for `emit_system_fields`.
extension type const CloudwatchLogSubscriptionFilterEmitSystemFields._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchLogSubscriptionFilterEmitSystemFields.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogSubscriptionFilterEmitSystemFields.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogSubscriptionFilterEmitSystemFields.arg(TfArg<String> arg)
    : this._(arg);

  static const awsAccount = CloudwatchLogSubscriptionFilterEmitSystemFields._(
    TfArgLiteral('@aws.account'),
  );
  static const awsRegion = CloudwatchLogSubscriptionFilterEmitSystemFields._(
    TfArgLiteral('@aws.region'),
  );
  static const sourceLog = CloudwatchLogSubscriptionFilterEmitSystemFields._(
    TfArgLiteral('@source.log'),
  );

  static const List<CloudwatchLogSubscriptionFilterEmitSystemFields> values = [
    awsAccount,
    awsRegion,
    sourceLog,
  ];
}

/// Factory wrapper for `aws_cloudwatch_log_subscription_filter`.
final class AwsCloudwatchLogSubscriptionFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_subscription_filter';

  AwsCloudwatchLogSubscriptionFilter(
    super.localName, {
    TfArg<bool>? applyOnTransformedLogs,
    required TfArg<String> destinationArn,
    CloudwatchLogSubscriptionFilterDistribution? distribution,
    List<CloudwatchLogSubscriptionFilterEmitSystemFields>? emitSystemFields,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_on_transformed_logs` attribute.
  TfRef<bool> get applyOnTransformedLogs =>
      TfRef.attribute<bool>(this, 'apply_on_transformed_logs');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `distribution` attribute.
  TfRef<String> get distribution =>
      TfRef.attribute<String>(this, 'distribution');

  /// Reference to `emit_system_fields` attribute.
  TfRef<List<String>> get emitSystemFields =>
      TfRef.attribute<List<String>>(this, 'emit_system_fields');

  /// Reference to `filter_pattern` attribute.
  TfRef<String> get filterPattern =>
      TfRef.attribute<String>(this, 'filter_pattern');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupName =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
