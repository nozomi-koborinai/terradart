// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rum_metrics_destination`.
const Set<String> _awsRumMetricsDestinationSensitive = <String>{};

/// Factory wrapper for `aws_rum_metrics_destination`.
final class AwsRumMetricsDestination extends Resource {
  static const String tfType = 'aws_rum_metrics_destination';

  AwsRumMetricsDestination({
    required super.localName,
    required TfArg<String> appMonitorName,
    required TfArg<String> destination,
    TfArg<String>? destinationArn,
    TfArg<String>? iamRoleArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_monitor_name': appMonitorName,
           'destination': destination,
           if (destinationArn != null) 'destination_arn': destinationArn,
           if (iamRoleArn != null) 'iam_role_arn': iamRoleArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRumMetricsDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
