// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_feed`.
const Set<String> _googleChronicleFeedSensitive = <String>{
  'details.amazon_s3_settings.authentication.refresh_uri',
  'details.amazon_s3_v2_settings.authentication.access_key_secret_auth.secret_access_key',
  'details.amazon_sqs_settings.authentication.additional_s3_access_key_secret_auth.secret_access_key',
  'details.amazon_sqs_settings.authentication.sqs_access_key_secret_auth.secret_access_key',
  'details.amazon_sqs_v2_settings.authentication.sqs_v2_access_key_secret_auth.secret_access_key',
  'details.anomali_settings.authentication.secret',
  'details.aws_ec2_hosts_settings.authentication.secret',
  'details.aws_ec2_instances_settings.authentication.secret',
  'details.aws_ec2_vpcs_settings.authentication.secret',
  'details.aws_iam_settings.authentication.secret',
  'details.azure_ad_audit_settings.authentication.client_secret',
  'details.azure_ad_context_settings.authentication.client_secret',
  'details.azure_ad_settings.authentication.client_secret',
  'details.azure_blob_store_settings.authentication.sas_token',
  'details.azure_blob_store_settings.authentication.shared_key',
  'details.azure_blob_store_v2_settings.authentication.access_key',
  'details.azure_blob_store_v2_settings.authentication.sas_token',
  'details.azure_event_hub_settings.azure_sas_token',
  'details.azure_mdm_intune_settings.authentication.client_secret',
  'details.cloud_passage_settings.authentication.secret',
  'details.cortex_xdr_settings.authentication.header_key_values.value',
  'details.crowdstrike_alerts_settings.authentication.client_secret',
  'details.crowdstrike_detects_settings.authentication.client_secret',
  'details.dummy_log_type_settings.authentication.header_key_values.value',
  'details.duo_auth_settings.authentication.secret',
  'details.duo_user_context_settings.authentication.secret',
  'details.fox_it_stix_settings.authentication.secret',
  'details.fox_it_stix_settings.ssl.encoded_private_key',
  'details.fox_it_stix_settings.ssl.ssl_certificate',
  'details.google_cloud_identity_device_users_settings.authentication.rs_credentials.private_key',
  'details.google_cloud_identity_devices_settings.authentication.rs_credentials.private_key',
  'details.imperva_waf_settings.authentication.header_key_values.value',
  'details.mandiant_ioc_settings.authentication.header_key_values.value',
  'details.microsoft_graph_alert_settings.authentication.client_secret',
  'details.microsoft_security_center_alert_settings.authentication.client_secret',
  'details.mimecast_mail_settings.authentication.header_key_values.value',
  'details.mimecast_mail_v2_settings.auth_credentials.client_secret',
  'details.netskope_alert_settings.authentication.header_key_values.value',
  'details.netskope_alert_v2_settings.authentication.header_key_values.value',
  'details.office365_settings.authentication.client_secret',
  'details.okta_settings.authentication.header_key_values.value',
  'details.okta_user_context_settings.authentication.header_key_values.value',
  'details.pan_ioc_settings.authentication.header_key_values.value',
  'details.pan_prisma_cloud_settings.authentication.password',
  'details.proofpoint_mail_settings.authentication.secret',
  'details.proofpoint_on_demand_settings.authentication.header_key_values.value',
  'details.qualys_scan_settings.authentication.secret',
  'details.qualys_vm_settings.authentication.secret',
  'details.rapid7_insight_settings.authentication.header_key_values.value',
  'details.recorded_future_ioc_settings.authentication.header_key_values.value',
  'details.rh_isac_ioc_settings.authentication.client_secret',
  'details.salesforce_settings.oauth_jwt_credentials.rs_credentials.private_key',
  'details.sentinelone_alert_settings.authentication.header_key_values.value',
  'details.service_now_cmdb_settings.authentication.secret',
  'details.sftp_settings.authentication.password',
  'details.sftp_settings.authentication.private_key',
  'details.symantec_event_export_settings.authentication.client_secret',
  'details.thinkst_canary_settings.authentication.header_key_values.value',
  'details.threat_connect_ioc_settings.authentication.secret',
  'details.threat_connect_ioc_v3_settings.authentication.secret',
  'details.trellix_hx_alerts_settings.authentication.msso.password',
  'details.trellix_hx_alerts_settings.authentication.trellix_iam.client_secret',
  'details.trellix_hx_bulk_acqs_settings.authentication.msso.password',
  'details.trellix_hx_bulk_acqs_settings.authentication.trellix_iam.client_secret',
  'details.trellix_hx_hosts_settings.authentication.msso.password',
  'details.trellix_hx_hosts_settings.authentication.trellix_iam.client_secret',
  'details.workday_settings.authentication.client_secret',
  'details.workday_settings.authentication.secret',
  'details.workspace_activity_settings.authentication.rs_credentials.private_key',
  'details.workspace_alerts_settings.authentication.rs_credentials.private_key',
  'details.workspace_chrome_os_settings.authentication.rs_credentials.private_key',
  'details.workspace_groups_settings.authentication.rs_credentials.private_key',
  'details.workspace_mobile_settings.authentication.rs_credentials.private_key',
  'details.workspace_privileges_settings.authentication.rs_credentials.private_key',
  'details.workspace_users_settings.authentication.rs_credentials.private_key',
  'secret',
};

/// Typed helper for the `details` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetails {
  const ChronicleFeedDetails({
    this.assetNamespace,
    this.feedSourceType,
    this.labels,
    required this.logType,
    required this.source,
  });

  final TfArg<String>? assetNamespace;

  final TfArg<ChronicleFeedSourceType>? feedSourceType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> logType;

  final ChronicleFeedSource source;

  Map<String, Object?> encode() => {
    'asset_namespace': ?assetNamespace?.toTfJson(),
    'feed_source_type': ?feedSourceType?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'log_type': logType.toTfJson(),
    ...source.encode(),
  };
}

/// Exactly one of `anomali_settings`, `azure_ad_context_settings`, `cloud_passage_settings`, `cortex_xdr_settings`, `duo_auth_settings`, `duo_user_context_settings`, `microsoft_graph_alert_settings`, `microsoft_security_center_alert_settings`, `mimecast_mail_settings`, `office365_settings`, `proofpoint_mail_settings`, `recorded_future_ioc_settings`, `workday_settings`, `pan_ioc_settings`, `okta_settings`, `okta_user_context_settings`, `fox_it_stix_settings`, `threat_connect_ioc_settings`, `service_now_cmdb_settings`, `imperva_waf_settings`, `thinkst_canary_settings`, `rh_isac_ioc_settings`, `rapid7_insight_settings`, `salesforce_settings`, `netskope_alert_settings`, `azure_mdm_intune_settings`, `azure_ad_settings`, `proofpoint_on_demand_settings`, `workspace_users_settings`, `workspace_activity_settings`, `workspace_alerts_settings`, `workspace_privileges_settings`, `workspace_mobile_settings`, `workspace_chrome_os_settings`, `workspace_groups_settings`, `azure_ad_audit_settings`, `symantec_event_export_settings`, `qualys_vm_settings`, `pan_prisma_cloud_settings`, `gcs_settings`, `http_settings`, `sftp_settings`, `amazon_s3_settings`, `azure_blob_store_settings`, `amazon_sqs_settings`, `google_cloud_identity_devices_settings`, `google_cloud_identity_device_users_settings`, `crowdstrike_detects_settings`, `mandiant_ioc_settings`, `sentinelone_alert_settings`, `qualys_scan_settings`, `pubsub_settings`, `amazon_kinesis_firehose_settings`, `webhook_settings`, `dummy_log_type_settings`, `https_push_google_cloud_pubsub_settings`, `https_push_amazon_kinesis_firehose_settings`, `https_push_webhook_settings`, `aws_ec2_hosts_settings`, `aws_ec2_instances_settings`, `aws_ec2_vpcs_settings`, `aws_iam_settings`, `netskope_alert_v2_settings`, `gcs_v2_settings`, `amazon_s3_v2_settings`, `amazon_sqs_v2_settings`, `azure_event_hub_settings`, `trellix_hx_hosts_settings`, `azure_blob_store_v2_settings`, `trellix_hx_alerts_settings`, `google_cloud_storage_event_driven_settings`, `crowdstrike_alerts_settings`, `trellix_hx_bulk_acqs_settings`, `mimecast_mail_v2_settings`, `threat_connect_ioc_v3_settings` on the `details` block of `google_chronicle_feed`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.anomaliSettings(...)`.
sealed class ChronicleFeedSource {
  const ChronicleFeedSource();

  /// Sets `anomali_settings`.
  const factory ChronicleFeedSource.anomaliSettings(
    ChronicleFeedAnomaliSettings anomaliSettings,
  ) = ChronicleFeedSourceAnomaliSettings;

  /// Sets `azure_ad_context_settings`.
  const factory ChronicleFeedSource.azureAdContextSettings(
    ChronicleFeedAzureAdContextSettings azureAdContextSettings,
  ) = ChronicleFeedSourceAzureAdContextSettings;

  /// Sets `cloud_passage_settings`.
  const factory ChronicleFeedSource.cloudPassageSettings(
    ChronicleFeedCloudPassageSettings cloudPassageSettings,
  ) = ChronicleFeedSourceCloudPassageSettings;

  /// Sets `cortex_xdr_settings`.
  const factory ChronicleFeedSource.cortexXdrSettings(
    ChronicleFeedCortexXdrSettings cortexXdrSettings,
  ) = ChronicleFeedSourceCortexXdrSettings;

  /// Sets `duo_auth_settings`.
  const factory ChronicleFeedSource.duoAuthSettings(
    ChronicleFeedDuoAuthSettings duoAuthSettings,
  ) = ChronicleFeedSourceDuoAuthSettings;

  /// Sets `duo_user_context_settings`.
  const factory ChronicleFeedSource.duoUserContextSettings(
    ChronicleFeedDuoUserContextSettings duoUserContextSettings,
  ) = ChronicleFeedSourceDuoUserContextSettings;

  /// Sets `microsoft_graph_alert_settings`.
  const factory ChronicleFeedSource.microsoftGraphAlertSettings(
    ChronicleFeedMicrosoftGraphAlertSettings microsoftGraphAlertSettings,
  ) = ChronicleFeedSourceMicrosoftGraphAlertSettings;

  /// Sets `microsoft_security_center_alert_settings`.
  const factory ChronicleFeedSource.microsoftSecurityCenterAlertSettings(
    ChronicleFeedMicrosoftSecurityCenterAlertSettings
    microsoftSecurityCenterAlertSettings,
  ) = ChronicleFeedSourceMicrosoftSecurityCenterAlertSettings;

  /// Sets `mimecast_mail_settings`.
  const factory ChronicleFeedSource.mimecastMailSettings(
    ChronicleFeedMimecastMailSettings mimecastMailSettings,
  ) = ChronicleFeedSourceMimecastMailSettings;

  /// Sets `office365_settings`.
  const factory ChronicleFeedSource.office365Settings(
    ChronicleFeedOffice365Settings office365Settings,
  ) = ChronicleFeedSourceOffice365Settings;

  /// Sets `proofpoint_mail_settings`.
  const factory ChronicleFeedSource.proofpointMailSettings(
    ChronicleFeedProofpointMailSettings proofpointMailSettings,
  ) = ChronicleFeedSourceProofpointMailSettings;

  /// Sets `recorded_future_ioc_settings`.
  const factory ChronicleFeedSource.recordedFutureIocSettings(
    ChronicleFeedRecordedFutureIocSettings recordedFutureIocSettings,
  ) = ChronicleFeedSourceRecordedFutureIocSettings;

  /// Sets `workday_settings`.
  const factory ChronicleFeedSource.workdaySettings(
    ChronicleFeedWorkdaySettings workdaySettings,
  ) = ChronicleFeedSourceWorkdaySettings;

  /// Sets `pan_ioc_settings`.
  const factory ChronicleFeedSource.panIocSettings(
    ChronicleFeedPanIocSettings panIocSettings,
  ) = ChronicleFeedSourcePanIocSettings;

  /// Sets `okta_settings`.
  const factory ChronicleFeedSource.oktaSettings(
    ChronicleFeedOktaSettings oktaSettings,
  ) = ChronicleFeedSourceOktaSettings;

  /// Sets `okta_user_context_settings`.
  const factory ChronicleFeedSource.oktaUserContextSettings(
    ChronicleFeedOktaUserContextSettings oktaUserContextSettings,
  ) = ChronicleFeedSourceOktaUserContextSettings;

  /// Sets `fox_it_stix_settings`.
  const factory ChronicleFeedSource.foxItStixSettings(
    ChronicleFeedFoxItStixSettings foxItStixSettings,
  ) = ChronicleFeedSourceFoxItStixSettings;

  /// Sets `threat_connect_ioc_settings`.
  const factory ChronicleFeedSource.threatConnectIocSettings(
    ChronicleFeedThreatConnectIocSettings threatConnectIocSettings,
  ) = ChronicleFeedSourceThreatConnectIocSettings;

  /// Sets `service_now_cmdb_settings`.
  const factory ChronicleFeedSource.serviceNowCmdbSettings(
    ChronicleFeedServiceNowCmdbSettings serviceNowCmdbSettings,
  ) = ChronicleFeedSourceServiceNowCmdbSettings;

  /// Sets `imperva_waf_settings`.
  const factory ChronicleFeedSource.impervaWafSettings(
    ChronicleFeedImpervaWafSettings impervaWafSettings,
  ) = ChronicleFeedSourceImpervaWafSettings;

  /// Sets `thinkst_canary_settings`.
  const factory ChronicleFeedSource.thinkstCanarySettings(
    ChronicleFeedThinkstCanarySettings thinkstCanarySettings,
  ) = ChronicleFeedSourceThinkstCanarySettings;

  /// Sets `rh_isac_ioc_settings`.
  const factory ChronicleFeedSource.rhIsacIocSettings(
    ChronicleFeedRhIsacIocSettings rhIsacIocSettings,
  ) = ChronicleFeedSourceRhIsacIocSettings;

  /// Sets `rapid7_insight_settings`.
  const factory ChronicleFeedSource.rapid7InsightSettings(
    ChronicleFeedRapid7InsightSettings rapid7InsightSettings,
  ) = ChronicleFeedSourceRapid7InsightSettings;

  /// Sets `salesforce_settings`.
  const factory ChronicleFeedSource.salesforceSettings(
    ChronicleFeedSalesforceSettings salesforceSettings,
  ) = ChronicleFeedSourceSalesforceSettings;

  /// Sets `netskope_alert_settings`.
  const factory ChronicleFeedSource.netskopeAlertSettings(
    ChronicleFeedNetskopeAlertSettings netskopeAlertSettings,
  ) = ChronicleFeedSourceNetskopeAlertSettings;

  /// Sets `azure_mdm_intune_settings`.
  const factory ChronicleFeedSource.azureMdmIntuneSettings(
    ChronicleFeedAzureMdmIntuneSettings azureMdmIntuneSettings,
  ) = ChronicleFeedSourceAzureMdmIntuneSettings;

  /// Sets `azure_ad_settings`.
  const factory ChronicleFeedSource.azureAdSettings(
    ChronicleFeedAzureAdSettings azureAdSettings,
  ) = ChronicleFeedSourceAzureAdSettings;

  /// Sets `proofpoint_on_demand_settings`.
  const factory ChronicleFeedSource.proofpointOnDemandSettings(
    ChronicleFeedProofpointOnDemandSettings proofpointOnDemandSettings,
  ) = ChronicleFeedSourceProofpointOnDemandSettings;

  /// Sets `workspace_users_settings`.
  const factory ChronicleFeedSource.workspaceUsersSettings(
    ChronicleFeedWorkspaceUsersSettings workspaceUsersSettings,
  ) = ChronicleFeedSourceWorkspaceUsersSettings;

  /// Sets `workspace_activity_settings`.
  const factory ChronicleFeedSource.workspaceActivitySettings(
    ChronicleFeedWorkspaceActivitySettings workspaceActivitySettings,
  ) = ChronicleFeedSourceWorkspaceActivitySettings;

  /// Sets `workspace_alerts_settings`.
  const factory ChronicleFeedSource.workspaceAlertsSettings(
    ChronicleFeedWorkspaceAlertsSettings workspaceAlertsSettings,
  ) = ChronicleFeedSourceWorkspaceAlertsSettings;

  /// Sets `workspace_privileges_settings`.
  const factory ChronicleFeedSource.workspacePrivilegesSettings(
    ChronicleFeedWorkspacePrivilegesSettings workspacePrivilegesSettings,
  ) = ChronicleFeedSourceWorkspacePrivilegesSettings;

  /// Sets `workspace_mobile_settings`.
  const factory ChronicleFeedSource.workspaceMobileSettings(
    ChronicleFeedWorkspaceMobileSettings workspaceMobileSettings,
  ) = ChronicleFeedSourceWorkspaceMobileSettings;

  /// Sets `workspace_chrome_os_settings`.
  const factory ChronicleFeedSource.workspaceChromeOsSettings(
    ChronicleFeedWorkspaceChromeOsSettings workspaceChromeOsSettings,
  ) = ChronicleFeedSourceWorkspaceChromeOsSettings;

  /// Sets `workspace_groups_settings`.
  const factory ChronicleFeedSource.workspaceGroupsSettings(
    ChronicleFeedWorkspaceGroupsSettings workspaceGroupsSettings,
  ) = ChronicleFeedSourceWorkspaceGroupsSettings;

  /// Sets `azure_ad_audit_settings`.
  const factory ChronicleFeedSource.azureAdAuditSettings(
    ChronicleFeedAzureAdAuditSettings azureAdAuditSettings,
  ) = ChronicleFeedSourceAzureAdAuditSettings;

  /// Sets `symantec_event_export_settings`.
  const factory ChronicleFeedSource.symantecEventExportSettings(
    ChronicleFeedSymantecEventExportSettings symantecEventExportSettings,
  ) = ChronicleFeedSourceSymantecEventExportSettings;

  /// Sets `qualys_vm_settings`.
  const factory ChronicleFeedSource.qualysVmSettings(
    ChronicleFeedQualysVmSettings qualysVmSettings,
  ) = ChronicleFeedSourceQualysVmSettings;

  /// Sets `pan_prisma_cloud_settings`.
  const factory ChronicleFeedSource.panPrismaCloudSettings(
    ChronicleFeedPanPrismaCloudSettings panPrismaCloudSettings,
  ) = ChronicleFeedSourcePanPrismaCloudSettings;

  /// Sets `gcs_settings`.
  const factory ChronicleFeedSource.gcsSettings(
    ChronicleFeedGcsSettings gcsSettings,
  ) = ChronicleFeedSourceGcsSettings;

  /// Sets `http_settings`.
  const factory ChronicleFeedSource.httpSettings(
    ChronicleFeedHttpSettings httpSettings,
  ) = ChronicleFeedSourceHttpSettings;

  /// Sets `sftp_settings`.
  const factory ChronicleFeedSource.sftpSettings(
    ChronicleFeedSftpSettings sftpSettings,
  ) = ChronicleFeedSourceSftpSettings;

  /// Sets `amazon_s3_settings`.
  const factory ChronicleFeedSource.amazonS3Settings(
    ChronicleFeedAmazonS3Settings amazonS3Settings,
  ) = ChronicleFeedSourceAmazonS3Settings;

  /// Sets `azure_blob_store_settings`.
  const factory ChronicleFeedSource.azureBlobStoreSettings(
    ChronicleFeedAzureBlobStoreSettings azureBlobStoreSettings,
  ) = ChronicleFeedSourceAzureBlobStoreSettings;

  /// Sets `amazon_sqs_settings`.
  const factory ChronicleFeedSource.amazonSqsSettings(
    ChronicleFeedAmazonSqsSettings amazonSqsSettings,
  ) = ChronicleFeedSourceAmazonSqsSettings;

  /// Sets `google_cloud_identity_devices_settings`.
  const factory ChronicleFeedSource.googleCloudIdentityDevicesSettings(
    ChronicleFeedGoogleCloudIdentityDevicesSettings
    googleCloudIdentityDevicesSettings,
  ) = ChronicleFeedSourceGoogleCloudIdentityDevicesSettings;

  /// Sets `google_cloud_identity_device_users_settings`.
  const factory ChronicleFeedSource.googleCloudIdentityDeviceUsersSettings(
    ChronicleFeedGoogleCloudIdentityDeviceUsersSettings
    googleCloudIdentityDeviceUsersSettings,
  ) = ChronicleFeedSourceGoogleCloudIdentityDeviceUsersSettings;

  /// Sets `crowdstrike_detects_settings`.
  const factory ChronicleFeedSource.crowdstrikeDetectsSettings(
    ChronicleFeedCrowdstrikeDetectsSettings crowdstrikeDetectsSettings,
  ) = ChronicleFeedSourceCrowdstrikeDetectsSettings;

  /// Sets `mandiant_ioc_settings`.
  const factory ChronicleFeedSource.mandiantIocSettings(
    ChronicleFeedMandiantIocSettings mandiantIocSettings,
  ) = ChronicleFeedSourceMandiantIocSettings;

  /// Sets `sentinelone_alert_settings`.
  const factory ChronicleFeedSource.sentineloneAlertSettings(
    ChronicleFeedSentineloneAlertSettings sentineloneAlertSettings,
  ) = ChronicleFeedSourceSentineloneAlertSettings;

  /// Sets `qualys_scan_settings`.
  const factory ChronicleFeedSource.qualysScanSettings(
    ChronicleFeedQualysScanSettings qualysScanSettings,
  ) = ChronicleFeedSourceQualysScanSettings;

  /// Sets `pubsub_settings`.
  const factory ChronicleFeedSource.pubsubSettings(
    ChronicleFeedPubsubSettings pubsubSettings,
  ) = ChronicleFeedSourcePubsubSettings;

  /// Sets `amazon_kinesis_firehose_settings`.
  const factory ChronicleFeedSource.amazonKinesisFirehoseSettings(
    ChronicleFeedAmazonKinesisFirehoseSettings amazonKinesisFirehoseSettings,
  ) = ChronicleFeedSourceAmazonKinesisFirehoseSettings;

  /// Sets `webhook_settings`.
  const factory ChronicleFeedSource.webhookSettings(
    ChronicleFeedWebhookSettings webhookSettings,
  ) = ChronicleFeedSourceWebhookSettings;

  /// Sets `dummy_log_type_settings`.
  const factory ChronicleFeedSource.dummyLogTypeSettings(
    ChronicleFeedDummyLogTypeSettings dummyLogTypeSettings,
  ) = ChronicleFeedSourceDummyLogTypeSettings;

  /// Sets `https_push_google_cloud_pubsub_settings`.
  const factory ChronicleFeedSource.httpsPushGoogleCloudPubsubSettings(
    ChronicleFeedHttpsPushGoogleCloudPubsubSettings
    httpsPushGoogleCloudPubsubSettings,
  ) = ChronicleFeedSourceHttpsPushGoogleCloudPubsubSettings;

  /// Sets `https_push_amazon_kinesis_firehose_settings`.
  const factory ChronicleFeedSource.httpsPushAmazonKinesisFirehoseSettings(
    ChronicleFeedHttpsPushAmazonKinesisFirehoseSettings
    httpsPushAmazonKinesisFirehoseSettings,
  ) = ChronicleFeedSourceHttpsPushAmazonKinesisFirehoseSettings;

  /// Sets `https_push_webhook_settings`.
  const factory ChronicleFeedSource.httpsPushWebhookSettings(
    ChronicleFeedHttpsPushWebhookSettings httpsPushWebhookSettings,
  ) = ChronicleFeedSourceHttpsPushWebhookSettings;

  /// Sets `aws_ec2_hosts_settings`.
  const factory ChronicleFeedSource.awsEc2HostsSettings(
    ChronicleFeedAwsEc2HostsSettings awsEc2HostsSettings,
  ) = ChronicleFeedSourceAwsEc2HostsSettings;

  /// Sets `aws_ec2_instances_settings`.
  const factory ChronicleFeedSource.awsEc2InstancesSettings(
    ChronicleFeedAwsEc2InstancesSettings awsEc2InstancesSettings,
  ) = ChronicleFeedSourceAwsEc2InstancesSettings;

  /// Sets `aws_ec2_vpcs_settings`.
  const factory ChronicleFeedSource.awsEc2VpcsSettings(
    ChronicleFeedAwsEc2VpcsSettings awsEc2VpcsSettings,
  ) = ChronicleFeedSourceAwsEc2VpcsSettings;

  /// Sets `aws_iam_settings`.
  const factory ChronicleFeedSource.awsIamSettings(
    ChronicleFeedAwsIamSettings awsIamSettings,
  ) = ChronicleFeedSourceAwsIamSettings;

  /// Sets `netskope_alert_v2_settings`.
  const factory ChronicleFeedSource.netskopeAlertV2Settings(
    ChronicleFeedNetskopeAlertV2Settings netskopeAlertV2Settings,
  ) = ChronicleFeedSourceNetskopeAlertV2Settings;

  /// Sets `gcs_v2_settings`.
  const factory ChronicleFeedSource.gcsV2Settings(
    ChronicleFeedGcsV2Settings gcsV2Settings,
  ) = ChronicleFeedSourceGcsV2Settings;

  /// Sets `amazon_s3_v2_settings`.
  const factory ChronicleFeedSource.amazonS3V2Settings(
    ChronicleFeedAmazonS3V2Settings amazonS3V2Settings,
  ) = ChronicleFeedSourceAmazonS3V2Settings;

  /// Sets `amazon_sqs_v2_settings`.
  const factory ChronicleFeedSource.amazonSqsV2Settings(
    ChronicleFeedAmazonSqsV2Settings amazonSqsV2Settings,
  ) = ChronicleFeedSourceAmazonSqsV2Settings;

  /// Sets `azure_event_hub_settings`.
  const factory ChronicleFeedSource.azureEventHubSettings(
    ChronicleFeedAzureEventHubSettings azureEventHubSettings,
  ) = ChronicleFeedSourceAzureEventHubSettings;

  /// Sets `trellix_hx_hosts_settings`.
  const factory ChronicleFeedSource.trellixHxHostsSettings(
    ChronicleFeedTrellixHxHostsSettings trellixHxHostsSettings,
  ) = ChronicleFeedSourceTrellixHxHostsSettings;

  /// Sets `azure_blob_store_v2_settings`.
  const factory ChronicleFeedSource.azureBlobStoreV2Settings(
    ChronicleFeedAzureBlobStoreV2Settings azureBlobStoreV2Settings,
  ) = ChronicleFeedSourceAzureBlobStoreV2Settings;

  /// Sets `trellix_hx_alerts_settings`.
  const factory ChronicleFeedSource.trellixHxAlertsSettings(
    ChronicleFeedTrellixHxAlertsSettings trellixHxAlertsSettings,
  ) = ChronicleFeedSourceTrellixHxAlertsSettings;

  /// Sets `google_cloud_storage_event_driven_settings`.
  const factory ChronicleFeedSource.googleCloudStorageEventDrivenSettings(
    ChronicleFeedGoogleCloudStorageEventDrivenSettings
    googleCloudStorageEventDrivenSettings,
  ) = ChronicleFeedSourceGoogleCloudStorageEventDrivenSettings;

  /// Sets `crowdstrike_alerts_settings`.
  const factory ChronicleFeedSource.crowdstrikeAlertsSettings(
    ChronicleFeedCrowdstrikeAlertsSettings crowdstrikeAlertsSettings,
  ) = ChronicleFeedSourceCrowdstrikeAlertsSettings;

  /// Sets `trellix_hx_bulk_acqs_settings`.
  const factory ChronicleFeedSource.trellixHxBulkAcqsSettings(
    ChronicleFeedTrellixHxBulkAcqsSettings trellixHxBulkAcqsSettings,
  ) = ChronicleFeedSourceTrellixHxBulkAcqsSettings;

  /// Sets `mimecast_mail_v2_settings`.
  const factory ChronicleFeedSource.mimecastMailV2Settings(
    ChronicleFeedMimecastMailV2Settings mimecastMailV2Settings,
  ) = ChronicleFeedSourceMimecastMailV2Settings;

  /// Sets `threat_connect_ioc_v3_settings`.
  const factory ChronicleFeedSource.threatConnectIocV3Settings(
    ChronicleFeedThreatConnectIocV3Settings threatConnectIocV3Settings,
  ) = ChronicleFeedSourceThreatConnectIocV3Settings;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ChronicleFeedSource.anomaliSettings] choice: sets `anomali_settings`.
final class ChronicleFeedSourceAnomaliSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAnomaliSettings(this.anomaliSettings);

  final ChronicleFeedAnomaliSettings anomaliSettings;

  @override
  String get blockKey => 'anomali_settings';

  @override
  Map<String, Object?> encode() => {
    'anomali_settings': anomaliSettings.encode(),
  };
}

/// The [ChronicleFeedSource.azureAdContextSettings] choice: sets `azure_ad_context_settings`.
final class ChronicleFeedSourceAzureAdContextSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureAdContextSettings(this.azureAdContextSettings);

  final ChronicleFeedAzureAdContextSettings azureAdContextSettings;

  @override
  String get blockKey => 'azure_ad_context_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_context_settings': azureAdContextSettings.encode(),
  };
}

/// The [ChronicleFeedSource.cloudPassageSettings] choice: sets `cloud_passage_settings`.
final class ChronicleFeedSourceCloudPassageSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceCloudPassageSettings(this.cloudPassageSettings);

  final ChronicleFeedCloudPassageSettings cloudPassageSettings;

  @override
  String get blockKey => 'cloud_passage_settings';

  @override
  Map<String, Object?> encode() => {
    'cloud_passage_settings': cloudPassageSettings.encode(),
  };
}

/// The [ChronicleFeedSource.cortexXdrSettings] choice: sets `cortex_xdr_settings`.
final class ChronicleFeedSourceCortexXdrSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceCortexXdrSettings(this.cortexXdrSettings);

  final ChronicleFeedCortexXdrSettings cortexXdrSettings;

  @override
  String get blockKey => 'cortex_xdr_settings';

  @override
  Map<String, Object?> encode() => {
    'cortex_xdr_settings': cortexXdrSettings.encode(),
  };
}

/// The [ChronicleFeedSource.duoAuthSettings] choice: sets `duo_auth_settings`.
final class ChronicleFeedSourceDuoAuthSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceDuoAuthSettings(this.duoAuthSettings);

  final ChronicleFeedDuoAuthSettings duoAuthSettings;

  @override
  String get blockKey => 'duo_auth_settings';

  @override
  Map<String, Object?> encode() => {
    'duo_auth_settings': duoAuthSettings.encode(),
  };
}

/// The [ChronicleFeedSource.duoUserContextSettings] choice: sets `duo_user_context_settings`.
final class ChronicleFeedSourceDuoUserContextSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceDuoUserContextSettings(this.duoUserContextSettings);

  final ChronicleFeedDuoUserContextSettings duoUserContextSettings;

  @override
  String get blockKey => 'duo_user_context_settings';

  @override
  Map<String, Object?> encode() => {
    'duo_user_context_settings': duoUserContextSettings.encode(),
  };
}

/// The [ChronicleFeedSource.microsoftGraphAlertSettings] choice: sets `microsoft_graph_alert_settings`.
final class ChronicleFeedSourceMicrosoftGraphAlertSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceMicrosoftGraphAlertSettings(
    this.microsoftGraphAlertSettings,
  );

  final ChronicleFeedMicrosoftGraphAlertSettings microsoftGraphAlertSettings;

  @override
  String get blockKey => 'microsoft_graph_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'microsoft_graph_alert_settings': microsoftGraphAlertSettings.encode(),
  };
}

/// The [ChronicleFeedSource.microsoftSecurityCenterAlertSettings] choice: sets `microsoft_security_center_alert_settings`.
final class ChronicleFeedSourceMicrosoftSecurityCenterAlertSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceMicrosoftSecurityCenterAlertSettings(
    this.microsoftSecurityCenterAlertSettings,
  );

  final ChronicleFeedMicrosoftSecurityCenterAlertSettings
  microsoftSecurityCenterAlertSettings;

  @override
  String get blockKey => 'microsoft_security_center_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'microsoft_security_center_alert_settings':
        microsoftSecurityCenterAlertSettings.encode(),
  };
}

/// The [ChronicleFeedSource.mimecastMailSettings] choice: sets `mimecast_mail_settings`.
final class ChronicleFeedSourceMimecastMailSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceMimecastMailSettings(this.mimecastMailSettings);

  final ChronicleFeedMimecastMailSettings mimecastMailSettings;

  @override
  String get blockKey => 'mimecast_mail_settings';

  @override
  Map<String, Object?> encode() => {
    'mimecast_mail_settings': mimecastMailSettings.encode(),
  };
}

/// The [ChronicleFeedSource.office365Settings] choice: sets `office365_settings`.
final class ChronicleFeedSourceOffice365Settings extends ChronicleFeedSource {
  const ChronicleFeedSourceOffice365Settings(this.office365Settings);

  final ChronicleFeedOffice365Settings office365Settings;

  @override
  String get blockKey => 'office365_settings';

  @override
  Map<String, Object?> encode() => {
    'office365_settings': office365Settings.encode(),
  };
}

/// The [ChronicleFeedSource.proofpointMailSettings] choice: sets `proofpoint_mail_settings`.
final class ChronicleFeedSourceProofpointMailSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceProofpointMailSettings(this.proofpointMailSettings);

  final ChronicleFeedProofpointMailSettings proofpointMailSettings;

  @override
  String get blockKey => 'proofpoint_mail_settings';

  @override
  Map<String, Object?> encode() => {
    'proofpoint_mail_settings': proofpointMailSettings.encode(),
  };
}

/// The [ChronicleFeedSource.recordedFutureIocSettings] choice: sets `recorded_future_ioc_settings`.
final class ChronicleFeedSourceRecordedFutureIocSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceRecordedFutureIocSettings(
    this.recordedFutureIocSettings,
  );

  final ChronicleFeedRecordedFutureIocSettings recordedFutureIocSettings;

  @override
  String get blockKey => 'recorded_future_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'recorded_future_ioc_settings': recordedFutureIocSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workdaySettings] choice: sets `workday_settings`.
final class ChronicleFeedSourceWorkdaySettings extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkdaySettings(this.workdaySettings);

  final ChronicleFeedWorkdaySettings workdaySettings;

  @override
  String get blockKey => 'workday_settings';

  @override
  Map<String, Object?> encode() => {
    'workday_settings': workdaySettings.encode(),
  };
}

/// The [ChronicleFeedSource.panIocSettings] choice: sets `pan_ioc_settings`.
final class ChronicleFeedSourcePanIocSettings extends ChronicleFeedSource {
  const ChronicleFeedSourcePanIocSettings(this.panIocSettings);

  final ChronicleFeedPanIocSettings panIocSettings;

  @override
  String get blockKey => 'pan_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'pan_ioc_settings': panIocSettings.encode(),
  };
}

/// The [ChronicleFeedSource.oktaSettings] choice: sets `okta_settings`.
final class ChronicleFeedSourceOktaSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceOktaSettings(this.oktaSettings);

  final ChronicleFeedOktaSettings oktaSettings;

  @override
  String get blockKey => 'okta_settings';

  @override
  Map<String, Object?> encode() => {'okta_settings': oktaSettings.encode()};
}

/// The [ChronicleFeedSource.oktaUserContextSettings] choice: sets `okta_user_context_settings`.
final class ChronicleFeedSourceOktaUserContextSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceOktaUserContextSettings(
    this.oktaUserContextSettings,
  );

  final ChronicleFeedOktaUserContextSettings oktaUserContextSettings;

  @override
  String get blockKey => 'okta_user_context_settings';

  @override
  Map<String, Object?> encode() => {
    'okta_user_context_settings': oktaUserContextSettings.encode(),
  };
}

/// The [ChronicleFeedSource.foxItStixSettings] choice: sets `fox_it_stix_settings`.
final class ChronicleFeedSourceFoxItStixSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceFoxItStixSettings(this.foxItStixSettings);

  final ChronicleFeedFoxItStixSettings foxItStixSettings;

  @override
  String get blockKey => 'fox_it_stix_settings';

  @override
  Map<String, Object?> encode() => {
    'fox_it_stix_settings': foxItStixSettings.encode(),
  };
}

/// The [ChronicleFeedSource.threatConnectIocSettings] choice: sets `threat_connect_ioc_settings`.
final class ChronicleFeedSourceThreatConnectIocSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceThreatConnectIocSettings(
    this.threatConnectIocSettings,
  );

  final ChronicleFeedThreatConnectIocSettings threatConnectIocSettings;

  @override
  String get blockKey => 'threat_connect_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'threat_connect_ioc_settings': threatConnectIocSettings.encode(),
  };
}

/// The [ChronicleFeedSource.serviceNowCmdbSettings] choice: sets `service_now_cmdb_settings`.
final class ChronicleFeedSourceServiceNowCmdbSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceServiceNowCmdbSettings(this.serviceNowCmdbSettings);

  final ChronicleFeedServiceNowCmdbSettings serviceNowCmdbSettings;

  @override
  String get blockKey => 'service_now_cmdb_settings';

  @override
  Map<String, Object?> encode() => {
    'service_now_cmdb_settings': serviceNowCmdbSettings.encode(),
  };
}

/// The [ChronicleFeedSource.impervaWafSettings] choice: sets `imperva_waf_settings`.
final class ChronicleFeedSourceImpervaWafSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceImpervaWafSettings(this.impervaWafSettings);

  final ChronicleFeedImpervaWafSettings impervaWafSettings;

  @override
  String get blockKey => 'imperva_waf_settings';

  @override
  Map<String, Object?> encode() => {
    'imperva_waf_settings': impervaWafSettings.encode(),
  };
}

/// The [ChronicleFeedSource.thinkstCanarySettings] choice: sets `thinkst_canary_settings`.
final class ChronicleFeedSourceThinkstCanarySettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceThinkstCanarySettings(this.thinkstCanarySettings);

  final ChronicleFeedThinkstCanarySettings thinkstCanarySettings;

  @override
  String get blockKey => 'thinkst_canary_settings';

  @override
  Map<String, Object?> encode() => {
    'thinkst_canary_settings': thinkstCanarySettings.encode(),
  };
}

/// The [ChronicleFeedSource.rhIsacIocSettings] choice: sets `rh_isac_ioc_settings`.
final class ChronicleFeedSourceRhIsacIocSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceRhIsacIocSettings(this.rhIsacIocSettings);

  final ChronicleFeedRhIsacIocSettings rhIsacIocSettings;

  @override
  String get blockKey => 'rh_isac_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'rh_isac_ioc_settings': rhIsacIocSettings.encode(),
  };
}

/// The [ChronicleFeedSource.rapid7InsightSettings] choice: sets `rapid7_insight_settings`.
final class ChronicleFeedSourceRapid7InsightSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceRapid7InsightSettings(this.rapid7InsightSettings);

  final ChronicleFeedRapid7InsightSettings rapid7InsightSettings;

  @override
  String get blockKey => 'rapid7_insight_settings';

  @override
  Map<String, Object?> encode() => {
    'rapid7_insight_settings': rapid7InsightSettings.encode(),
  };
}

/// The [ChronicleFeedSource.salesforceSettings] choice: sets `salesforce_settings`.
final class ChronicleFeedSourceSalesforceSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceSalesforceSettings(this.salesforceSettings);

  final ChronicleFeedSalesforceSettings salesforceSettings;

  @override
  String get blockKey => 'salesforce_settings';

  @override
  Map<String, Object?> encode() => {
    'salesforce_settings': salesforceSettings.encode(),
  };
}

/// The [ChronicleFeedSource.netskopeAlertSettings] choice: sets `netskope_alert_settings`.
final class ChronicleFeedSourceNetskopeAlertSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceNetskopeAlertSettings(this.netskopeAlertSettings);

  final ChronicleFeedNetskopeAlertSettings netskopeAlertSettings;

  @override
  String get blockKey => 'netskope_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'netskope_alert_settings': netskopeAlertSettings.encode(),
  };
}

/// The [ChronicleFeedSource.azureMdmIntuneSettings] choice: sets `azure_mdm_intune_settings`.
final class ChronicleFeedSourceAzureMdmIntuneSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureMdmIntuneSettings(this.azureMdmIntuneSettings);

  final ChronicleFeedAzureMdmIntuneSettings azureMdmIntuneSettings;

  @override
  String get blockKey => 'azure_mdm_intune_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_mdm_intune_settings': azureMdmIntuneSettings.encode(),
  };
}

/// The [ChronicleFeedSource.azureAdSettings] choice: sets `azure_ad_settings`.
final class ChronicleFeedSourceAzureAdSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureAdSettings(this.azureAdSettings);

  final ChronicleFeedAzureAdSettings azureAdSettings;

  @override
  String get blockKey => 'azure_ad_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_settings': azureAdSettings.encode(),
  };
}

/// The [ChronicleFeedSource.proofpointOnDemandSettings] choice: sets `proofpoint_on_demand_settings`.
final class ChronicleFeedSourceProofpointOnDemandSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceProofpointOnDemandSettings(
    this.proofpointOnDemandSettings,
  );

  final ChronicleFeedProofpointOnDemandSettings proofpointOnDemandSettings;

  @override
  String get blockKey => 'proofpoint_on_demand_settings';

  @override
  Map<String, Object?> encode() => {
    'proofpoint_on_demand_settings': proofpointOnDemandSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceUsersSettings] choice: sets `workspace_users_settings`.
final class ChronicleFeedSourceWorkspaceUsersSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceUsersSettings(this.workspaceUsersSettings);

  final ChronicleFeedWorkspaceUsersSettings workspaceUsersSettings;

  @override
  String get blockKey => 'workspace_users_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_users_settings': workspaceUsersSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceActivitySettings] choice: sets `workspace_activity_settings`.
final class ChronicleFeedSourceWorkspaceActivitySettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceActivitySettings(
    this.workspaceActivitySettings,
  );

  final ChronicleFeedWorkspaceActivitySettings workspaceActivitySettings;

  @override
  String get blockKey => 'workspace_activity_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_activity_settings': workspaceActivitySettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceAlertsSettings] choice: sets `workspace_alerts_settings`.
final class ChronicleFeedSourceWorkspaceAlertsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceAlertsSettings(
    this.workspaceAlertsSettings,
  );

  final ChronicleFeedWorkspaceAlertsSettings workspaceAlertsSettings;

  @override
  String get blockKey => 'workspace_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_alerts_settings': workspaceAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspacePrivilegesSettings] choice: sets `workspace_privileges_settings`.
final class ChronicleFeedSourceWorkspacePrivilegesSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspacePrivilegesSettings(
    this.workspacePrivilegesSettings,
  );

  final ChronicleFeedWorkspacePrivilegesSettings workspacePrivilegesSettings;

  @override
  String get blockKey => 'workspace_privileges_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_privileges_settings': workspacePrivilegesSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceMobileSettings] choice: sets `workspace_mobile_settings`.
final class ChronicleFeedSourceWorkspaceMobileSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceMobileSettings(
    this.workspaceMobileSettings,
  );

  final ChronicleFeedWorkspaceMobileSettings workspaceMobileSettings;

  @override
  String get blockKey => 'workspace_mobile_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_mobile_settings': workspaceMobileSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceChromeOsSettings] choice: sets `workspace_chrome_os_settings`.
final class ChronicleFeedSourceWorkspaceChromeOsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceChromeOsSettings(
    this.workspaceChromeOsSettings,
  );

  final ChronicleFeedWorkspaceChromeOsSettings workspaceChromeOsSettings;

  @override
  String get blockKey => 'workspace_chrome_os_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_chrome_os_settings': workspaceChromeOsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.workspaceGroupsSettings] choice: sets `workspace_groups_settings`.
final class ChronicleFeedSourceWorkspaceGroupsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceWorkspaceGroupsSettings(
    this.workspaceGroupsSettings,
  );

  final ChronicleFeedWorkspaceGroupsSettings workspaceGroupsSettings;

  @override
  String get blockKey => 'workspace_groups_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_groups_settings': workspaceGroupsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.azureAdAuditSettings] choice: sets `azure_ad_audit_settings`.
final class ChronicleFeedSourceAzureAdAuditSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureAdAuditSettings(this.azureAdAuditSettings);

  final ChronicleFeedAzureAdAuditSettings azureAdAuditSettings;

  @override
  String get blockKey => 'azure_ad_audit_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_audit_settings': azureAdAuditSettings.encode(),
  };
}

/// The [ChronicleFeedSource.symantecEventExportSettings] choice: sets `symantec_event_export_settings`.
final class ChronicleFeedSourceSymantecEventExportSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceSymantecEventExportSettings(
    this.symantecEventExportSettings,
  );

  final ChronicleFeedSymantecEventExportSettings symantecEventExportSettings;

  @override
  String get blockKey => 'symantec_event_export_settings';

  @override
  Map<String, Object?> encode() => {
    'symantec_event_export_settings': symantecEventExportSettings.encode(),
  };
}

/// The [ChronicleFeedSource.qualysVmSettings] choice: sets `qualys_vm_settings`.
final class ChronicleFeedSourceQualysVmSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceQualysVmSettings(this.qualysVmSettings);

  final ChronicleFeedQualysVmSettings qualysVmSettings;

  @override
  String get blockKey => 'qualys_vm_settings';

  @override
  Map<String, Object?> encode() => {
    'qualys_vm_settings': qualysVmSettings.encode(),
  };
}

/// The [ChronicleFeedSource.panPrismaCloudSettings] choice: sets `pan_prisma_cloud_settings`.
final class ChronicleFeedSourcePanPrismaCloudSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourcePanPrismaCloudSettings(this.panPrismaCloudSettings);

  final ChronicleFeedPanPrismaCloudSettings panPrismaCloudSettings;

  @override
  String get blockKey => 'pan_prisma_cloud_settings';

  @override
  Map<String, Object?> encode() => {
    'pan_prisma_cloud_settings': panPrismaCloudSettings.encode(),
  };
}

/// The [ChronicleFeedSource.gcsSettings] choice: sets `gcs_settings`.
final class ChronicleFeedSourceGcsSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceGcsSettings(this.gcsSettings);

  final ChronicleFeedGcsSettings gcsSettings;

  @override
  String get blockKey => 'gcs_settings';

  @override
  Map<String, Object?> encode() => {'gcs_settings': gcsSettings.encode()};
}

/// The [ChronicleFeedSource.httpSettings] choice: sets `http_settings`.
final class ChronicleFeedSourceHttpSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceHttpSettings(this.httpSettings);

  final ChronicleFeedHttpSettings httpSettings;

  @override
  String get blockKey => 'http_settings';

  @override
  Map<String, Object?> encode() => {'http_settings': httpSettings.encode()};
}

/// The [ChronicleFeedSource.sftpSettings] choice: sets `sftp_settings`.
final class ChronicleFeedSourceSftpSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceSftpSettings(this.sftpSettings);

  final ChronicleFeedSftpSettings sftpSettings;

  @override
  String get blockKey => 'sftp_settings';

  @override
  Map<String, Object?> encode() => {'sftp_settings': sftpSettings.encode()};
}

/// The [ChronicleFeedSource.amazonS3Settings] choice: sets `amazon_s3_settings`.
final class ChronicleFeedSourceAmazonS3Settings extends ChronicleFeedSource {
  const ChronicleFeedSourceAmazonS3Settings(this.amazonS3Settings);

  final ChronicleFeedAmazonS3Settings amazonS3Settings;

  @override
  String get blockKey => 'amazon_s3_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_s3_settings': amazonS3Settings.encode(),
  };
}

/// The [ChronicleFeedSource.azureBlobStoreSettings] choice: sets `azure_blob_store_settings`.
final class ChronicleFeedSourceAzureBlobStoreSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureBlobStoreSettings(this.azureBlobStoreSettings);

  final ChronicleFeedAzureBlobStoreSettings azureBlobStoreSettings;

  @override
  String get blockKey => 'azure_blob_store_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_blob_store_settings': azureBlobStoreSettings.encode(),
  };
}

/// The [ChronicleFeedSource.amazonSqsSettings] choice: sets `amazon_sqs_settings`.
final class ChronicleFeedSourceAmazonSqsSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAmazonSqsSettings(this.amazonSqsSettings);

  final ChronicleFeedAmazonSqsSettings amazonSqsSettings;

  @override
  String get blockKey => 'amazon_sqs_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_sqs_settings': amazonSqsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.googleCloudIdentityDevicesSettings] choice: sets `google_cloud_identity_devices_settings`.
final class ChronicleFeedSourceGoogleCloudIdentityDevicesSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceGoogleCloudIdentityDevicesSettings(
    this.googleCloudIdentityDevicesSettings,
  );

  final ChronicleFeedGoogleCloudIdentityDevicesSettings
  googleCloudIdentityDevicesSettings;

  @override
  String get blockKey => 'google_cloud_identity_devices_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_identity_devices_settings': googleCloudIdentityDevicesSettings
        .encode(),
  };
}

/// The [ChronicleFeedSource.googleCloudIdentityDeviceUsersSettings] choice: sets `google_cloud_identity_device_users_settings`.
final class ChronicleFeedSourceGoogleCloudIdentityDeviceUsersSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceGoogleCloudIdentityDeviceUsersSettings(
    this.googleCloudIdentityDeviceUsersSettings,
  );

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettings
  googleCloudIdentityDeviceUsersSettings;

  @override
  String get blockKey => 'google_cloud_identity_device_users_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_identity_device_users_settings':
        googleCloudIdentityDeviceUsersSettings.encode(),
  };
}

/// The [ChronicleFeedSource.crowdstrikeDetectsSettings] choice: sets `crowdstrike_detects_settings`.
final class ChronicleFeedSourceCrowdstrikeDetectsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceCrowdstrikeDetectsSettings(
    this.crowdstrikeDetectsSettings,
  );

  final ChronicleFeedCrowdstrikeDetectsSettings crowdstrikeDetectsSettings;

  @override
  String get blockKey => 'crowdstrike_detects_settings';

  @override
  Map<String, Object?> encode() => {
    'crowdstrike_detects_settings': crowdstrikeDetectsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.mandiantIocSettings] choice: sets `mandiant_ioc_settings`.
final class ChronicleFeedSourceMandiantIocSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceMandiantIocSettings(this.mandiantIocSettings);

  final ChronicleFeedMandiantIocSettings mandiantIocSettings;

  @override
  String get blockKey => 'mandiant_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'mandiant_ioc_settings': mandiantIocSettings.encode(),
  };
}

/// The [ChronicleFeedSource.sentineloneAlertSettings] choice: sets `sentinelone_alert_settings`.
final class ChronicleFeedSourceSentineloneAlertSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceSentineloneAlertSettings(
    this.sentineloneAlertSettings,
  );

  final ChronicleFeedSentineloneAlertSettings sentineloneAlertSettings;

  @override
  String get blockKey => 'sentinelone_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'sentinelone_alert_settings': sentineloneAlertSettings.encode(),
  };
}

/// The [ChronicleFeedSource.qualysScanSettings] choice: sets `qualys_scan_settings`.
final class ChronicleFeedSourceQualysScanSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceQualysScanSettings(this.qualysScanSettings);

  final ChronicleFeedQualysScanSettings qualysScanSettings;

  @override
  String get blockKey => 'qualys_scan_settings';

  @override
  Map<String, Object?> encode() => {
    'qualys_scan_settings': qualysScanSettings.encode(),
  };
}

/// The [ChronicleFeedSource.pubsubSettings] choice: sets `pubsub_settings`.
final class ChronicleFeedSourcePubsubSettings extends ChronicleFeedSource {
  const ChronicleFeedSourcePubsubSettings(this.pubsubSettings);

  final ChronicleFeedPubsubSettings pubsubSettings;

  @override
  String get blockKey => 'pubsub_settings';

  @override
  Map<String, Object?> encode() => {'pubsub_settings': pubsubSettings.encode()};
}

/// The [ChronicleFeedSource.amazonKinesisFirehoseSettings] choice: sets `amazon_kinesis_firehose_settings`.
final class ChronicleFeedSourceAmazonKinesisFirehoseSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAmazonKinesisFirehoseSettings(
    this.amazonKinesisFirehoseSettings,
  );

  final ChronicleFeedAmazonKinesisFirehoseSettings
  amazonKinesisFirehoseSettings;

  @override
  String get blockKey => 'amazon_kinesis_firehose_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_kinesis_firehose_settings': amazonKinesisFirehoseSettings.encode(),
  };
}

/// The [ChronicleFeedSource.webhookSettings] choice: sets `webhook_settings`.
final class ChronicleFeedSourceWebhookSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceWebhookSettings(this.webhookSettings);

  final ChronicleFeedWebhookSettings webhookSettings;

  @override
  String get blockKey => 'webhook_settings';

  @override
  Map<String, Object?> encode() => {
    'webhook_settings': webhookSettings.encode(),
  };
}

/// The [ChronicleFeedSource.dummyLogTypeSettings] choice: sets `dummy_log_type_settings`.
final class ChronicleFeedSourceDummyLogTypeSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceDummyLogTypeSettings(this.dummyLogTypeSettings);

  final ChronicleFeedDummyLogTypeSettings dummyLogTypeSettings;

  @override
  String get blockKey => 'dummy_log_type_settings';

  @override
  Map<String, Object?> encode() => {
    'dummy_log_type_settings': dummyLogTypeSettings.encode(),
  };
}

/// The [ChronicleFeedSource.httpsPushGoogleCloudPubsubSettings] choice: sets `https_push_google_cloud_pubsub_settings`.
final class ChronicleFeedSourceHttpsPushGoogleCloudPubsubSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceHttpsPushGoogleCloudPubsubSettings(
    this.httpsPushGoogleCloudPubsubSettings,
  );

  final ChronicleFeedHttpsPushGoogleCloudPubsubSettings
  httpsPushGoogleCloudPubsubSettings;

  @override
  String get blockKey => 'https_push_google_cloud_pubsub_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_google_cloud_pubsub_settings':
        httpsPushGoogleCloudPubsubSettings.encode(),
  };
}

/// The [ChronicleFeedSource.httpsPushAmazonKinesisFirehoseSettings] choice: sets `https_push_amazon_kinesis_firehose_settings`.
final class ChronicleFeedSourceHttpsPushAmazonKinesisFirehoseSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceHttpsPushAmazonKinesisFirehoseSettings(
    this.httpsPushAmazonKinesisFirehoseSettings,
  );

  final ChronicleFeedHttpsPushAmazonKinesisFirehoseSettings
  httpsPushAmazonKinesisFirehoseSettings;

  @override
  String get blockKey => 'https_push_amazon_kinesis_firehose_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_amazon_kinesis_firehose_settings':
        httpsPushAmazonKinesisFirehoseSettings.encode(),
  };
}

/// The [ChronicleFeedSource.httpsPushWebhookSettings] choice: sets `https_push_webhook_settings`.
final class ChronicleFeedSourceHttpsPushWebhookSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceHttpsPushWebhookSettings(
    this.httpsPushWebhookSettings,
  );

  final ChronicleFeedHttpsPushWebhookSettings httpsPushWebhookSettings;

  @override
  String get blockKey => 'https_push_webhook_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_webhook_settings': httpsPushWebhookSettings.encode(),
  };
}

/// The [ChronicleFeedSource.awsEc2HostsSettings] choice: sets `aws_ec2_hosts_settings`.
final class ChronicleFeedSourceAwsEc2HostsSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAwsEc2HostsSettings(this.awsEc2HostsSettings);

  final ChronicleFeedAwsEc2HostsSettings awsEc2HostsSettings;

  @override
  String get blockKey => 'aws_ec2_hosts_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_hosts_settings': awsEc2HostsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.awsEc2InstancesSettings] choice: sets `aws_ec2_instances_settings`.
final class ChronicleFeedSourceAwsEc2InstancesSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAwsEc2InstancesSettings(
    this.awsEc2InstancesSettings,
  );

  final ChronicleFeedAwsEc2InstancesSettings awsEc2InstancesSettings;

  @override
  String get blockKey => 'aws_ec2_instances_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_instances_settings': awsEc2InstancesSettings.encode(),
  };
}

/// The [ChronicleFeedSource.awsEc2VpcsSettings] choice: sets `aws_ec2_vpcs_settings`.
final class ChronicleFeedSourceAwsEc2VpcsSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAwsEc2VpcsSettings(this.awsEc2VpcsSettings);

  final ChronicleFeedAwsEc2VpcsSettings awsEc2VpcsSettings;

  @override
  String get blockKey => 'aws_ec2_vpcs_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_vpcs_settings': awsEc2VpcsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.awsIamSettings] choice: sets `aws_iam_settings`.
final class ChronicleFeedSourceAwsIamSettings extends ChronicleFeedSource {
  const ChronicleFeedSourceAwsIamSettings(this.awsIamSettings);

  final ChronicleFeedAwsIamSettings awsIamSettings;

  @override
  String get blockKey => 'aws_iam_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_iam_settings': awsIamSettings.encode(),
  };
}

/// The [ChronicleFeedSource.netskopeAlertV2Settings] choice: sets `netskope_alert_v2_settings`.
final class ChronicleFeedSourceNetskopeAlertV2Settings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceNetskopeAlertV2Settings(
    this.netskopeAlertV2Settings,
  );

  final ChronicleFeedNetskopeAlertV2Settings netskopeAlertV2Settings;

  @override
  String get blockKey => 'netskope_alert_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'netskope_alert_v2_settings': netskopeAlertV2Settings.encode(),
  };
}

/// The [ChronicleFeedSource.gcsV2Settings] choice: sets `gcs_v2_settings`.
final class ChronicleFeedSourceGcsV2Settings extends ChronicleFeedSource {
  const ChronicleFeedSourceGcsV2Settings(this.gcsV2Settings);

  final ChronicleFeedGcsV2Settings gcsV2Settings;

  @override
  String get blockKey => 'gcs_v2_settings';

  @override
  Map<String, Object?> encode() => {'gcs_v2_settings': gcsV2Settings.encode()};
}

/// The [ChronicleFeedSource.amazonS3V2Settings] choice: sets `amazon_s3_v2_settings`.
final class ChronicleFeedSourceAmazonS3V2Settings extends ChronicleFeedSource {
  const ChronicleFeedSourceAmazonS3V2Settings(this.amazonS3V2Settings);

  final ChronicleFeedAmazonS3V2Settings amazonS3V2Settings;

  @override
  String get blockKey => 'amazon_s3_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_s3_v2_settings': amazonS3V2Settings.encode(),
  };
}

/// The [ChronicleFeedSource.amazonSqsV2Settings] choice: sets `amazon_sqs_v2_settings`.
final class ChronicleFeedSourceAmazonSqsV2Settings extends ChronicleFeedSource {
  const ChronicleFeedSourceAmazonSqsV2Settings(this.amazonSqsV2Settings);

  final ChronicleFeedAmazonSqsV2Settings amazonSqsV2Settings;

  @override
  String get blockKey => 'amazon_sqs_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_sqs_v2_settings': amazonSqsV2Settings.encode(),
  };
}

/// The [ChronicleFeedSource.azureEventHubSettings] choice: sets `azure_event_hub_settings`.
final class ChronicleFeedSourceAzureEventHubSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureEventHubSettings(this.azureEventHubSettings);

  final ChronicleFeedAzureEventHubSettings azureEventHubSettings;

  @override
  String get blockKey => 'azure_event_hub_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_event_hub_settings': azureEventHubSettings.encode(),
  };
}

/// The [ChronicleFeedSource.trellixHxHostsSettings] choice: sets `trellix_hx_hosts_settings`.
final class ChronicleFeedSourceTrellixHxHostsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceTrellixHxHostsSettings(this.trellixHxHostsSettings);

  final ChronicleFeedTrellixHxHostsSettings trellixHxHostsSettings;

  @override
  String get blockKey => 'trellix_hx_hosts_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_hosts_settings': trellixHxHostsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.azureBlobStoreV2Settings] choice: sets `azure_blob_store_v2_settings`.
final class ChronicleFeedSourceAzureBlobStoreV2Settings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceAzureBlobStoreV2Settings(
    this.azureBlobStoreV2Settings,
  );

  final ChronicleFeedAzureBlobStoreV2Settings azureBlobStoreV2Settings;

  @override
  String get blockKey => 'azure_blob_store_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_blob_store_v2_settings': azureBlobStoreV2Settings.encode(),
  };
}

/// The [ChronicleFeedSource.trellixHxAlertsSettings] choice: sets `trellix_hx_alerts_settings`.
final class ChronicleFeedSourceTrellixHxAlertsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceTrellixHxAlertsSettings(
    this.trellixHxAlertsSettings,
  );

  final ChronicleFeedTrellixHxAlertsSettings trellixHxAlertsSettings;

  @override
  String get blockKey => 'trellix_hx_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_alerts_settings': trellixHxAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.googleCloudStorageEventDrivenSettings] choice: sets `google_cloud_storage_event_driven_settings`.
final class ChronicleFeedSourceGoogleCloudStorageEventDrivenSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceGoogleCloudStorageEventDrivenSettings(
    this.googleCloudStorageEventDrivenSettings,
  );

  final ChronicleFeedGoogleCloudStorageEventDrivenSettings
  googleCloudStorageEventDrivenSettings;

  @override
  String get blockKey => 'google_cloud_storage_event_driven_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_storage_event_driven_settings':
        googleCloudStorageEventDrivenSettings.encode(),
  };
}

/// The [ChronicleFeedSource.crowdstrikeAlertsSettings] choice: sets `crowdstrike_alerts_settings`.
final class ChronicleFeedSourceCrowdstrikeAlertsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceCrowdstrikeAlertsSettings(
    this.crowdstrikeAlertsSettings,
  );

  final ChronicleFeedCrowdstrikeAlertsSettings crowdstrikeAlertsSettings;

  @override
  String get blockKey => 'crowdstrike_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'crowdstrike_alerts_settings': crowdstrikeAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.trellixHxBulkAcqsSettings] choice: sets `trellix_hx_bulk_acqs_settings`.
final class ChronicleFeedSourceTrellixHxBulkAcqsSettings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceTrellixHxBulkAcqsSettings(
    this.trellixHxBulkAcqsSettings,
  );

  final ChronicleFeedTrellixHxBulkAcqsSettings trellixHxBulkAcqsSettings;

  @override
  String get blockKey => 'trellix_hx_bulk_acqs_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_bulk_acqs_settings': trellixHxBulkAcqsSettings.encode(),
  };
}

/// The [ChronicleFeedSource.mimecastMailV2Settings] choice: sets `mimecast_mail_v2_settings`.
final class ChronicleFeedSourceMimecastMailV2Settings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceMimecastMailV2Settings(this.mimecastMailV2Settings);

  final ChronicleFeedMimecastMailV2Settings mimecastMailV2Settings;

  @override
  String get blockKey => 'mimecast_mail_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'mimecast_mail_v2_settings': mimecastMailV2Settings.encode(),
  };
}

/// The [ChronicleFeedSource.threatConnectIocV3Settings] choice: sets `threat_connect_ioc_v3_settings`.
final class ChronicleFeedSourceThreatConnectIocV3Settings
    extends ChronicleFeedSource {
  const ChronicleFeedSourceThreatConnectIocV3Settings(
    this.threatConnectIocV3Settings,
  );

  final ChronicleFeedThreatConnectIocV3Settings threatConnectIocV3Settings;

  @override
  String get blockKey => 'threat_connect_ioc_v3_settings';

  @override
  Map<String, Object?> encode() => {
    'threat_connect_ioc_v3_settings': threatConnectIocV3Settings.encode(),
  };
}

/// `feed_source_type` — derived from the provider schema description.
enum ChronicleFeedSourceType implements TerraformEnum {
  googleCloudStorage('GOOGLE_CLOUD_STORAGE'),
  http('HTTP'),
  sftp('SFTP'),
  amazonS3('AMAZON_S3'),
  azureBlobstore('AZURE_BLOBSTORE'),
  api('API'),
  amazonSqs('AMAZON_SQS'),
  pubsub('PUBSUB'),
  amazonKinesisFirehose('AMAZON_KINESIS_FIREHOSE'),
  webhook('WEBHOOK'),
  httpsPushGoogleCloudPubsub('HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB'),
  httpsPushAmazonKinesisFirehose('HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE'),
  httpsPushWebhook('HTTPS_PUSH_WEBHOOK'),
  azureEventHub('AZURE_EVENT_HUB'),
  googleCloudStorageV2('GOOGLE_CLOUD_STORAGE_V2'),
  amazonS3V2('AMAZON_S3_V2'),
  amazonSqsV2('AMAZON_SQS_V2'),
  azureBlobstoreV2('AZURE_BLOBSTORE_V2'),
  googleCloudStorageEventDriven('GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN');

  const ChronicleFeedSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `details.amazon_kinesis_firehose_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonKinesisFirehoseSettings {
  const ChronicleFeedAmazonKinesisFirehoseSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `details.amazon_s3_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonS3Settings {
  const ChronicleFeedAmazonS3Settings({
    required this.s3Uri,
    required this.sourceDeletionOption,
    required this.sourceType,
    this.authentication,
  });

  final TfArg<String> s3Uri;

  final TfArg<String> sourceDeletionOption;

  final TfArg<String> sourceType;

  final ChronicleFeedAmazonS3SettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    's3_uri': s3Uri.toTfJson(),
    'source_deletion_option': sourceDeletionOption.toTfJson(),
    'source_type': sourceType.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.amazon_s3_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonS3SettingsAuthentication {
  const ChronicleFeedAmazonS3SettingsAuthentication({
    this.accessKeyId,
    this.clientId,
    this.clientSecret,
    this.refreshUri,
    required this.region,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? refreshUri;

  final TfArg<String> region;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'refresh_uri': ?refreshUri?.toTfJson(),
    'region': region.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_s3_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonS3V2Settings {
  const ChronicleFeedAmazonS3V2Settings({
    this.maxLookbackDays,
    required this.s3Uri,
    this.sourceDeletionOption,
    required this.authentication,
  });

  final TfArg<num>? maxLookbackDays;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedAmazonS3V2SettingsAuthentication authentication;

  Map<String, Object?> encode() => {
    'max_lookback_days': ?maxLookbackDays?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'authentication': authentication.encode(),
  };
}

/// Typed helper for the `details.amazon_s3_v2_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonS3V2SettingsAuthentication {
  const ChronicleFeedAmazonS3V2SettingsAuthentication({
    this.accessKeySecretAuth,
    this.awsIamRoleAuth,
  });

  final ChronicleFeedAccessKeySecretAuth? accessKeySecretAuth;

  final ChronicleFeedAwsIamRoleAuth? awsIamRoleAuth;

  Map<String, Object?> encode() => {
    'access_key_secret_auth': ?accessKeySecretAuth?.encode(),
    'aws_iam_role_auth': ?awsIamRoleAuth?.encode(),
  };
}

/// Typed helper for the `details.amazon_s3_v2_settings.authentication.access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAccessKeySecretAuth {
  const ChronicleFeedAccessKeySecretAuth({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_s3_v2_settings.authentication.aws_iam_role_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedAwsIamRoleAuth {
  const ChronicleFeedAwsIamRoleAuth({this.awsIamRoleArn, this.subjectId});

  final TfArg<String>? awsIamRoleArn;

  final TfArg<String>? subjectId;

  Map<String, Object?> encode() => {
    'aws_iam_role_arn': ?awsIamRoleArn?.toTfJson(),
    'subject_id': ?subjectId?.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_sqs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonSqsSettings {
  const ChronicleFeedAmazonSqsSettings({
    this.accountNumber,
    this.queue,
    this.region,
    this.sourceDeletionOption,
    this.authentication,
  });

  final TfArg<String>? accountNumber;

  final TfArg<String>? queue;

  final TfArg<String>? region;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedAmazonSqsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'account_number': ?accountNumber?.toTfJson(),
    'queue': ?queue?.toTfJson(),
    'region': ?region?.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonSqsSettingsAuthentication {
  const ChronicleFeedAmazonSqsSettingsAuthentication({
    this.additionalS3AccessKeySecretAuth,
    this.sqsAccessKeySecretAuth,
  });

  final ChronicleFeedAdditionalS3AccessKeySecretAuth?
  additionalS3AccessKeySecretAuth;

  final ChronicleFeedSqsAccessKeySecretAuth? sqsAccessKeySecretAuth;

  Map<String, Object?> encode() => {
    'additional_s3_access_key_secret_auth': ?additionalS3AccessKeySecretAuth
        ?.encode(),
    'sqs_access_key_secret_auth': ?sqsAccessKeySecretAuth?.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_settings.authentication.additional_s3_access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAdditionalS3AccessKeySecretAuth {
  const ChronicleFeedAdditionalS3AccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_sqs_settings.authentication.sqs_access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSqsAccessKeySecretAuth {
  const ChronicleFeedSqsAccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_sqs_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonSqsV2Settings {
  const ChronicleFeedAmazonSqsV2Settings({
    this.maxLookbackDays,
    required this.queue,
    required this.s3Uri,
    this.sourceDeletionOption,
    required this.authentication,
  });

  final TfArg<num>? maxLookbackDays;

  final TfArg<String> queue;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedAmazonSqsV2SettingsAuthentication authentication;

  Map<String, Object?> encode() => {
    'max_lookback_days': ?maxLookbackDays?.toTfJson(),
    'queue': queue.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'authentication': authentication.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_v2_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAmazonSqsV2SettingsAuthentication {
  const ChronicleFeedAmazonSqsV2SettingsAuthentication({
    required this.awsIamRoleAuth,
    required this.sqsV2AccessKeySecretAuth,
  });

  final ChronicleFeedAwsIamRoleAuth awsIamRoleAuth;

  final ChronicleFeedSqsV2AccessKeySecretAuth sqsV2AccessKeySecretAuth;

  Map<String, Object?> encode() => {
    'aws_iam_role_auth': awsIamRoleAuth.encode(),
    'sqs_v2_access_key_secret_auth': sqsV2AccessKeySecretAuth.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_v2_settings.authentication.sqs_v2_access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSqsV2AccessKeySecretAuth {
  const ChronicleFeedSqsV2AccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  final TfArg<String>? accessKeyId;

  final TfArg<String>? secretAccessKey;

  Map<String, Object?> encode() => {
    'access_key_id': ?accessKeyId?.toTfJson(),
    'secret_access_key': ?secretAccessKey?.toTfJson(),
  };
}

/// Typed helper for the `details.anomali_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAnomaliSettings {
  const ChronicleFeedAnomaliSettings({this.authentication});

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.anomali_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedAnomaliSettingsAuthentication {
  const ChronicleFeedAnomaliSettingsAuthentication({this.secret, this.user});

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.aws_ec2_hosts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAwsEc2HostsSettings {
  const ChronicleFeedAwsEc2HostsSettings({this.authentication});

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_ec2_instances_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAwsEc2InstancesSettings {
  const ChronicleFeedAwsEc2InstancesSettings({this.authentication});

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_ec2_vpcs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAwsEc2VpcsSettings {
  const ChronicleFeedAwsEc2VpcsSettings({this.authentication});

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_iam_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAwsIamSettings {
  const ChronicleFeedAwsIamSettings({this.apiType, this.authentication});

  final TfArg<String>? apiType;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_type': ?apiType?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_audit_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureAdAuditSettings {
  const ChronicleFeedAzureAdAuditSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_audit_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedAzureAdAuditSettingsAuthentication {
  const ChronicleFeedAzureAdAuditSettingsAuthentication({
    this.clientId,
    this.clientSecret,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
  };
}

/// Typed helper for the `details.azure_ad_context_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureAdContextSettings {
  const ChronicleFeedAzureAdContextSettings({
    this.authEndpoint,
    this.hostname,
    this.retrieveDevices,
    this.retrieveGroups,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<bool>? retrieveDevices;

  final TfArg<bool>? retrieveGroups;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'retrieve_devices': ?retrieveDevices?.toTfJson(),
    'retrieve_groups': ?retrieveGroups?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureAdSettings {
  const ChronicleFeedAzureAdSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_blob_store_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureBlobStoreSettings {
  const ChronicleFeedAzureBlobStoreSettings({
    this.azureUri,
    this.sourceDeletionOption,
    this.sourceType,
    this.authentication,
  });

  final TfArg<String>? azureUri;

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  final ChronicleFeedAzureBlobStoreSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'azure_uri': ?azureUri?.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'source_type': ?sourceType?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_blob_store_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureBlobStoreSettingsAuthentication {
  const ChronicleFeedAzureBlobStoreSettingsAuthentication({
    this.sasToken,
    this.sharedKey,
  });

  final TfArg<String>? sasToken;

  final TfArg<String>? sharedKey;

  Map<String, Object?> encode() => {
    'sas_token': ?sasToken?.toTfJson(),
    'shared_key': ?sharedKey?.toTfJson(),
  };
}

/// Typed helper for the `details.azure_blob_store_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureBlobStoreV2Settings {
  const ChronicleFeedAzureBlobStoreV2Settings({
    required this.azureUri,
    this.maxLookbackDays,
    this.sourceDeletionOption,
    required this.authentication,
  });

  final TfArg<String> azureUri;

  final TfArg<num>? maxLookbackDays;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedAzureBlobStoreV2SettingsAuthentication authentication;

  Map<String, Object?> encode() => {
    'azure_uri': azureUri.toTfJson(),
    'max_lookback_days': ?maxLookbackDays?.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'authentication': authentication.encode(),
  };
}

/// Typed helper for the `details.azure_blob_store_v2_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureBlobStoreV2SettingsAuthentication {
  const ChronicleFeedAzureBlobStoreV2SettingsAuthentication({
    required this.accessKey,
    required this.sasToken,
    required this.azureV2WorkloadIdentityFederation,
  });

  final TfArg<String> accessKey;

  final TfArg<String> sasToken;

  final ChronicleFeedAzureV2WorkloadIdentityFederation
  azureV2WorkloadIdentityFederation;

  Map<String, Object?> encode() => {
    'access_key': accessKey.toTfJson(),
    'sas_token': sasToken.toTfJson(),
    'azure_v2_workload_identity_federation': azureV2WorkloadIdentityFederation
        .encode(),
  };
}

/// Typed helper for the `details.azure_blob_store_v2_settings.authentication.azure_v2_workload_identity_federation` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureV2WorkloadIdentityFederation {
  const ChronicleFeedAzureV2WorkloadIdentityFederation({
    required this.clientId,
    required this.subjectId,
    required this.tenantId,
  });

  final TfArg<String> clientId;

  final TfArg<String> subjectId;

  final TfArg<String> tenantId;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'subject_id': subjectId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `details.azure_event_hub_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureEventHubSettings {
  const ChronicleFeedAzureEventHubSettings({
    this.azureSasToken,
    this.azureStorageConnectionString,
    this.azureStorageContainer,
    required this.consumerGroup,
    required this.eventHubConnectionString,
    required this.name,
  });

  final TfArg<String>? azureSasToken;

  final TfArg<String>? azureStorageConnectionString;

  final TfArg<String>? azureStorageContainer;

  final TfArg<String> consumerGroup;

  final TfArg<String> eventHubConnectionString;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'azure_sas_token': ?azureSasToken?.toTfJson(),
    'azure_storage_connection_string': ?azureStorageConnectionString
        ?.toTfJson(),
    'azure_storage_container': ?azureStorageContainer?.toTfJson(),
    'consumer_group': consumerGroup.toTfJson(),
    'event_hub_connection_string': eventHubConnectionString.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `details.azure_mdm_intune_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAzureMdmIntuneSettings {
  const ChronicleFeedAzureMdmIntuneSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.cloud_passage_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedCloudPassageSettings {
  const ChronicleFeedCloudPassageSettings({
    this.eventTypes,
    this.authentication,
  });

  final TfArg<List<String>>? eventTypes;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'event_types': ?eventTypes?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.cortex_xdr_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedCortexXdrSettings {
  const ChronicleFeedCortexXdrSettings({
    this.endpoint,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.cortex_xdr_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedCortexXdrSettingsAuthentication {
  const ChronicleFeedCortexXdrSettingsAuthentication({this.headerKeyValues});

  final List<ChronicleFeedHeaderKeyValues>? headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.cortex_xdr_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedHeaderKeyValues {
  const ChronicleFeedHeaderKeyValues({this.key, this.value});

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.crowdstrike_alerts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedCrowdstrikeAlertsSettings {
  const ChronicleFeedCrowdstrikeAlertsSettings({
    required this.hostname,
    this.ingestionType,
    required this.authentication,
  });

  final TfArg<String> hostname;

  final TfArg<String>? ingestionType;

  final ChronicleFeedCrowdstrikeAlertsSettingsAuthentication authentication;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'ingestion_type': ?ingestionType?.toTfJson(),
    'authentication': authentication.encode(),
  };
}

/// Typed helper for the `details.crowdstrike_alerts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedCrowdstrikeAlertsSettingsAuthentication {
  const ChronicleFeedCrowdstrikeAlertsSettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.tokenEndpoint,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
  };
}

/// Typed helper for the `details.crowdstrike_detects_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedCrowdstrikeDetectsSettings {
  const ChronicleFeedCrowdstrikeDetectsSettings({
    this.hostname,
    this.ingestionType,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? ingestionType;

  final ChronicleFeedCrowdstrikeAlertsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'ingestion_type': ?ingestionType?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.dummy_log_type_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDummyLogTypeSettings {
  const ChronicleFeedDummyLogTypeSettings({
    this.apiEndpoint,
    this.authentication,
  });

  final TfArg<String>? apiEndpoint;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_endpoint': ?apiEndpoint?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.duo_auth_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDuoAuthSettings {
  const ChronicleFeedDuoAuthSettings({this.hostname, this.authentication});

  final TfArg<String>? hostname;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.duo_user_context_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDuoUserContextSettings {
  const ChronicleFeedDuoUserContextSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.fox_it_stix_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedFoxItStixSettings {
  const ChronicleFeedFoxItStixSettings({
    this.collection,
    this.pollServiceUri,
    this.authentication,
    this.ssl,
  });

  final TfArg<String>? collection;

  final TfArg<String>? pollServiceUri;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  final ChronicleFeedSsl? ssl;

  Map<String, Object?> encode() => {
    'collection': ?collection?.toTfJson(),
    'poll_service_uri': ?pollServiceUri?.toTfJson(),
    'authentication': ?authentication?.encode(),
    'ssl': ?ssl?.encode(),
  };
}

/// Typed helper for the `details.fox_it_stix_settings.ssl` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSsl {
  const ChronicleFeedSsl({this.encodedPrivateKey, this.sslCertificate});

  final TfArg<String>? encodedPrivateKey;

  final TfArg<String>? sslCertificate;

  Map<String, Object?> encode() => {
    'encoded_private_key': ?encodedPrivateKey?.toTfJson(),
    'ssl_certificate': ?sslCertificate?.toTfJson(),
  };
}

/// Typed helper for the `details.gcs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedGcsSettings {
  const ChronicleFeedGcsSettings({
    this.bucketUri,
    this.sourceDeletionOption,
    this.sourceType,
  });

  final TfArg<String>? bucketUri;

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  Map<String, Object?> encode() => {
    'bucket_uri': ?bucketUri?.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'source_type': ?sourceType?.toTfJson(),
  };
}

/// Typed helper for the `details.gcs_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedGcsV2Settings {
  const ChronicleFeedGcsV2Settings({
    required this.bucketUri,
    this.maxLookbackDays,
    this.sourceDeletionOption,
  });

  final TfArg<String> bucketUri;

  final TfArg<num>? maxLookbackDays;

  final TfArg<String>? sourceDeletionOption;

  Map<String, Object?> encode() => {
    'bucket_uri': bucketUri.toTfJson(),
    'max_lookback_days': ?maxLookbackDays?.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedGoogleCloudIdentityDeviceUsersSettings {
  const ChronicleFeedGoogleCloudIdentityDeviceUsersSettings({
    this.authentication,
  });

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication {
  const ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedClaims? claims;

  final ChronicleFeedRsCredentials? rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedClaims {
  const ChronicleFeedClaims({this.audience, this.issuer, this.subject});

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedRsCredentials {
  const ChronicleFeedRsCredentials({this.privateKey});

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.google_cloud_identity_devices_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedGoogleCloudIdentityDevicesSettings {
  const ChronicleFeedGoogleCloudIdentityDevicesSettings({
    this.apiVersion,
    this.authentication,
  });

  final TfArg<String>? apiVersion;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_storage_event_driven_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedGoogleCloudStorageEventDrivenSettings {
  const ChronicleFeedGoogleCloudStorageEventDrivenSettings({
    required this.bucketUri,
    this.maxLookbackDays,
    required this.pubsubSubscription,
    this.sourceDeletionOption,
  });

  final TfArg<String> bucketUri;

  final TfArg<num>? maxLookbackDays;

  final TfArg<String> pubsubSubscription;

  final TfArg<String>? sourceDeletionOption;

  Map<String, Object?> encode() => {
    'bucket_uri': bucketUri.toTfJson(),
    'max_lookback_days': ?maxLookbackDays?.toTfJson(),
    'pubsub_subscription': pubsubSubscription.toTfJson(),
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
  };
}

/// Typed helper for the `details.http_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedHttpSettings {
  const ChronicleFeedHttpSettings({
    this.sourceDeletionOption,
    this.sourceType,
    this.uri,
  });

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'source_type': ?sourceType?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `details.https_push_amazon_kinesis_firehose_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedHttpsPushAmazonKinesisFirehoseSettings {
  const ChronicleFeedHttpsPushAmazonKinesisFirehoseSettings({
    this.splitDelimiter,
  });

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    'split_delimiter': ?splitDelimiter?.toTfJson(),
  };
}

/// Typed helper for the `details.https_push_google_cloud_pubsub_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedHttpsPushGoogleCloudPubsubSettings {
  const ChronicleFeedHttpsPushGoogleCloudPubsubSettings({this.splitDelimiter});

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    'split_delimiter': ?splitDelimiter?.toTfJson(),
  };
}

/// Typed helper for the `details.https_push_webhook_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedHttpsPushWebhookSettings {
  const ChronicleFeedHttpsPushWebhookSettings({this.splitDelimiter});

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    'split_delimiter': ?splitDelimiter?.toTfJson(),
  };
}

/// Typed helper for the `details.imperva_waf_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedImpervaWafSettings {
  const ChronicleFeedImpervaWafSettings({this.authentication});

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.mandiant_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedMandiantIocSettings {
  const ChronicleFeedMandiantIocSettings({this.startTime, this.authentication});

  final TfArg<String>? startTime;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'start_time': ?startTime?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.microsoft_graph_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedMicrosoftGraphAlertSettings {
  const ChronicleFeedMicrosoftGraphAlertSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.microsoft_security_center_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedMicrosoftSecurityCenterAlertSettings {
  const ChronicleFeedMicrosoftSecurityCenterAlertSettings({
    this.authEndpoint,
    this.hostname,
    this.subscriptionId,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? subscriptionId;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'subscription_id': ?subscriptionId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.mimecast_mail_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedMimecastMailSettings {
  const ChronicleFeedMimecastMailSettings({this.hostname, this.authentication});

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.mimecast_mail_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedMimecastMailV2Settings {
  const ChronicleFeedMimecastMailV2Settings({this.authCredentials});

  final ChronicleFeedAuthCredentials? authCredentials;

  Map<String, Object?> encode() => {
    'auth_credentials': ?authCredentials?.encode(),
  };
}

/// Typed helper for the `details.mimecast_mail_v2_settings.auth_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedAuthCredentials {
  const ChronicleFeedAuthCredentials({this.clientId, this.clientSecret});

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
  };
}

/// Typed helper for the `details.netskope_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedNetskopeAlertSettings {
  const ChronicleFeedNetskopeAlertSettings({
    this.contentType,
    this.feedname,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? feedname;

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'feedname': ?feedname?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.netskope_alert_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedNetskopeAlertV2Settings {
  const ChronicleFeedNetskopeAlertV2Settings({
    this.contentCategory,
    this.contentTypes,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? contentCategory;

  final TfArg<List<String>>? contentTypes;

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'content_category': ?contentCategory?.toTfJson(),
    'content_types': ?contentTypes?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.office365_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedOffice365Settings {
  const ChronicleFeedOffice365Settings({
    this.authEndpoint,
    this.contentType,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? contentType;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.okta_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedOktaSettings {
  const ChronicleFeedOktaSettings({this.hostname, this.authentication});

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.okta_user_context_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedOktaUserContextSettings {
  const ChronicleFeedOktaUserContextSettings({
    this.hostname,
    this.managerIdReferenceField,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? managerIdReferenceField;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'manager_id_reference_field': ?managerIdReferenceField?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pan_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedPanIocSettings {
  const ChronicleFeedPanIocSettings({
    this.feed,
    this.feedId,
    this.authentication,
  });

  final TfArg<String>? feed;

  final TfArg<String>? feedId;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'feed': ?feed?.toTfJson(),
    'feed_id': ?feedId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pan_prisma_cloud_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedPanPrismaCloudSettings {
  const ChronicleFeedPanPrismaCloudSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedPanPrismaCloudSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pan_prisma_cloud_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedPanPrismaCloudSettingsAuthentication {
  const ChronicleFeedPanPrismaCloudSettingsAuthentication({
    this.password,
    this.user,
  });

  final TfArg<String>? password;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.proofpoint_mail_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedProofpointMailSettings {
  const ChronicleFeedProofpointMailSettings({this.authentication});

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.proofpoint_on_demand_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedProofpointOnDemandSettings {
  const ChronicleFeedProofpointOnDemandSettings({
    this.clusterId,
    this.authentication,
  });

  final TfArg<String>? clusterId;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'cluster_id': ?clusterId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pubsub_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedPubsubSettings {
  const ChronicleFeedPubsubSettings({this.googleServiceAccountEmail});

  final TfArg<String>? googleServiceAccountEmail;

  Map<String, Object?> encode() => {
    'google_service_account_email': ?googleServiceAccountEmail?.toTfJson(),
  };
}

/// Typed helper for the `details.qualys_scan_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedQualysScanSettings {
  const ChronicleFeedQualysScanSettings({
    this.apiType,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? apiType;

  final TfArg<String>? hostname;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_type': ?apiType?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.qualys_vm_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedQualysVmSettings {
  const ChronicleFeedQualysVmSettings({this.hostname, this.authentication});

  final TfArg<String>? hostname;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.rapid7_insight_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedRapid7InsightSettings {
  const ChronicleFeedRapid7InsightSettings({
    this.endpoint,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.recorded_future_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedRecordedFutureIocSettings {
  const ChronicleFeedRecordedFutureIocSettings({this.authentication});

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.rh_isac_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedRhIsacIocSettings {
  const ChronicleFeedRhIsacIocSettings({this.authentication});

  final ChronicleFeedCrowdstrikeAlertsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.salesforce_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSalesforceSettings {
  const ChronicleFeedSalesforceSettings({
    this.hostname,
    this.oauthJwtCredentials,
    this.oauthPasswordGrantAuth,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedOauthJwtCredentials? oauthJwtCredentials;

  final ChronicleFeedOauthPasswordGrantAuth? oauthPasswordGrantAuth;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'oauth_jwt_credentials': ?oauthJwtCredentials?.encode(),
    'oauth_password_grant_auth': ?oauthPasswordGrantAuth?.encode(),
  };
}

/// Typed helper for the `details.salesforce_settings.oauth_jwt_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedOauthJwtCredentials {
  const ChronicleFeedOauthJwtCredentials({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedClaims? claims;

  final ChronicleFeedRsCredentials? rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.salesforce_settings.oauth_password_grant_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedOauthPasswordGrantAuth {
  const ChronicleFeedOauthPasswordGrantAuth({
    this.clientId,
    this.clientSecret,
    this.password,
    this.tokenEndpoint,
    this.user,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? password;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'password': ?password?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.sentinelone_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSentineloneAlertSettings {
  const ChronicleFeedSentineloneAlertSettings({
    this.hostname,
    this.initialStartTime,
    this.isAlertApiSubscribed,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? initialStartTime;

  final TfArg<bool>? isAlertApiSubscribed;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'initial_start_time': ?initialStartTime?.toTfJson(),
    'is_alert_api_subscribed': ?isAlertApiSubscribed?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.service_now_cmdb_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedServiceNowCmdbSettings {
  const ChronicleFeedServiceNowCmdbSettings({
    this.feedname,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? feedname;

  final TfArg<String>? hostname;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'feedname': ?feedname?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.sftp_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSftpSettings {
  const ChronicleFeedSftpSettings({
    this.sourceDeletionOption,
    this.sourceType,
    this.uri,
    this.authentication,
  });

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  final TfArg<String>? uri;

  final ChronicleFeedSftpSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'source_deletion_option': ?sourceDeletionOption?.toTfJson(),
    'source_type': ?sourceType?.toTfJson(),
    'uri': ?uri?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.sftp_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSftpSettingsAuthentication {
  const ChronicleFeedSftpSettingsAuthentication({
    this.password,
    this.privateKey,
    this.privateKeyPassphrase,
    this.username,
  });

  final TfArg<String>? password;

  final TfArg<String>? privateKey;

  final TfArg<String>? privateKeyPassphrase;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password': ?password?.toTfJson(),
    'private_key': ?privateKey?.toTfJson(),
    'private_key_passphrase': ?privateKeyPassphrase?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `details.symantec_event_export_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSymantecEventExportSettings {
  const ChronicleFeedSymantecEventExportSettings({this.authentication});

  final ChronicleFeedSymantecEventExportSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.symantec_event_export_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedSymantecEventExportSettingsAuthentication {
  const ChronicleFeedSymantecEventExportSettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.refreshToken,
    this.tokenEndpoint,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? refreshToken;

  final TfArg<String>? tokenEndpoint;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
  };
}

/// Typed helper for the `details.thinkst_canary_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedThinkstCanarySettings {
  const ChronicleFeedThinkstCanarySettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedThreatConnectIocSettings {
  const ChronicleFeedThreatConnectIocSettings({
    this.hostname,
    this.owners,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<List<String>>? owners;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'owners': ?owners?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_v3_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedThreatConnectIocV3Settings {
  const ChronicleFeedThreatConnectIocV3Settings({
    this.fields,
    this.hostname,
    this.owners,
    this.schedule,
    this.tqlQuery,
    this.authentication,
  });

  final TfArg<List<String>>? fields;

  final TfArg<String>? hostname;

  final TfArg<List<String>>? owners;

  final TfArg<num>? schedule;

  final TfArg<String>? tqlQuery;

  final ChronicleFeedAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'fields': ?fields?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'owners': ?owners?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'tql_query': ?tqlQuery?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxAlertsSettings {
  const ChronicleFeedTrellixHxAlertsSettings({
    this.endpoint,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final ChronicleFeedTrellixHxAlertsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxAlertsSettingsAuthentication {
  const ChronicleFeedTrellixHxAlertsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  final ChronicleFeedTrellixHxAlertsSettingsMsso? msso;

  final ChronicleFeedTrellixHxAlertsSettingsTrellixIam? trellixIam;

  Map<String, Object?> encode() => {
    'msso': ?msso?.encode(),
    'trellix_iam': ?trellixIam?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings.authentication.msso` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxAlertsSettingsMsso {
  const ChronicleFeedTrellixHxAlertsSettingsMsso({
    this.apiEndpoint,
    this.password,
    this.username,
  });

  final TfArg<String>? apiEndpoint;

  final TfArg<String>? password;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'api_endpoint': ?apiEndpoint?.toTfJson(),
    'password': ?password?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings.authentication.trellix_iam` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxAlertsSettingsTrellixIam {
  const ChronicleFeedTrellixHxAlertsSettingsTrellixIam({
    this.clientId,
    this.clientSecret,
    this.scope,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? scope;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxBulkAcqsSettings {
  const ChronicleFeedTrellixHxBulkAcqsSettings({
    required this.endpoint,
    this.authentication,
  });

  final TfArg<String> endpoint;

  final ChronicleFeedTrellixHxBulkAcqsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedTrellixHxBulkAcqsSettingsAuthentication {
  const ChronicleFeedTrellixHxBulkAcqsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  final ChronicleFeedTrellixHxBulkAcqsSettingsMsso? msso;

  final ChronicleFeedTrellixHxBulkAcqsSettingsTrellixIam? trellixIam;

  Map<String, Object?> encode() => {
    'msso': ?msso?.encode(),
    'trellix_iam': ?trellixIam?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings.authentication.msso` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedTrellixHxBulkAcqsSettingsMsso {
  const ChronicleFeedTrellixHxBulkAcqsSettingsMsso({
    required this.apiEndpoint,
    required this.password,
    required this.username,
  });

  final TfArg<String> apiEndpoint;

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'api_endpoint': apiEndpoint.toTfJson(),
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings.authentication.trellix_iam` block of
/// `google_chronicle_feed` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ChronicleFeedTrellixHxBulkAcqsSettingsTrellixIam {
  const ChronicleFeedTrellixHxBulkAcqsSettingsTrellixIam({
    required this.clientId,
    required this.clientSecret,
    required this.scope,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final TfArg<String> scope;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'scope': scope.toTfJson(),
  };
}

/// Typed helper for the `details.trellix_hx_hosts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedTrellixHxHostsSettings {
  const ChronicleFeedTrellixHxHostsSettings({
    required this.endpoint,
    this.authentication,
  });

  final TfArg<String> endpoint;

  final ChronicleFeedTrellixHxBulkAcqsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.webhook_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWebhookSettings {
  const ChronicleFeedWebhookSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `details.workday_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkdaySettings {
  const ChronicleFeedWorkdaySettings({
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedWorkdaySettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workday_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkdaySettingsAuthentication {
  const ChronicleFeedWorkdaySettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.refreshToken,
    this.secret,
    this.tokenEndpoint,
    this.user,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? clientSecret;

  final TfArg<String>? refreshToken;

  final TfArg<String>? secret;

  final TfArg<String>? tokenEndpoint;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'refresh_token': ?refreshToken?.toTfJson(),
    'secret': ?secret?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_activity_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceActivitySettings {
  const ChronicleFeedWorkspaceActivitySettings({
    this.applications,
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<List<String>>? applications;

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'applications': ?applications?.toTfJson(),
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_alerts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceAlertsSettings {
  const ChronicleFeedWorkspaceAlertsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_chrome_os_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceChromeOsSettings {
  const ChronicleFeedWorkspaceChromeOsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_groups_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceGroupsSettings {
  const ChronicleFeedWorkspaceGroupsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_mobile_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceMobileSettings {
  const ChronicleFeedWorkspaceMobileSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_privileges_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspacePrivilegesSettings {
  const ChronicleFeedWorkspacePrivilegesSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_users_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedWorkspaceUsersSettings {
  const ChronicleFeedWorkspaceUsersSettings({
    this.projectionType,
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? projectionType;

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'projection_type': ?projectionType?.toTfJson(),
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Factory wrapper for `google_chronicle_feed`.
///
/// The FeedsService is responsible for configuring and managing the ingestion
/// of third-party security data and logs into Google Security Operations
/// through various feed creation, updates, and lifecycle management, and schema
/// validation.
///
/// Chronicle (Google SecOps) **feed** — third-party / HTTP-push ingestion
/// source on a Chronicle instance (`details` carries feed-type settings).
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// feeds sit on an entitlement-gated Chronicle instance and drive
/// ingestion volume. Not applyable on `terradart-validate`. **Never** wire
/// into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`).
final class GoogleChronicleFeed extends Resource {
  static const String tfType = 'google_chronicle_feed';

  GoogleChronicleFeed(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? displayName,
    TfArg<bool>? enabled,
    ChronicleFeedDetails? details,
    TfArg<String>? feed,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'display_name': ?displayName,
           'enabled': ?enabled,
           if (details != null) 'details': TfArg.literal(details.encode()),
           'feed': ?feed,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleFeedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleFeed>`.
  RefTo<GoogleChronicleFeed> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_msg` attribute.
  TfRef<String> get failureMsg => TfRef.attribute<String>(this, 'failure_msg');

  /// Reference to `feed_service_account` attribute.
  TfRef<String> get feedServiceAccount =>
      TfRef.attribute<String>(this, 'feed_service_account');

  /// Reference to `last_feed_initiation_time` attribute.
  TfRef<String> get lastFeedInitiationTime =>
      TfRef.attribute<String>(this, 'last_feed_initiation_time');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `reference_id` attribute.
  TfRef<String> get referenceId =>
      TfRef.attribute<String>(this, 'reference_id');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `feed` attribute.
  TfRef<String> get feed => TfRef.attribute<String>(this, 'feed');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
