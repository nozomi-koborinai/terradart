// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_rum_metrics_destination`.
const Set<String> _awsRumMetricsDestinationSensitive = <String>{};

/// Rum Metrics enum for `destination`.
enum RumMetricsDestination implements TerraformEnum {
  cloudwatch('CloudWatch'),
  evidently('Evidently');

  const RumMetricsDestination(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rum_metrics_destination`.
final class AwsRumMetricsDestination extends Resource {
  static const String tfType = 'aws_rum_metrics_destination';

  AwsRumMetricsDestination({
    required super.localName,
    required TfArg<String> appMonitorName,
    required TfArg<RumMetricsDestination> destination,
    TfArg<String>? destinationArn,
    RefTo<AwsIamRole>? iamRoleArn,
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
           'destination_arn': ?destinationArn,
           'iam_role_arn': ?iamRoleArn?.encodeAs('arn'),
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRumMetricsDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRumMetricsDestination>`.
  RefTo<AwsRumMetricsDestination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_monitor_name` attribute.
  TfRef<String> get appMonitorName =>
      TfRef.attribute<String>(this, 'app_monitor_name');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
