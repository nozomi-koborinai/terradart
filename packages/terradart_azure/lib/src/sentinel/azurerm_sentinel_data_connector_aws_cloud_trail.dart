// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_aws_cloud_trail`.
const Set<String> _azurermSentinelDataConnectorAwsCloudTrailSensitive =
    <String>{};

/// Factory wrapper for `azurerm_sentinel_data_connector_aws_cloud_trail`.
final class AzurermSentinelDataConnectorAwsCloudTrail extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_aws_cloud_trail';

  AzurermSentinelDataConnectorAwsCloudTrail(
    super.localName, {
    required TfArg<String> awsRoleArn,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_role_arn': awsRoleArn,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorAwsCloudTrailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorAwsCloudTrail>`.
  RefTo<AzurermSentinelDataConnectorAwsCloudTrail> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_role_arn` attribute.
  TfRef<String> get awsRoleArn => TfRef.attribute<String>(this, 'aws_role_arn');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
