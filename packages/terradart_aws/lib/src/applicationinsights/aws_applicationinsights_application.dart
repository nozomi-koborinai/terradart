// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_applicationinsights_application`.
const Set<String> _awsApplicationinsightsApplicationSensitive = <String>{};

/// Factory wrapper for `aws_applicationinsights_application`.
final class AwsApplicationinsightsApplication extends Resource {
  static const String tfType = 'aws_applicationinsights_application';

  AwsApplicationinsightsApplication({
    required super.localName,
    TfArg<bool>? autoConfigEnabled,
    TfArg<bool>? autoCreate,
    TfArg<bool>? cweMonitorEnabled,
    TfArg<String>? groupingType,
    TfArg<bool>? opsCenterEnabled,
    TfArg<String>? opsItemSnsTopicArn,
    TfArg<String>? region,
    required TfArg<String> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoConfigEnabled != null)
             'auto_config_enabled': autoConfigEnabled,
           if (autoCreate != null) 'auto_create': autoCreate,
           if (cweMonitorEnabled != null)
             'cwe_monitor_enabled': cweMonitorEnabled,
           if (groupingType != null) 'grouping_type': groupingType,
           if (opsCenterEnabled != null) 'ops_center_enabled': opsCenterEnabled,
           if (opsItemSnsTopicArn != null)
             'ops_item_sns_topic_arn': opsItemSnsTopicArn,
           if (region != null) 'region': region,
           'resource_group_name': resourceGroupName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApplicationinsightsApplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
