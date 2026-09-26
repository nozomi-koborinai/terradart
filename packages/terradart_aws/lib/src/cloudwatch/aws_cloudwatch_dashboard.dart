// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_dashboard`.
const Set<String> _awsCloudwatchDashboardSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_dashboard`.
final class AwsCloudwatchDashboard extends Resource {
  static const String tfType = 'aws_cloudwatch_dashboard';

  AwsCloudwatchDashboard({
    required super.localName,
    required TfArg<String> dashboardBody,
    required TfArg<String> dashboardName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dashboard_body': dashboardBody,
           'dashboard_name': dashboardName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchDashboardSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dashboard_arn` attribute.
  TfRef<String> get dashboardArn =>
      TfRef.attribute<String>(this, 'dashboard_arn');
}
