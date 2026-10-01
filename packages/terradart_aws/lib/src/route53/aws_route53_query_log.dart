// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../route53/aws_route53_zone.dart' show AwsRoute53Zone;

/// Sensitive field paths for `aws_route53_query_log`.
const Set<String> _awsRoute53QueryLogSensitive = <String>{};

/// Factory wrapper for `aws_route53_query_log`.
final class AwsRoute53QueryLog extends Resource {
  static const String tfType = 'aws_route53_query_log';

  AwsRoute53QueryLog({
    required super.localName,
    required RefTo<AwsCloudwatchLogGroup> cloudwatchLogGroupArn,
    required RefTo<AwsRoute53Zone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloudwatch_log_group_arn': cloudwatchLogGroupArn.encodeAs('arn'),
           'zone_id': zoneId.encodeAs('zone_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53QueryLogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53QueryLog>`.
  RefTo<AwsRoute53QueryLog> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cloudwatch_log_group_arn` attribute.
  TfRef<String> get cloudwatchLogGroupArn =>
      TfRef.attribute<String>(this, 'cloudwatch_log_group_arn');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
