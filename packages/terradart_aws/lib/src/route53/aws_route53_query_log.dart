// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_query_log`.
const Set<String> _awsRoute53QueryLogSensitive = <String>{};

/// Factory wrapper for `aws_route53_query_log`.
final class AwsRoute53QueryLog extends Resource {
  static const String tfType = 'aws_route53_query_log';

  AwsRoute53QueryLog({
    required super.localName,
    required TfArg<String> cloudwatchLogGroupArn,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloudwatch_log_group_arn': cloudwatchLogGroupArn,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53QueryLogSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
