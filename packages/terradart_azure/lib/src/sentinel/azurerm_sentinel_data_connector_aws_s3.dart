// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_aws_s3`.
const Set<String> _azurermSentinelDataConnectorAwsS3Sensitive = <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_aws_s3`.
final class AzurermSentinelDataConnectorAwsS3 extends Resource {
  static const String tfType = 'azurerm_sentinel_data_connector_aws_s3';

  AzurermSentinelDataConnectorAwsS3(
    super.localName, {
    required TfArg<String> awsRoleArn,
    required TfArg<String> destinationTable,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    required TfArg<List<String>> sqsUrls,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_role_arn': awsRoleArn,
           'destination_table': destinationTable,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'sqs_urls': sqsUrls,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorAwsS3Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorAwsS3>`.
  RefTo<AzurermSentinelDataConnectorAwsS3> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_role_arn` attribute.
  TfRef<String> get awsRoleArn => TfRef.attribute<String>(this, 'aws_role_arn');

  /// Reference to `destination_table` attribute.
  TfRef<String> get destinationTable =>
      TfRef.attribute<String>(this, 'destination_table');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `sqs_urls` attribute.
  TfRef<List<String>> get sqsUrls =>
      TfRef.attribute<List<String>>(this, 'sqs_urls');
}
