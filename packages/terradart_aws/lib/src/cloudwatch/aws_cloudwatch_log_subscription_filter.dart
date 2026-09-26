// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_subscription_filter`.
const Set<String> _awsCloudwatchLogSubscriptionFilterSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_subscription_filter`.
final class AwsCloudwatchLogSubscriptionFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_subscription_filter';

  AwsCloudwatchLogSubscriptionFilter({
    required super.localName,
    TfArg<bool>? applyOnTransformedLogs,
    required TfArg<String> destinationArn,
    TfArg<String>? distribution,
    TfArg<List<String>>? emitSystemFields,
    required TfArg<String> filterPattern,
    required TfArg<String> logGroupName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyOnTransformedLogs != null)
             'apply_on_transformed_logs': applyOnTransformedLogs,
           'destination_arn': destinationArn,
           if (distribution != null) 'distribution': distribution,
           if (emitSystemFields != null) 'emit_system_fields': emitSystemFields,
           'filter_pattern': filterPattern,
           'log_group_name': logGroupName,
           'name': name,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogSubscriptionFilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
