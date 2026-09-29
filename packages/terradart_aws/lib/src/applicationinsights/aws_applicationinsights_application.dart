// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_applicationinsights_application`.
const Set<String> _awsApplicationinsightsApplicationSensitive = <String>{};

/// Applicationinsights Application Grouping enum for `grouping_type`.
enum ApplicationinsightsApplicationGroupingType implements TerraformEnum {
  accountBased('ACCOUNT_BASED');

  const ApplicationinsightsApplicationGroupingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_applicationinsights_application`.
final class AwsApplicationinsightsApplication extends Resource {
  static const String tfType = 'aws_applicationinsights_application';

  AwsApplicationinsightsApplication({
    required super.localName,
    TfArg<bool>? autoConfigEnabled,
    TfArg<bool>? autoCreate,
    TfArg<bool>? cweMonitorEnabled,
    TfArg<ApplicationinsightsApplicationGroupingType>? groupingType,
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
           'auto_config_enabled': ?autoConfigEnabled,
           'auto_create': ?autoCreate,
           'cwe_monitor_enabled': ?cweMonitorEnabled,
           'grouping_type': ?groupingType,
           'ops_center_enabled': ?opsCenterEnabled,
           'ops_item_sns_topic_arn': ?opsItemSnsTopicArn,
           'region': ?region,
           'resource_group_name': resourceGroupName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApplicationinsightsApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApplicationinsightsApplication>`.
  RefTo<AwsApplicationinsightsApplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
