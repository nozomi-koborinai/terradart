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

  final TfArg<ChronicleFeedDetailsFeedSourceType>? feedSourceType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> logType;

  final ChronicleFeedDetailsSource source;

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
sealed class ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSource();

  /// Sets `anomali_settings`.
  const factory ChronicleFeedDetailsSource.anomaliSettings(
    ChronicleFeedDetailsAnomaliSettings anomaliSettings,
  ) = ChronicleFeedDetailsSourceAnomaliSettings;

  /// Sets `azure_ad_context_settings`.
  const factory ChronicleFeedDetailsSource.azureAdContextSettings(
    ChronicleFeedDetailsAzureAdContextSettings azureAdContextSettings,
  ) = ChronicleFeedDetailsSourceAzureAdContextSettings;

  /// Sets `cloud_passage_settings`.
  const factory ChronicleFeedDetailsSource.cloudPassageSettings(
    ChronicleFeedDetailsCloudPassageSettings cloudPassageSettings,
  ) = ChronicleFeedDetailsSourceCloudPassageSettings;

  /// Sets `cortex_xdr_settings`.
  const factory ChronicleFeedDetailsSource.cortexXdrSettings(
    ChronicleFeedDetailsCortexXdrSettings cortexXdrSettings,
  ) = ChronicleFeedDetailsSourceCortexXdrSettings;

  /// Sets `duo_auth_settings`.
  const factory ChronicleFeedDetailsSource.duoAuthSettings(
    ChronicleFeedDetailsDuoAuthSettings duoAuthSettings,
  ) = ChronicleFeedDetailsSourceDuoAuthSettings;

  /// Sets `duo_user_context_settings`.
  const factory ChronicleFeedDetailsSource.duoUserContextSettings(
    ChronicleFeedDetailsDuoUserContextSettings duoUserContextSettings,
  ) = ChronicleFeedDetailsSourceDuoUserContextSettings;

  /// Sets `microsoft_graph_alert_settings`.
  const factory ChronicleFeedDetailsSource.microsoftGraphAlertSettings(
    ChronicleFeedDetailsMicrosoftGraphAlertSettings microsoftGraphAlertSettings,
  ) = ChronicleFeedDetailsSourceMicrosoftGraphAlertSettings;

  /// Sets `microsoft_security_center_alert_settings`.
  const factory ChronicleFeedDetailsSource.microsoftSecurityCenterAlertSettings(
    ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettings
    microsoftSecurityCenterAlertSettings,
  ) = ChronicleFeedDetailsSourceMicrosoftSecurityCenterAlertSettings;

  /// Sets `mimecast_mail_settings`.
  const factory ChronicleFeedDetailsSource.mimecastMailSettings(
    ChronicleFeedDetailsMimecastMailSettings mimecastMailSettings,
  ) = ChronicleFeedDetailsSourceMimecastMailSettings;

  /// Sets `office365_settings`.
  const factory ChronicleFeedDetailsSource.office365Settings(
    ChronicleFeedDetailsOffice365Settings office365Settings,
  ) = ChronicleFeedDetailsSourceOffice365Settings;

  /// Sets `proofpoint_mail_settings`.
  const factory ChronicleFeedDetailsSource.proofpointMailSettings(
    ChronicleFeedDetailsProofpointMailSettings proofpointMailSettings,
  ) = ChronicleFeedDetailsSourceProofpointMailSettings;

  /// Sets `recorded_future_ioc_settings`.
  const factory ChronicleFeedDetailsSource.recordedFutureIocSettings(
    ChronicleFeedDetailsRecordedFutureIocSettings recordedFutureIocSettings,
  ) = ChronicleFeedDetailsSourceRecordedFutureIocSettings;

  /// Sets `workday_settings`.
  const factory ChronicleFeedDetailsSource.workdaySettings(
    ChronicleFeedDetailsWorkdaySettings workdaySettings,
  ) = ChronicleFeedDetailsSourceWorkdaySettings;

  /// Sets `pan_ioc_settings`.
  const factory ChronicleFeedDetailsSource.panIocSettings(
    ChronicleFeedDetailsPanIocSettings panIocSettings,
  ) = ChronicleFeedDetailsSourcePanIocSettings;

  /// Sets `okta_settings`.
  const factory ChronicleFeedDetailsSource.oktaSettings(
    ChronicleFeedDetailsOktaSettings oktaSettings,
  ) = ChronicleFeedDetailsSourceOktaSettings;

  /// Sets `okta_user_context_settings`.
  const factory ChronicleFeedDetailsSource.oktaUserContextSettings(
    ChronicleFeedDetailsOktaUserContextSettings oktaUserContextSettings,
  ) = ChronicleFeedDetailsSourceOktaUserContextSettings;

  /// Sets `fox_it_stix_settings`.
  const factory ChronicleFeedDetailsSource.foxItStixSettings(
    ChronicleFeedDetailsFoxItStixSettings foxItStixSettings,
  ) = ChronicleFeedDetailsSourceFoxItStixSettings;

  /// Sets `threat_connect_ioc_settings`.
  const factory ChronicleFeedDetailsSource.threatConnectIocSettings(
    ChronicleFeedDetailsThreatConnectIocSettings threatConnectIocSettings,
  ) = ChronicleFeedDetailsSourceThreatConnectIocSettings;

  /// Sets `service_now_cmdb_settings`.
  const factory ChronicleFeedDetailsSource.serviceNowCmdbSettings(
    ChronicleFeedDetailsServiceNowCmdbSettings serviceNowCmdbSettings,
  ) = ChronicleFeedDetailsSourceServiceNowCmdbSettings;

  /// Sets `imperva_waf_settings`.
  const factory ChronicleFeedDetailsSource.impervaWafSettings(
    ChronicleFeedDetailsImpervaWafSettings impervaWafSettings,
  ) = ChronicleFeedDetailsSourceImpervaWafSettings;

  /// Sets `thinkst_canary_settings`.
  const factory ChronicleFeedDetailsSource.thinkstCanarySettings(
    ChronicleFeedDetailsThinkstCanarySettings thinkstCanarySettings,
  ) = ChronicleFeedDetailsSourceThinkstCanarySettings;

  /// Sets `rh_isac_ioc_settings`.
  const factory ChronicleFeedDetailsSource.rhIsacIocSettings(
    ChronicleFeedDetailsRhIsacIocSettings rhIsacIocSettings,
  ) = ChronicleFeedDetailsSourceRhIsacIocSettings;

  /// Sets `rapid7_insight_settings`.
  const factory ChronicleFeedDetailsSource.rapid7InsightSettings(
    ChronicleFeedDetailsRapid7InsightSettings rapid7InsightSettings,
  ) = ChronicleFeedDetailsSourceRapid7InsightSettings;

  /// Sets `salesforce_settings`.
  const factory ChronicleFeedDetailsSource.salesforceSettings(
    ChronicleFeedDetailsSalesforceSettings salesforceSettings,
  ) = ChronicleFeedDetailsSourceSalesforceSettings;

  /// Sets `netskope_alert_settings`.
  const factory ChronicleFeedDetailsSource.netskopeAlertSettings(
    ChronicleFeedDetailsNetskopeAlertSettings netskopeAlertSettings,
  ) = ChronicleFeedDetailsSourceNetskopeAlertSettings;

  /// Sets `azure_mdm_intune_settings`.
  const factory ChronicleFeedDetailsSource.azureMdmIntuneSettings(
    ChronicleFeedDetailsAzureMdmIntuneSettings azureMdmIntuneSettings,
  ) = ChronicleFeedDetailsSourceAzureMdmIntuneSettings;

  /// Sets `azure_ad_settings`.
  const factory ChronicleFeedDetailsSource.azureAdSettings(
    ChronicleFeedDetailsAzureAdSettings azureAdSettings,
  ) = ChronicleFeedDetailsSourceAzureAdSettings;

  /// Sets `proofpoint_on_demand_settings`.
  const factory ChronicleFeedDetailsSource.proofpointOnDemandSettings(
    ChronicleFeedDetailsProofpointOnDemandSettings proofpointOnDemandSettings,
  ) = ChronicleFeedDetailsSourceProofpointOnDemandSettings;

  /// Sets `workspace_users_settings`.
  const factory ChronicleFeedDetailsSource.workspaceUsersSettings(
    ChronicleFeedDetailsWorkspaceUsersSettings workspaceUsersSettings,
  ) = ChronicleFeedDetailsSourceWorkspaceUsersSettings;

  /// Sets `workspace_activity_settings`.
  const factory ChronicleFeedDetailsSource.workspaceActivitySettings(
    ChronicleFeedDetailsWorkspaceActivitySettings workspaceActivitySettings,
  ) = ChronicleFeedDetailsSourceWorkspaceActivitySettings;

  /// Sets `workspace_alerts_settings`.
  const factory ChronicleFeedDetailsSource.workspaceAlertsSettings(
    ChronicleFeedDetailsWorkspaceAlertsSettings workspaceAlertsSettings,
  ) = ChronicleFeedDetailsSourceWorkspaceAlertsSettings;

  /// Sets `workspace_privileges_settings`.
  const factory ChronicleFeedDetailsSource.workspacePrivilegesSettings(
    ChronicleFeedDetailsWorkspacePrivilegesSettings workspacePrivilegesSettings,
  ) = ChronicleFeedDetailsSourceWorkspacePrivilegesSettings;

  /// Sets `workspace_mobile_settings`.
  const factory ChronicleFeedDetailsSource.workspaceMobileSettings(
    ChronicleFeedDetailsWorkspaceMobileSettings workspaceMobileSettings,
  ) = ChronicleFeedDetailsSourceWorkspaceMobileSettings;

  /// Sets `workspace_chrome_os_settings`.
  const factory ChronicleFeedDetailsSource.workspaceChromeOsSettings(
    ChronicleFeedDetailsWorkspaceChromeOsSettings workspaceChromeOsSettings,
  ) = ChronicleFeedDetailsSourceWorkspaceChromeOsSettings;

  /// Sets `workspace_groups_settings`.
  const factory ChronicleFeedDetailsSource.workspaceGroupsSettings(
    ChronicleFeedDetailsWorkspaceGroupsSettings workspaceGroupsSettings,
  ) = ChronicleFeedDetailsSourceWorkspaceGroupsSettings;

  /// Sets `azure_ad_audit_settings`.
  const factory ChronicleFeedDetailsSource.azureAdAuditSettings(
    ChronicleFeedDetailsAzureAdAuditSettings azureAdAuditSettings,
  ) = ChronicleFeedDetailsSourceAzureAdAuditSettings;

  /// Sets `symantec_event_export_settings`.
  const factory ChronicleFeedDetailsSource.symantecEventExportSettings(
    ChronicleFeedDetailsSymantecEventExportSettings symantecEventExportSettings,
  ) = ChronicleFeedDetailsSourceSymantecEventExportSettings;

  /// Sets `qualys_vm_settings`.
  const factory ChronicleFeedDetailsSource.qualysVmSettings(
    ChronicleFeedDetailsQualysVmSettings qualysVmSettings,
  ) = ChronicleFeedDetailsSourceQualysVmSettings;

  /// Sets `pan_prisma_cloud_settings`.
  const factory ChronicleFeedDetailsSource.panPrismaCloudSettings(
    ChronicleFeedDetailsPanPrismaCloudSettings panPrismaCloudSettings,
  ) = ChronicleFeedDetailsSourcePanPrismaCloudSettings;

  /// Sets `gcs_settings`.
  const factory ChronicleFeedDetailsSource.gcsSettings(
    ChronicleFeedDetailsGcsSettings gcsSettings,
  ) = ChronicleFeedDetailsSourceGcsSettings;

  /// Sets `http_settings`.
  const factory ChronicleFeedDetailsSource.httpSettings(
    ChronicleFeedDetailsHttpSettings httpSettings,
  ) = ChronicleFeedDetailsSourceHttpSettings;

  /// Sets `sftp_settings`.
  const factory ChronicleFeedDetailsSource.sftpSettings(
    ChronicleFeedDetailsSftpSettings sftpSettings,
  ) = ChronicleFeedDetailsSourceSftpSettings;

  /// Sets `amazon_s3_settings`.
  const factory ChronicleFeedDetailsSource.amazonS3Settings(
    ChronicleFeedDetailsAmazonS3Settings amazonS3Settings,
  ) = ChronicleFeedDetailsSourceAmazonS3Settings;

  /// Sets `azure_blob_store_settings`.
  const factory ChronicleFeedDetailsSource.azureBlobStoreSettings(
    ChronicleFeedDetailsAzureBlobStoreSettings azureBlobStoreSettings,
  ) = ChronicleFeedDetailsSourceAzureBlobStoreSettings;

  /// Sets `amazon_sqs_settings`.
  const factory ChronicleFeedDetailsSource.amazonSqsSettings(
    ChronicleFeedDetailsAmazonSqsSettings amazonSqsSettings,
  ) = ChronicleFeedDetailsSourceAmazonSqsSettings;

  /// Sets `google_cloud_identity_devices_settings`.
  const factory ChronicleFeedDetailsSource.googleCloudIdentityDevicesSettings(
    ChronicleFeedDetailsGoogleCloudIdentityDevicesSettings
    googleCloudIdentityDevicesSettings,
  ) = ChronicleFeedDetailsSourceGoogleCloudIdentityDevicesSettings;

  /// Sets `google_cloud_identity_device_users_settings`.
  const factory ChronicleFeedDetailsSource.googleCloudIdentityDeviceUsersSettings(
    ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettings
    googleCloudIdentityDeviceUsersSettings,
  ) = ChronicleFeedDetailsSourceGoogleCloudIdentityDeviceUsersSettings;

  /// Sets `crowdstrike_detects_settings`.
  const factory ChronicleFeedDetailsSource.crowdstrikeDetectsSettings(
    ChronicleFeedDetailsCrowdstrikeDetectsSettings crowdstrikeDetectsSettings,
  ) = ChronicleFeedDetailsSourceCrowdstrikeDetectsSettings;

  /// Sets `mandiant_ioc_settings`.
  const factory ChronicleFeedDetailsSource.mandiantIocSettings(
    ChronicleFeedDetailsMandiantIocSettings mandiantIocSettings,
  ) = ChronicleFeedDetailsSourceMandiantIocSettings;

  /// Sets `sentinelone_alert_settings`.
  const factory ChronicleFeedDetailsSource.sentineloneAlertSettings(
    ChronicleFeedDetailsSentineloneAlertSettings sentineloneAlertSettings,
  ) = ChronicleFeedDetailsSourceSentineloneAlertSettings;

  /// Sets `qualys_scan_settings`.
  const factory ChronicleFeedDetailsSource.qualysScanSettings(
    ChronicleFeedDetailsQualysScanSettings qualysScanSettings,
  ) = ChronicleFeedDetailsSourceQualysScanSettings;

  /// Sets `pubsub_settings`.
  const factory ChronicleFeedDetailsSource.pubsubSettings(
    ChronicleFeedDetailsPubsubSettings pubsubSettings,
  ) = ChronicleFeedDetailsSourcePubsubSettings;

  /// Sets `amazon_kinesis_firehose_settings`.
  const factory ChronicleFeedDetailsSource.amazonKinesisFirehoseSettings(
    ChronicleFeedDetailsAmazonKinesisFirehoseSettings
    amazonKinesisFirehoseSettings,
  ) = ChronicleFeedDetailsSourceAmazonKinesisFirehoseSettings;

  /// Sets `webhook_settings`.
  const factory ChronicleFeedDetailsSource.webhookSettings(
    ChronicleFeedDetailsWebhookSettings webhookSettings,
  ) = ChronicleFeedDetailsSourceWebhookSettings;

  /// Sets `dummy_log_type_settings`.
  const factory ChronicleFeedDetailsSource.dummyLogTypeSettings(
    ChronicleFeedDetailsDummyLogTypeSettings dummyLogTypeSettings,
  ) = ChronicleFeedDetailsSourceDummyLogTypeSettings;

  /// Sets `https_push_google_cloud_pubsub_settings`.
  const factory ChronicleFeedDetailsSource.httpsPushGoogleCloudPubsubSettings(
    ChronicleFeedDetailsHttpsPushGoogleCloudPubsubSettings
    httpsPushGoogleCloudPubsubSettings,
  ) = ChronicleFeedDetailsSourceHttpsPushGoogleCloudPubsubSettings;

  /// Sets `https_push_amazon_kinesis_firehose_settings`.
  const factory ChronicleFeedDetailsSource.httpsPushAmazonKinesisFirehoseSettings(
    ChronicleFeedDetailsHttpsPushAmazonKinesisFirehoseSettings
    httpsPushAmazonKinesisFirehoseSettings,
  ) = ChronicleFeedDetailsSourceHttpsPushAmazonKinesisFirehoseSettings;

  /// Sets `https_push_webhook_settings`.
  const factory ChronicleFeedDetailsSource.httpsPushWebhookSettings(
    ChronicleFeedDetailsHttpsPushWebhookSettings httpsPushWebhookSettings,
  ) = ChronicleFeedDetailsSourceHttpsPushWebhookSettings;

  /// Sets `aws_ec2_hosts_settings`.
  const factory ChronicleFeedDetailsSource.awsEc2HostsSettings(
    ChronicleFeedDetailsAwsEc2HostsSettings awsEc2HostsSettings,
  ) = ChronicleFeedDetailsSourceAwsEc2HostsSettings;

  /// Sets `aws_ec2_instances_settings`.
  const factory ChronicleFeedDetailsSource.awsEc2InstancesSettings(
    ChronicleFeedDetailsAwsEc2InstancesSettings awsEc2InstancesSettings,
  ) = ChronicleFeedDetailsSourceAwsEc2InstancesSettings;

  /// Sets `aws_ec2_vpcs_settings`.
  const factory ChronicleFeedDetailsSource.awsEc2VpcsSettings(
    ChronicleFeedDetailsAwsEc2VpcsSettings awsEc2VpcsSettings,
  ) = ChronicleFeedDetailsSourceAwsEc2VpcsSettings;

  /// Sets `aws_iam_settings`.
  const factory ChronicleFeedDetailsSource.awsIamSettings(
    ChronicleFeedDetailsAwsIamSettings awsIamSettings,
  ) = ChronicleFeedDetailsSourceAwsIamSettings;

  /// Sets `netskope_alert_v2_settings`.
  const factory ChronicleFeedDetailsSource.netskopeAlertV2Settings(
    ChronicleFeedDetailsNetskopeAlertV2Settings netskopeAlertV2Settings,
  ) = ChronicleFeedDetailsSourceNetskopeAlertV2Settings;

  /// Sets `gcs_v2_settings`.
  const factory ChronicleFeedDetailsSource.gcsV2Settings(
    ChronicleFeedDetailsGcsV2Settings gcsV2Settings,
  ) = ChronicleFeedDetailsSourceGcsV2Settings;

  /// Sets `amazon_s3_v2_settings`.
  const factory ChronicleFeedDetailsSource.amazonS3V2Settings(
    ChronicleFeedDetailsAmazonS3V2Settings amazonS3V2Settings,
  ) = ChronicleFeedDetailsSourceAmazonS3V2Settings;

  /// Sets `amazon_sqs_v2_settings`.
  const factory ChronicleFeedDetailsSource.amazonSqsV2Settings(
    ChronicleFeedDetailsAmazonSqsV2Settings amazonSqsV2Settings,
  ) = ChronicleFeedDetailsSourceAmazonSqsV2Settings;

  /// Sets `azure_event_hub_settings`.
  const factory ChronicleFeedDetailsSource.azureEventHubSettings(
    ChronicleFeedDetailsAzureEventHubSettings azureEventHubSettings,
  ) = ChronicleFeedDetailsSourceAzureEventHubSettings;

  /// Sets `trellix_hx_hosts_settings`.
  const factory ChronicleFeedDetailsSource.trellixHxHostsSettings(
    ChronicleFeedDetailsTrellixHxHostsSettings trellixHxHostsSettings,
  ) = ChronicleFeedDetailsSourceTrellixHxHostsSettings;

  /// Sets `azure_blob_store_v2_settings`.
  const factory ChronicleFeedDetailsSource.azureBlobStoreV2Settings(
    ChronicleFeedDetailsAzureBlobStoreV2Settings azureBlobStoreV2Settings,
  ) = ChronicleFeedDetailsSourceAzureBlobStoreV2Settings;

  /// Sets `trellix_hx_alerts_settings`.
  const factory ChronicleFeedDetailsSource.trellixHxAlertsSettings(
    ChronicleFeedDetailsTrellixHxAlertsSettings trellixHxAlertsSettings,
  ) = ChronicleFeedDetailsSourceTrellixHxAlertsSettings;

  /// Sets `google_cloud_storage_event_driven_settings`.
  const factory ChronicleFeedDetailsSource.googleCloudStorageEventDrivenSettings(
    ChronicleFeedDetailsGoogleCloudStorageEventDrivenSettings
    googleCloudStorageEventDrivenSettings,
  ) = ChronicleFeedDetailsSourceGoogleCloudStorageEventDrivenSettings;

  /// Sets `crowdstrike_alerts_settings`.
  const factory ChronicleFeedDetailsSource.crowdstrikeAlertsSettings(
    ChronicleFeedDetailsCrowdstrikeAlertsSettings crowdstrikeAlertsSettings,
  ) = ChronicleFeedDetailsSourceCrowdstrikeAlertsSettings;

  /// Sets `trellix_hx_bulk_acqs_settings`.
  const factory ChronicleFeedDetailsSource.trellixHxBulkAcqsSettings(
    ChronicleFeedDetailsTrellixHxBulkAcqsSettings trellixHxBulkAcqsSettings,
  ) = ChronicleFeedDetailsSourceTrellixHxBulkAcqsSettings;

  /// Sets `mimecast_mail_v2_settings`.
  const factory ChronicleFeedDetailsSource.mimecastMailV2Settings(
    ChronicleFeedDetailsMimecastMailV2Settings mimecastMailV2Settings,
  ) = ChronicleFeedDetailsSourceMimecastMailV2Settings;

  /// Sets `threat_connect_ioc_v3_settings`.
  const factory ChronicleFeedDetailsSource.threatConnectIocV3Settings(
    ChronicleFeedDetailsThreatConnectIocV3Settings threatConnectIocV3Settings,
  ) = ChronicleFeedDetailsSourceThreatConnectIocV3Settings;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ChronicleFeedDetailsSource.anomaliSettings] choice: sets `anomali_settings`.
final class ChronicleFeedDetailsSourceAnomaliSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAnomaliSettings(this.anomaliSettings);

  final ChronicleFeedDetailsAnomaliSettings anomaliSettings;

  @override
  String get blockKey => 'anomali_settings';

  @override
  Map<String, Object?> encode() => {
    'anomali_settings': anomaliSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureAdContextSettings] choice: sets `azure_ad_context_settings`.
final class ChronicleFeedDetailsSourceAzureAdContextSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureAdContextSettings(
    this.azureAdContextSettings,
  );

  final ChronicleFeedDetailsAzureAdContextSettings azureAdContextSettings;

  @override
  String get blockKey => 'azure_ad_context_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_context_settings': azureAdContextSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.cloudPassageSettings] choice: sets `cloud_passage_settings`.
final class ChronicleFeedDetailsSourceCloudPassageSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceCloudPassageSettings(
    this.cloudPassageSettings,
  );

  final ChronicleFeedDetailsCloudPassageSettings cloudPassageSettings;

  @override
  String get blockKey => 'cloud_passage_settings';

  @override
  Map<String, Object?> encode() => {
    'cloud_passage_settings': cloudPassageSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.cortexXdrSettings] choice: sets `cortex_xdr_settings`.
final class ChronicleFeedDetailsSourceCortexXdrSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceCortexXdrSettings(this.cortexXdrSettings);

  final ChronicleFeedDetailsCortexXdrSettings cortexXdrSettings;

  @override
  String get blockKey => 'cortex_xdr_settings';

  @override
  Map<String, Object?> encode() => {
    'cortex_xdr_settings': cortexXdrSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.duoAuthSettings] choice: sets `duo_auth_settings`.
final class ChronicleFeedDetailsSourceDuoAuthSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceDuoAuthSettings(this.duoAuthSettings);

  final ChronicleFeedDetailsDuoAuthSettings duoAuthSettings;

  @override
  String get blockKey => 'duo_auth_settings';

  @override
  Map<String, Object?> encode() => {
    'duo_auth_settings': duoAuthSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.duoUserContextSettings] choice: sets `duo_user_context_settings`.
final class ChronicleFeedDetailsSourceDuoUserContextSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceDuoUserContextSettings(
    this.duoUserContextSettings,
  );

  final ChronicleFeedDetailsDuoUserContextSettings duoUserContextSettings;

  @override
  String get blockKey => 'duo_user_context_settings';

  @override
  Map<String, Object?> encode() => {
    'duo_user_context_settings': duoUserContextSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.microsoftGraphAlertSettings] choice: sets `microsoft_graph_alert_settings`.
final class ChronicleFeedDetailsSourceMicrosoftGraphAlertSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceMicrosoftGraphAlertSettings(
    this.microsoftGraphAlertSettings,
  );

  final ChronicleFeedDetailsMicrosoftGraphAlertSettings
  microsoftGraphAlertSettings;

  @override
  String get blockKey => 'microsoft_graph_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'microsoft_graph_alert_settings': microsoftGraphAlertSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.microsoftSecurityCenterAlertSettings] choice: sets `microsoft_security_center_alert_settings`.
final class ChronicleFeedDetailsSourceMicrosoftSecurityCenterAlertSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceMicrosoftSecurityCenterAlertSettings(
    this.microsoftSecurityCenterAlertSettings,
  );

  final ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettings
  microsoftSecurityCenterAlertSettings;

  @override
  String get blockKey => 'microsoft_security_center_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'microsoft_security_center_alert_settings':
        microsoftSecurityCenterAlertSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.mimecastMailSettings] choice: sets `mimecast_mail_settings`.
final class ChronicleFeedDetailsSourceMimecastMailSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceMimecastMailSettings(
    this.mimecastMailSettings,
  );

  final ChronicleFeedDetailsMimecastMailSettings mimecastMailSettings;

  @override
  String get blockKey => 'mimecast_mail_settings';

  @override
  Map<String, Object?> encode() => {
    'mimecast_mail_settings': mimecastMailSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.office365Settings] choice: sets `office365_settings`.
final class ChronicleFeedDetailsSourceOffice365Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceOffice365Settings(this.office365Settings);

  final ChronicleFeedDetailsOffice365Settings office365Settings;

  @override
  String get blockKey => 'office365_settings';

  @override
  Map<String, Object?> encode() => {
    'office365_settings': office365Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.proofpointMailSettings] choice: sets `proofpoint_mail_settings`.
final class ChronicleFeedDetailsSourceProofpointMailSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceProofpointMailSettings(
    this.proofpointMailSettings,
  );

  final ChronicleFeedDetailsProofpointMailSettings proofpointMailSettings;

  @override
  String get blockKey => 'proofpoint_mail_settings';

  @override
  Map<String, Object?> encode() => {
    'proofpoint_mail_settings': proofpointMailSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.recordedFutureIocSettings] choice: sets `recorded_future_ioc_settings`.
final class ChronicleFeedDetailsSourceRecordedFutureIocSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceRecordedFutureIocSettings(
    this.recordedFutureIocSettings,
  );

  final ChronicleFeedDetailsRecordedFutureIocSettings recordedFutureIocSettings;

  @override
  String get blockKey => 'recorded_future_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'recorded_future_ioc_settings': recordedFutureIocSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workdaySettings] choice: sets `workday_settings`.
final class ChronicleFeedDetailsSourceWorkdaySettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkdaySettings(this.workdaySettings);

  final ChronicleFeedDetailsWorkdaySettings workdaySettings;

  @override
  String get blockKey => 'workday_settings';

  @override
  Map<String, Object?> encode() => {
    'workday_settings': workdaySettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.panIocSettings] choice: sets `pan_ioc_settings`.
final class ChronicleFeedDetailsSourcePanIocSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourcePanIocSettings(this.panIocSettings);

  final ChronicleFeedDetailsPanIocSettings panIocSettings;

  @override
  String get blockKey => 'pan_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'pan_ioc_settings': panIocSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.oktaSettings] choice: sets `okta_settings`.
final class ChronicleFeedDetailsSourceOktaSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceOktaSettings(this.oktaSettings);

  final ChronicleFeedDetailsOktaSettings oktaSettings;

  @override
  String get blockKey => 'okta_settings';

  @override
  Map<String, Object?> encode() => {'okta_settings': oktaSettings.encode()};
}

/// The [ChronicleFeedDetailsSource.oktaUserContextSettings] choice: sets `okta_user_context_settings`.
final class ChronicleFeedDetailsSourceOktaUserContextSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceOktaUserContextSettings(
    this.oktaUserContextSettings,
  );

  final ChronicleFeedDetailsOktaUserContextSettings oktaUserContextSettings;

  @override
  String get blockKey => 'okta_user_context_settings';

  @override
  Map<String, Object?> encode() => {
    'okta_user_context_settings': oktaUserContextSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.foxItStixSettings] choice: sets `fox_it_stix_settings`.
final class ChronicleFeedDetailsSourceFoxItStixSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceFoxItStixSettings(this.foxItStixSettings);

  final ChronicleFeedDetailsFoxItStixSettings foxItStixSettings;

  @override
  String get blockKey => 'fox_it_stix_settings';

  @override
  Map<String, Object?> encode() => {
    'fox_it_stix_settings': foxItStixSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.threatConnectIocSettings] choice: sets `threat_connect_ioc_settings`.
final class ChronicleFeedDetailsSourceThreatConnectIocSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceThreatConnectIocSettings(
    this.threatConnectIocSettings,
  );

  final ChronicleFeedDetailsThreatConnectIocSettings threatConnectIocSettings;

  @override
  String get blockKey => 'threat_connect_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'threat_connect_ioc_settings': threatConnectIocSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.serviceNowCmdbSettings] choice: sets `service_now_cmdb_settings`.
final class ChronicleFeedDetailsSourceServiceNowCmdbSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceServiceNowCmdbSettings(
    this.serviceNowCmdbSettings,
  );

  final ChronicleFeedDetailsServiceNowCmdbSettings serviceNowCmdbSettings;

  @override
  String get blockKey => 'service_now_cmdb_settings';

  @override
  Map<String, Object?> encode() => {
    'service_now_cmdb_settings': serviceNowCmdbSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.impervaWafSettings] choice: sets `imperva_waf_settings`.
final class ChronicleFeedDetailsSourceImpervaWafSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceImpervaWafSettings(this.impervaWafSettings);

  final ChronicleFeedDetailsImpervaWafSettings impervaWafSettings;

  @override
  String get blockKey => 'imperva_waf_settings';

  @override
  Map<String, Object?> encode() => {
    'imperva_waf_settings': impervaWafSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.thinkstCanarySettings] choice: sets `thinkst_canary_settings`.
final class ChronicleFeedDetailsSourceThinkstCanarySettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceThinkstCanarySettings(
    this.thinkstCanarySettings,
  );

  final ChronicleFeedDetailsThinkstCanarySettings thinkstCanarySettings;

  @override
  String get blockKey => 'thinkst_canary_settings';

  @override
  Map<String, Object?> encode() => {
    'thinkst_canary_settings': thinkstCanarySettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.rhIsacIocSettings] choice: sets `rh_isac_ioc_settings`.
final class ChronicleFeedDetailsSourceRhIsacIocSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceRhIsacIocSettings(this.rhIsacIocSettings);

  final ChronicleFeedDetailsRhIsacIocSettings rhIsacIocSettings;

  @override
  String get blockKey => 'rh_isac_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'rh_isac_ioc_settings': rhIsacIocSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.rapid7InsightSettings] choice: sets `rapid7_insight_settings`.
final class ChronicleFeedDetailsSourceRapid7InsightSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceRapid7InsightSettings(
    this.rapid7InsightSettings,
  );

  final ChronicleFeedDetailsRapid7InsightSettings rapid7InsightSettings;

  @override
  String get blockKey => 'rapid7_insight_settings';

  @override
  Map<String, Object?> encode() => {
    'rapid7_insight_settings': rapid7InsightSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.salesforceSettings] choice: sets `salesforce_settings`.
final class ChronicleFeedDetailsSourceSalesforceSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceSalesforceSettings(this.salesforceSettings);

  final ChronicleFeedDetailsSalesforceSettings salesforceSettings;

  @override
  String get blockKey => 'salesforce_settings';

  @override
  Map<String, Object?> encode() => {
    'salesforce_settings': salesforceSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.netskopeAlertSettings] choice: sets `netskope_alert_settings`.
final class ChronicleFeedDetailsSourceNetskopeAlertSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceNetskopeAlertSettings(
    this.netskopeAlertSettings,
  );

  final ChronicleFeedDetailsNetskopeAlertSettings netskopeAlertSettings;

  @override
  String get blockKey => 'netskope_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'netskope_alert_settings': netskopeAlertSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureMdmIntuneSettings] choice: sets `azure_mdm_intune_settings`.
final class ChronicleFeedDetailsSourceAzureMdmIntuneSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureMdmIntuneSettings(
    this.azureMdmIntuneSettings,
  );

  final ChronicleFeedDetailsAzureMdmIntuneSettings azureMdmIntuneSettings;

  @override
  String get blockKey => 'azure_mdm_intune_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_mdm_intune_settings': azureMdmIntuneSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureAdSettings] choice: sets `azure_ad_settings`.
final class ChronicleFeedDetailsSourceAzureAdSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureAdSettings(this.azureAdSettings);

  final ChronicleFeedDetailsAzureAdSettings azureAdSettings;

  @override
  String get blockKey => 'azure_ad_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_settings': azureAdSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.proofpointOnDemandSettings] choice: sets `proofpoint_on_demand_settings`.
final class ChronicleFeedDetailsSourceProofpointOnDemandSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceProofpointOnDemandSettings(
    this.proofpointOnDemandSettings,
  );

  final ChronicleFeedDetailsProofpointOnDemandSettings
  proofpointOnDemandSettings;

  @override
  String get blockKey => 'proofpoint_on_demand_settings';

  @override
  Map<String, Object?> encode() => {
    'proofpoint_on_demand_settings': proofpointOnDemandSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceUsersSettings] choice: sets `workspace_users_settings`.
final class ChronicleFeedDetailsSourceWorkspaceUsersSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceUsersSettings(
    this.workspaceUsersSettings,
  );

  final ChronicleFeedDetailsWorkspaceUsersSettings workspaceUsersSettings;

  @override
  String get blockKey => 'workspace_users_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_users_settings': workspaceUsersSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceActivitySettings] choice: sets `workspace_activity_settings`.
final class ChronicleFeedDetailsSourceWorkspaceActivitySettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceActivitySettings(
    this.workspaceActivitySettings,
  );

  final ChronicleFeedDetailsWorkspaceActivitySettings workspaceActivitySettings;

  @override
  String get blockKey => 'workspace_activity_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_activity_settings': workspaceActivitySettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceAlertsSettings] choice: sets `workspace_alerts_settings`.
final class ChronicleFeedDetailsSourceWorkspaceAlertsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceAlertsSettings(
    this.workspaceAlertsSettings,
  );

  final ChronicleFeedDetailsWorkspaceAlertsSettings workspaceAlertsSettings;

  @override
  String get blockKey => 'workspace_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_alerts_settings': workspaceAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspacePrivilegesSettings] choice: sets `workspace_privileges_settings`.
final class ChronicleFeedDetailsSourceWorkspacePrivilegesSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspacePrivilegesSettings(
    this.workspacePrivilegesSettings,
  );

  final ChronicleFeedDetailsWorkspacePrivilegesSettings
  workspacePrivilegesSettings;

  @override
  String get blockKey => 'workspace_privileges_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_privileges_settings': workspacePrivilegesSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceMobileSettings] choice: sets `workspace_mobile_settings`.
final class ChronicleFeedDetailsSourceWorkspaceMobileSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceMobileSettings(
    this.workspaceMobileSettings,
  );

  final ChronicleFeedDetailsWorkspaceMobileSettings workspaceMobileSettings;

  @override
  String get blockKey => 'workspace_mobile_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_mobile_settings': workspaceMobileSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceChromeOsSettings] choice: sets `workspace_chrome_os_settings`.
final class ChronicleFeedDetailsSourceWorkspaceChromeOsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceChromeOsSettings(
    this.workspaceChromeOsSettings,
  );

  final ChronicleFeedDetailsWorkspaceChromeOsSettings workspaceChromeOsSettings;

  @override
  String get blockKey => 'workspace_chrome_os_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_chrome_os_settings': workspaceChromeOsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.workspaceGroupsSettings] choice: sets `workspace_groups_settings`.
final class ChronicleFeedDetailsSourceWorkspaceGroupsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWorkspaceGroupsSettings(
    this.workspaceGroupsSettings,
  );

  final ChronicleFeedDetailsWorkspaceGroupsSettings workspaceGroupsSettings;

  @override
  String get blockKey => 'workspace_groups_settings';

  @override
  Map<String, Object?> encode() => {
    'workspace_groups_settings': workspaceGroupsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureAdAuditSettings] choice: sets `azure_ad_audit_settings`.
final class ChronicleFeedDetailsSourceAzureAdAuditSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureAdAuditSettings(
    this.azureAdAuditSettings,
  );

  final ChronicleFeedDetailsAzureAdAuditSettings azureAdAuditSettings;

  @override
  String get blockKey => 'azure_ad_audit_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_ad_audit_settings': azureAdAuditSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.symantecEventExportSettings] choice: sets `symantec_event_export_settings`.
final class ChronicleFeedDetailsSourceSymantecEventExportSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceSymantecEventExportSettings(
    this.symantecEventExportSettings,
  );

  final ChronicleFeedDetailsSymantecEventExportSettings
  symantecEventExportSettings;

  @override
  String get blockKey => 'symantec_event_export_settings';

  @override
  Map<String, Object?> encode() => {
    'symantec_event_export_settings': symantecEventExportSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.qualysVmSettings] choice: sets `qualys_vm_settings`.
final class ChronicleFeedDetailsSourceQualysVmSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceQualysVmSettings(this.qualysVmSettings);

  final ChronicleFeedDetailsQualysVmSettings qualysVmSettings;

  @override
  String get blockKey => 'qualys_vm_settings';

  @override
  Map<String, Object?> encode() => {
    'qualys_vm_settings': qualysVmSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.panPrismaCloudSettings] choice: sets `pan_prisma_cloud_settings`.
final class ChronicleFeedDetailsSourcePanPrismaCloudSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourcePanPrismaCloudSettings(
    this.panPrismaCloudSettings,
  );

  final ChronicleFeedDetailsPanPrismaCloudSettings panPrismaCloudSettings;

  @override
  String get blockKey => 'pan_prisma_cloud_settings';

  @override
  Map<String, Object?> encode() => {
    'pan_prisma_cloud_settings': panPrismaCloudSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.gcsSettings] choice: sets `gcs_settings`.
final class ChronicleFeedDetailsSourceGcsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceGcsSettings(this.gcsSettings);

  final ChronicleFeedDetailsGcsSettings gcsSettings;

  @override
  String get blockKey => 'gcs_settings';

  @override
  Map<String, Object?> encode() => {'gcs_settings': gcsSettings.encode()};
}

/// The [ChronicleFeedDetailsSource.httpSettings] choice: sets `http_settings`.
final class ChronicleFeedDetailsSourceHttpSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceHttpSettings(this.httpSettings);

  final ChronicleFeedDetailsHttpSettings httpSettings;

  @override
  String get blockKey => 'http_settings';

  @override
  Map<String, Object?> encode() => {'http_settings': httpSettings.encode()};
}

/// The [ChronicleFeedDetailsSource.sftpSettings] choice: sets `sftp_settings`.
final class ChronicleFeedDetailsSourceSftpSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceSftpSettings(this.sftpSettings);

  final ChronicleFeedDetailsSftpSettings sftpSettings;

  @override
  String get blockKey => 'sftp_settings';

  @override
  Map<String, Object?> encode() => {'sftp_settings': sftpSettings.encode()};
}

/// The [ChronicleFeedDetailsSource.amazonS3Settings] choice: sets `amazon_s3_settings`.
final class ChronicleFeedDetailsSourceAmazonS3Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAmazonS3Settings(this.amazonS3Settings);

  final ChronicleFeedDetailsAmazonS3Settings amazonS3Settings;

  @override
  String get blockKey => 'amazon_s3_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_s3_settings': amazonS3Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureBlobStoreSettings] choice: sets `azure_blob_store_settings`.
final class ChronicleFeedDetailsSourceAzureBlobStoreSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureBlobStoreSettings(
    this.azureBlobStoreSettings,
  );

  final ChronicleFeedDetailsAzureBlobStoreSettings azureBlobStoreSettings;

  @override
  String get blockKey => 'azure_blob_store_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_blob_store_settings': azureBlobStoreSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.amazonSqsSettings] choice: sets `amazon_sqs_settings`.
final class ChronicleFeedDetailsSourceAmazonSqsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAmazonSqsSettings(this.amazonSqsSettings);

  final ChronicleFeedDetailsAmazonSqsSettings amazonSqsSettings;

  @override
  String get blockKey => 'amazon_sqs_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_sqs_settings': amazonSqsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.googleCloudIdentityDevicesSettings] choice: sets `google_cloud_identity_devices_settings`.
final class ChronicleFeedDetailsSourceGoogleCloudIdentityDevicesSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceGoogleCloudIdentityDevicesSettings(
    this.googleCloudIdentityDevicesSettings,
  );

  final ChronicleFeedDetailsGoogleCloudIdentityDevicesSettings
  googleCloudIdentityDevicesSettings;

  @override
  String get blockKey => 'google_cloud_identity_devices_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_identity_devices_settings': googleCloudIdentityDevicesSettings
        .encode(),
  };
}

/// The [ChronicleFeedDetailsSource.googleCloudIdentityDeviceUsersSettings] choice: sets `google_cloud_identity_device_users_settings`.
final class ChronicleFeedDetailsSourceGoogleCloudIdentityDeviceUsersSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceGoogleCloudIdentityDeviceUsersSettings(
    this.googleCloudIdentityDeviceUsersSettings,
  );

  final ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettings
  googleCloudIdentityDeviceUsersSettings;

  @override
  String get blockKey => 'google_cloud_identity_device_users_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_identity_device_users_settings':
        googleCloudIdentityDeviceUsersSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.crowdstrikeDetectsSettings] choice: sets `crowdstrike_detects_settings`.
final class ChronicleFeedDetailsSourceCrowdstrikeDetectsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceCrowdstrikeDetectsSettings(
    this.crowdstrikeDetectsSettings,
  );

  final ChronicleFeedDetailsCrowdstrikeDetectsSettings
  crowdstrikeDetectsSettings;

  @override
  String get blockKey => 'crowdstrike_detects_settings';

  @override
  Map<String, Object?> encode() => {
    'crowdstrike_detects_settings': crowdstrikeDetectsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.mandiantIocSettings] choice: sets `mandiant_ioc_settings`.
final class ChronicleFeedDetailsSourceMandiantIocSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceMandiantIocSettings(this.mandiantIocSettings);

  final ChronicleFeedDetailsMandiantIocSettings mandiantIocSettings;

  @override
  String get blockKey => 'mandiant_ioc_settings';

  @override
  Map<String, Object?> encode() => {
    'mandiant_ioc_settings': mandiantIocSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.sentineloneAlertSettings] choice: sets `sentinelone_alert_settings`.
final class ChronicleFeedDetailsSourceSentineloneAlertSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceSentineloneAlertSettings(
    this.sentineloneAlertSettings,
  );

  final ChronicleFeedDetailsSentineloneAlertSettings sentineloneAlertSettings;

  @override
  String get blockKey => 'sentinelone_alert_settings';

  @override
  Map<String, Object?> encode() => {
    'sentinelone_alert_settings': sentineloneAlertSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.qualysScanSettings] choice: sets `qualys_scan_settings`.
final class ChronicleFeedDetailsSourceQualysScanSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceQualysScanSettings(this.qualysScanSettings);

  final ChronicleFeedDetailsQualysScanSettings qualysScanSettings;

  @override
  String get blockKey => 'qualys_scan_settings';

  @override
  Map<String, Object?> encode() => {
    'qualys_scan_settings': qualysScanSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.pubsubSettings] choice: sets `pubsub_settings`.
final class ChronicleFeedDetailsSourcePubsubSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourcePubsubSettings(this.pubsubSettings);

  final ChronicleFeedDetailsPubsubSettings pubsubSettings;

  @override
  String get blockKey => 'pubsub_settings';

  @override
  Map<String, Object?> encode() => {'pubsub_settings': pubsubSettings.encode()};
}

/// The [ChronicleFeedDetailsSource.amazonKinesisFirehoseSettings] choice: sets `amazon_kinesis_firehose_settings`.
final class ChronicleFeedDetailsSourceAmazonKinesisFirehoseSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAmazonKinesisFirehoseSettings(
    this.amazonKinesisFirehoseSettings,
  );

  final ChronicleFeedDetailsAmazonKinesisFirehoseSettings
  amazonKinesisFirehoseSettings;

  @override
  String get blockKey => 'amazon_kinesis_firehose_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_kinesis_firehose_settings': amazonKinesisFirehoseSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.webhookSettings] choice: sets `webhook_settings`.
final class ChronicleFeedDetailsSourceWebhookSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceWebhookSettings(this.webhookSettings);

  final ChronicleFeedDetailsWebhookSettings webhookSettings;

  @override
  String get blockKey => 'webhook_settings';

  @override
  Map<String, Object?> encode() => {
    'webhook_settings': webhookSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.dummyLogTypeSettings] choice: sets `dummy_log_type_settings`.
final class ChronicleFeedDetailsSourceDummyLogTypeSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceDummyLogTypeSettings(
    this.dummyLogTypeSettings,
  );

  final ChronicleFeedDetailsDummyLogTypeSettings dummyLogTypeSettings;

  @override
  String get blockKey => 'dummy_log_type_settings';

  @override
  Map<String, Object?> encode() => {
    'dummy_log_type_settings': dummyLogTypeSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.httpsPushGoogleCloudPubsubSettings] choice: sets `https_push_google_cloud_pubsub_settings`.
final class ChronicleFeedDetailsSourceHttpsPushGoogleCloudPubsubSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceHttpsPushGoogleCloudPubsubSettings(
    this.httpsPushGoogleCloudPubsubSettings,
  );

  final ChronicleFeedDetailsHttpsPushGoogleCloudPubsubSettings
  httpsPushGoogleCloudPubsubSettings;

  @override
  String get blockKey => 'https_push_google_cloud_pubsub_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_google_cloud_pubsub_settings':
        httpsPushGoogleCloudPubsubSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.httpsPushAmazonKinesisFirehoseSettings] choice: sets `https_push_amazon_kinesis_firehose_settings`.
final class ChronicleFeedDetailsSourceHttpsPushAmazonKinesisFirehoseSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceHttpsPushAmazonKinesisFirehoseSettings(
    this.httpsPushAmazonKinesisFirehoseSettings,
  );

  final ChronicleFeedDetailsHttpsPushAmazonKinesisFirehoseSettings
  httpsPushAmazonKinesisFirehoseSettings;

  @override
  String get blockKey => 'https_push_amazon_kinesis_firehose_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_amazon_kinesis_firehose_settings':
        httpsPushAmazonKinesisFirehoseSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.httpsPushWebhookSettings] choice: sets `https_push_webhook_settings`.
final class ChronicleFeedDetailsSourceHttpsPushWebhookSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceHttpsPushWebhookSettings(
    this.httpsPushWebhookSettings,
  );

  final ChronicleFeedDetailsHttpsPushWebhookSettings httpsPushWebhookSettings;

  @override
  String get blockKey => 'https_push_webhook_settings';

  @override
  Map<String, Object?> encode() => {
    'https_push_webhook_settings': httpsPushWebhookSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.awsEc2HostsSettings] choice: sets `aws_ec2_hosts_settings`.
final class ChronicleFeedDetailsSourceAwsEc2HostsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAwsEc2HostsSettings(this.awsEc2HostsSettings);

  final ChronicleFeedDetailsAwsEc2HostsSettings awsEc2HostsSettings;

  @override
  String get blockKey => 'aws_ec2_hosts_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_hosts_settings': awsEc2HostsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.awsEc2InstancesSettings] choice: sets `aws_ec2_instances_settings`.
final class ChronicleFeedDetailsSourceAwsEc2InstancesSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAwsEc2InstancesSettings(
    this.awsEc2InstancesSettings,
  );

  final ChronicleFeedDetailsAwsEc2InstancesSettings awsEc2InstancesSettings;

  @override
  String get blockKey => 'aws_ec2_instances_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_instances_settings': awsEc2InstancesSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.awsEc2VpcsSettings] choice: sets `aws_ec2_vpcs_settings`.
final class ChronicleFeedDetailsSourceAwsEc2VpcsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAwsEc2VpcsSettings(this.awsEc2VpcsSettings);

  final ChronicleFeedDetailsAwsEc2VpcsSettings awsEc2VpcsSettings;

  @override
  String get blockKey => 'aws_ec2_vpcs_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_ec2_vpcs_settings': awsEc2VpcsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.awsIamSettings] choice: sets `aws_iam_settings`.
final class ChronicleFeedDetailsSourceAwsIamSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAwsIamSettings(this.awsIamSettings);

  final ChronicleFeedDetailsAwsIamSettings awsIamSettings;

  @override
  String get blockKey => 'aws_iam_settings';

  @override
  Map<String, Object?> encode() => {
    'aws_iam_settings': awsIamSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.netskopeAlertV2Settings] choice: sets `netskope_alert_v2_settings`.
final class ChronicleFeedDetailsSourceNetskopeAlertV2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceNetskopeAlertV2Settings(
    this.netskopeAlertV2Settings,
  );

  final ChronicleFeedDetailsNetskopeAlertV2Settings netskopeAlertV2Settings;

  @override
  String get blockKey => 'netskope_alert_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'netskope_alert_v2_settings': netskopeAlertV2Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.gcsV2Settings] choice: sets `gcs_v2_settings`.
final class ChronicleFeedDetailsSourceGcsV2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceGcsV2Settings(this.gcsV2Settings);

  final ChronicleFeedDetailsGcsV2Settings gcsV2Settings;

  @override
  String get blockKey => 'gcs_v2_settings';

  @override
  Map<String, Object?> encode() => {'gcs_v2_settings': gcsV2Settings.encode()};
}

/// The [ChronicleFeedDetailsSource.amazonS3V2Settings] choice: sets `amazon_s3_v2_settings`.
final class ChronicleFeedDetailsSourceAmazonS3V2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAmazonS3V2Settings(this.amazonS3V2Settings);

  final ChronicleFeedDetailsAmazonS3V2Settings amazonS3V2Settings;

  @override
  String get blockKey => 'amazon_s3_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_s3_v2_settings': amazonS3V2Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.amazonSqsV2Settings] choice: sets `amazon_sqs_v2_settings`.
final class ChronicleFeedDetailsSourceAmazonSqsV2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAmazonSqsV2Settings(this.amazonSqsV2Settings);

  final ChronicleFeedDetailsAmazonSqsV2Settings amazonSqsV2Settings;

  @override
  String get blockKey => 'amazon_sqs_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'amazon_sqs_v2_settings': amazonSqsV2Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureEventHubSettings] choice: sets `azure_event_hub_settings`.
final class ChronicleFeedDetailsSourceAzureEventHubSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureEventHubSettings(
    this.azureEventHubSettings,
  );

  final ChronicleFeedDetailsAzureEventHubSettings azureEventHubSettings;

  @override
  String get blockKey => 'azure_event_hub_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_event_hub_settings': azureEventHubSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.trellixHxHostsSettings] choice: sets `trellix_hx_hosts_settings`.
final class ChronicleFeedDetailsSourceTrellixHxHostsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceTrellixHxHostsSettings(
    this.trellixHxHostsSettings,
  );

  final ChronicleFeedDetailsTrellixHxHostsSettings trellixHxHostsSettings;

  @override
  String get blockKey => 'trellix_hx_hosts_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_hosts_settings': trellixHxHostsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.azureBlobStoreV2Settings] choice: sets `azure_blob_store_v2_settings`.
final class ChronicleFeedDetailsSourceAzureBlobStoreV2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceAzureBlobStoreV2Settings(
    this.azureBlobStoreV2Settings,
  );

  final ChronicleFeedDetailsAzureBlobStoreV2Settings azureBlobStoreV2Settings;

  @override
  String get blockKey => 'azure_blob_store_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'azure_blob_store_v2_settings': azureBlobStoreV2Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.trellixHxAlertsSettings] choice: sets `trellix_hx_alerts_settings`.
final class ChronicleFeedDetailsSourceTrellixHxAlertsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceTrellixHxAlertsSettings(
    this.trellixHxAlertsSettings,
  );

  final ChronicleFeedDetailsTrellixHxAlertsSettings trellixHxAlertsSettings;

  @override
  String get blockKey => 'trellix_hx_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_alerts_settings': trellixHxAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.googleCloudStorageEventDrivenSettings] choice: sets `google_cloud_storage_event_driven_settings`.
final class ChronicleFeedDetailsSourceGoogleCloudStorageEventDrivenSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceGoogleCloudStorageEventDrivenSettings(
    this.googleCloudStorageEventDrivenSettings,
  );

  final ChronicleFeedDetailsGoogleCloudStorageEventDrivenSettings
  googleCloudStorageEventDrivenSettings;

  @override
  String get blockKey => 'google_cloud_storage_event_driven_settings';

  @override
  Map<String, Object?> encode() => {
    'google_cloud_storage_event_driven_settings':
        googleCloudStorageEventDrivenSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.crowdstrikeAlertsSettings] choice: sets `crowdstrike_alerts_settings`.
final class ChronicleFeedDetailsSourceCrowdstrikeAlertsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceCrowdstrikeAlertsSettings(
    this.crowdstrikeAlertsSettings,
  );

  final ChronicleFeedDetailsCrowdstrikeAlertsSettings crowdstrikeAlertsSettings;

  @override
  String get blockKey => 'crowdstrike_alerts_settings';

  @override
  Map<String, Object?> encode() => {
    'crowdstrike_alerts_settings': crowdstrikeAlertsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.trellixHxBulkAcqsSettings] choice: sets `trellix_hx_bulk_acqs_settings`.
final class ChronicleFeedDetailsSourceTrellixHxBulkAcqsSettings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceTrellixHxBulkAcqsSettings(
    this.trellixHxBulkAcqsSettings,
  );

  final ChronicleFeedDetailsTrellixHxBulkAcqsSettings trellixHxBulkAcqsSettings;

  @override
  String get blockKey => 'trellix_hx_bulk_acqs_settings';

  @override
  Map<String, Object?> encode() => {
    'trellix_hx_bulk_acqs_settings': trellixHxBulkAcqsSettings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.mimecastMailV2Settings] choice: sets `mimecast_mail_v2_settings`.
final class ChronicleFeedDetailsSourceMimecastMailV2Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceMimecastMailV2Settings(
    this.mimecastMailV2Settings,
  );

  final ChronicleFeedDetailsMimecastMailV2Settings mimecastMailV2Settings;

  @override
  String get blockKey => 'mimecast_mail_v2_settings';

  @override
  Map<String, Object?> encode() => {
    'mimecast_mail_v2_settings': mimecastMailV2Settings.encode(),
  };
}

/// The [ChronicleFeedDetailsSource.threatConnectIocV3Settings] choice: sets `threat_connect_ioc_v3_settings`.
final class ChronicleFeedDetailsSourceThreatConnectIocV3Settings
    extends ChronicleFeedDetailsSource {
  const ChronicleFeedDetailsSourceThreatConnectIocV3Settings(
    this.threatConnectIocV3Settings,
  );

  final ChronicleFeedDetailsThreatConnectIocV3Settings
  threatConnectIocV3Settings;

  @override
  String get blockKey => 'threat_connect_ioc_v3_settings';

  @override
  Map<String, Object?> encode() => {
    'threat_connect_ioc_v3_settings': threatConnectIocV3Settings.encode(),
  };
}

/// `feed_source_type` — derived from the provider schema description.
enum ChronicleFeedDetailsFeedSourceType implements TerraformEnum {
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

  const ChronicleFeedDetailsFeedSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `details.amazon_kinesis_firehose_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonKinesisFirehoseSettings {
  const ChronicleFeedDetailsAmazonKinesisFirehoseSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `details.amazon_s3_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonS3Settings {
  const ChronicleFeedDetailsAmazonS3Settings({
    required this.s3Uri,
    required this.sourceDeletionOption,
    required this.sourceType,
    this.authentication,
  });

  final TfArg<String> s3Uri;

  final TfArg<String> sourceDeletionOption;

  final TfArg<String> sourceType;

  final ChronicleFeedDetailsAmazonS3SettingsAuthentication? authentication;

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
final class ChronicleFeedDetailsAmazonS3SettingsAuthentication {
  const ChronicleFeedDetailsAmazonS3SettingsAuthentication({
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
final class ChronicleFeedDetailsAmazonS3V2Settings {
  const ChronicleFeedDetailsAmazonS3V2Settings({
    this.maxLookbackDays,
    required this.s3Uri,
    this.sourceDeletionOption,
    required this.authentication,
  });

  final TfArg<num>? maxLookbackDays;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedDetailsAmazonS3V2SettingsAuthentication authentication;

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
final class ChronicleFeedDetailsAmazonS3V2SettingsAuthentication {
  const ChronicleFeedDetailsAmazonS3V2SettingsAuthentication({
    this.accessKeySecretAuth,
    this.awsIamRoleAuth,
  });

  final ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth?
  accessKeySecretAuth;

  final ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth?
  awsIamRoleAuth;

  Map<String, Object?> encode() => {
    'access_key_secret_auth': ?accessKeySecretAuth?.encode(),
    'aws_iam_role_auth': ?awsIamRoleAuth?.encode(),
  };
}

/// Typed helper for the `details.amazon_s3_v2_settings.authentication.access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth {
  const ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth({
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
@immutable
final class ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth {
  const ChronicleFeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth({
    this.awsIamRoleArn,
    this.subjectId,
  });

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
final class ChronicleFeedDetailsAmazonSqsSettings {
  const ChronicleFeedDetailsAmazonSqsSettings({
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

  final ChronicleFeedDetailsAmazonSqsSettingsAuthentication? authentication;

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
final class ChronicleFeedDetailsAmazonSqsSettingsAuthentication {
  const ChronicleFeedDetailsAmazonSqsSettingsAuthentication({
    this.additionalS3AccessKeySecretAuth,
    this.sqsAccessKeySecretAuth,
  });

  final ChronicleFeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth?
  additionalS3AccessKeySecretAuth;

  final ChronicleFeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth?
  sqsAccessKeySecretAuth;

  Map<String, Object?> encode() => {
    'additional_s3_access_key_secret_auth': ?additionalS3AccessKeySecretAuth
        ?.encode(),
    'sqs_access_key_secret_auth': ?sqsAccessKeySecretAuth?.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_settings.authentication.additional_s3_access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth {
  const ChronicleFeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth({
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
final class ChronicleFeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth {
  const ChronicleFeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth({
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
final class ChronicleFeedDetailsAmazonSqsV2Settings {
  const ChronicleFeedDetailsAmazonSqsV2Settings({
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

  final ChronicleFeedDetailsAmazonSqsV2SettingsAuthentication authentication;

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
final class ChronicleFeedDetailsAmazonSqsV2SettingsAuthentication {
  const ChronicleFeedDetailsAmazonSqsV2SettingsAuthentication({
    required this.awsIamRoleAuth,
    required this.sqsV2AccessKeySecretAuth,
  });

  final ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth
  awsIamRoleAuth;

  final ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth
  sqsV2AccessKeySecretAuth;

  Map<String, Object?> encode() => {
    'aws_iam_role_auth': awsIamRoleAuth.encode(),
    'sqs_v2_access_key_secret_auth': sqsV2AccessKeySecretAuth.encode(),
  };
}

/// Typed helper for the `details.amazon_sqs_v2_settings.authentication.aws_iam_role_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth {
  const ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth({
    this.awsIamRoleArn,
    this.subjectId,
  });

  final TfArg<String>? awsIamRoleArn;

  final TfArg<String>? subjectId;

  Map<String, Object?> encode() => {
    'aws_iam_role_arn': ?awsIamRoleArn?.toTfJson(),
    'subject_id': ?subjectId?.toTfJson(),
  };
}

/// Typed helper for the `details.amazon_sqs_v2_settings.authentication.sqs_v2_access_key_secret_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth {
  const ChronicleFeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth({
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
final class ChronicleFeedDetailsAnomaliSettings {
  const ChronicleFeedDetailsAnomaliSettings({this.authentication});

  final ChronicleFeedDetailsAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.anomali_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAnomaliSettingsAuthentication {
  const ChronicleFeedDetailsAnomaliSettingsAuthentication({
    this.secret,
    this.user,
  });

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
final class ChronicleFeedDetailsAwsEc2HostsSettings {
  const ChronicleFeedDetailsAwsEc2HostsSettings({this.authentication});

  final ChronicleFeedDetailsAwsEc2HostsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_ec2_hosts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2HostsSettingsAuthentication {
  const ChronicleFeedDetailsAwsEc2HostsSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.aws_ec2_instances_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2InstancesSettings {
  const ChronicleFeedDetailsAwsEc2InstancesSettings({this.authentication});

  final ChronicleFeedDetailsAwsEc2InstancesSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_ec2_instances_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2InstancesSettingsAuthentication {
  const ChronicleFeedDetailsAwsEc2InstancesSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.aws_ec2_vpcs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2VpcsSettings {
  const ChronicleFeedDetailsAwsEc2VpcsSettings({this.authentication});

  final ChronicleFeedDetailsAwsEc2VpcsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_ec2_vpcs_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2VpcsSettingsAuthentication {
  const ChronicleFeedDetailsAwsEc2VpcsSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.aws_iam_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsIamSettings {
  const ChronicleFeedDetailsAwsIamSettings({this.apiType, this.authentication});

  final TfArg<String>? apiType;

  final ChronicleFeedDetailsAwsIamSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_type': ?apiType?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.aws_iam_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsIamSettingsAuthentication {
  const ChronicleFeedDetailsAwsIamSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.azure_ad_audit_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureAdAuditSettings {
  const ChronicleFeedDetailsAzureAdAuditSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedDetailsAzureAdAuditSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_audit_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureAdAuditSettingsAuthentication {
  const ChronicleFeedDetailsAzureAdAuditSettingsAuthentication({
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
final class ChronicleFeedDetailsAzureAdContextSettings {
  const ChronicleFeedDetailsAzureAdContextSettings({
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

  final ChronicleFeedDetailsAzureAdContextSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'retrieve_devices': ?retrieveDevices?.toTfJson(),
    'retrieve_groups': ?retrieveGroups?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_context_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureAdContextSettingsAuthentication {
  const ChronicleFeedDetailsAzureAdContextSettingsAuthentication({
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

/// Typed helper for the `details.azure_ad_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureAdSettings {
  const ChronicleFeedDetailsAzureAdSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedDetailsAzureAdSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_ad_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureAdSettingsAuthentication {
  const ChronicleFeedDetailsAzureAdSettingsAuthentication({
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

/// Typed helper for the `details.azure_blob_store_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureBlobStoreSettings {
  const ChronicleFeedDetailsAzureBlobStoreSettings({
    this.azureUri,
    this.sourceDeletionOption,
    this.sourceType,
    this.authentication,
  });

  final TfArg<String>? azureUri;

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  final ChronicleFeedDetailsAzureBlobStoreSettingsAuthentication?
  authentication;

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
final class ChronicleFeedDetailsAzureBlobStoreSettingsAuthentication {
  const ChronicleFeedDetailsAzureBlobStoreSettingsAuthentication({
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
final class ChronicleFeedDetailsAzureBlobStoreV2Settings {
  const ChronicleFeedDetailsAzureBlobStoreV2Settings({
    required this.azureUri,
    this.maxLookbackDays,
    this.sourceDeletionOption,
    required this.authentication,
  });

  final TfArg<String> azureUri;

  final TfArg<num>? maxLookbackDays;

  final TfArg<String>? sourceDeletionOption;

  final ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthentication
  authentication;

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
final class ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthentication {
  const ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthentication({
    required this.accessKey,
    required this.sasToken,
    required this.azureV2WorkloadIdentityFederation,
  });

  final TfArg<String> accessKey;

  final TfArg<String> sasToken;

  final ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation
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
final class ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation {
  const ChronicleFeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation({
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
final class ChronicleFeedDetailsAzureEventHubSettings {
  const ChronicleFeedDetailsAzureEventHubSettings({
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
final class ChronicleFeedDetailsAzureMdmIntuneSettings {
  const ChronicleFeedDetailsAzureMdmIntuneSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedDetailsAzureMdmIntuneSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.azure_mdm_intune_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAzureMdmIntuneSettingsAuthentication {
  const ChronicleFeedDetailsAzureMdmIntuneSettingsAuthentication({
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

/// Typed helper for the `details.cloud_passage_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCloudPassageSettings {
  const ChronicleFeedDetailsCloudPassageSettings({
    this.eventTypes,
    this.authentication,
  });

  final TfArg<List<Object?>>? eventTypes;

  final ChronicleFeedDetailsCloudPassageSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'event_types': ?eventTypes?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.cloud_passage_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCloudPassageSettingsAuthentication {
  const ChronicleFeedDetailsCloudPassageSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.cortex_xdr_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCortexXdrSettings {
  const ChronicleFeedDetailsCortexXdrSettings({
    this.endpoint,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsCortexXdrSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.cortex_xdr_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCortexXdrSettingsAuthentication {
  const ChronicleFeedDetailsCortexXdrSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.cortex_xdr_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

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
final class ChronicleFeedDetailsCrowdstrikeAlertsSettings {
  const ChronicleFeedDetailsCrowdstrikeAlertsSettings({
    required this.hostname,
    this.ingestionType,
    required this.authentication,
  });

  final TfArg<String> hostname;

  final TfArg<String>? ingestionType;

  final ChronicleFeedDetailsCrowdstrikeAlertsSettingsAuthentication
  authentication;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'ingestion_type': ?ingestionType?.toTfJson(),
    'authentication': authentication.encode(),
  };
}

/// Typed helper for the `details.crowdstrike_alerts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCrowdstrikeAlertsSettingsAuthentication {
  const ChronicleFeedDetailsCrowdstrikeAlertsSettingsAuthentication({
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
final class ChronicleFeedDetailsCrowdstrikeDetectsSettings {
  const ChronicleFeedDetailsCrowdstrikeDetectsSettings({
    this.hostname,
    this.ingestionType,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? ingestionType;

  final ChronicleFeedDetailsCrowdstrikeDetectsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'ingestion_type': ?ingestionType?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.crowdstrike_detects_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsCrowdstrikeDetectsSettingsAuthentication {
  const ChronicleFeedDetailsCrowdstrikeDetectsSettingsAuthentication({
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

/// Typed helper for the `details.dummy_log_type_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDummyLogTypeSettings {
  const ChronicleFeedDetailsDummyLogTypeSettings({
    this.apiEndpoint,
    this.authentication,
  });

  final TfArg<String>? apiEndpoint;

  final ChronicleFeedDetailsDummyLogTypeSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_endpoint': ?apiEndpoint?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.dummy_log_type_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDummyLogTypeSettingsAuthentication {
  const ChronicleFeedDetailsDummyLogTypeSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.dummy_log_type_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.duo_auth_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDuoAuthSettings {
  const ChronicleFeedDetailsDuoAuthSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsDuoAuthSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.duo_auth_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDuoAuthSettingsAuthentication {
  const ChronicleFeedDetailsDuoAuthSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.duo_user_context_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDuoUserContextSettings {
  const ChronicleFeedDetailsDuoUserContextSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsDuoUserContextSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.duo_user_context_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsDuoUserContextSettingsAuthentication {
  const ChronicleFeedDetailsDuoUserContextSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.fox_it_stix_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsFoxItStixSettings {
  const ChronicleFeedDetailsFoxItStixSettings({
    this.collection,
    this.pollServiceUri,
    this.authentication,
    this.ssl,
  });

  final TfArg<String>? collection;

  final TfArg<String>? pollServiceUri;

  final ChronicleFeedDetailsFoxItStixSettingsAuthentication? authentication;

  final ChronicleFeedDetailsFoxItStixSettingsSsl? ssl;

  Map<String, Object?> encode() => {
    'collection': ?collection?.toTfJson(),
    'poll_service_uri': ?pollServiceUri?.toTfJson(),
    'authentication': ?authentication?.encode(),
    'ssl': ?ssl?.encode(),
  };
}

/// Typed helper for the `details.fox_it_stix_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsFoxItStixSettingsAuthentication {
  const ChronicleFeedDetailsFoxItStixSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.fox_it_stix_settings.ssl` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsFoxItStixSettingsSsl {
  const ChronicleFeedDetailsFoxItStixSettingsSsl({
    this.encodedPrivateKey,
    this.sslCertificate,
  });

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
final class ChronicleFeedDetailsGcsSettings {
  const ChronicleFeedDetailsGcsSettings({
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
final class ChronicleFeedDetailsGcsV2Settings {
  const ChronicleFeedDetailsGcsV2Settings({
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
final class ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettings {
  const ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettings({
    this.authentication,
  });

  final ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication {
  const ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationClaims?
  claims;

  final ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_device_users_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationClaims {
  const ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

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
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.google_cloud_identity_devices_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDevicesSettings {
  const ChronicleFeedDetailsGoogleCloudIdentityDevicesSettings({
    this.apiVersion,
    this.authentication,
  });

  final TfArg<String>? apiVersion;

  final ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_devices_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication {
  const ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationClaims?
  claims;

  final ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.google_cloud_identity_devices_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationClaims {
  const ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.google_cloud_identity_devices_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsGoogleCloudIdentityDevicesSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.google_cloud_storage_event_driven_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsGoogleCloudStorageEventDrivenSettings {
  const ChronicleFeedDetailsGoogleCloudStorageEventDrivenSettings({
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
final class ChronicleFeedDetailsHttpSettings {
  const ChronicleFeedDetailsHttpSettings({
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
final class ChronicleFeedDetailsHttpsPushAmazonKinesisFirehoseSettings {
  const ChronicleFeedDetailsHttpsPushAmazonKinesisFirehoseSettings({
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
final class ChronicleFeedDetailsHttpsPushGoogleCloudPubsubSettings {
  const ChronicleFeedDetailsHttpsPushGoogleCloudPubsubSettings({
    this.splitDelimiter,
  });

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    'split_delimiter': ?splitDelimiter?.toTfJson(),
  };
}

/// Typed helper for the `details.https_push_webhook_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsHttpsPushWebhookSettings {
  const ChronicleFeedDetailsHttpsPushWebhookSettings({this.splitDelimiter});

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    'split_delimiter': ?splitDelimiter?.toTfJson(),
  };
}

/// Typed helper for the `details.imperva_waf_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsImpervaWafSettings {
  const ChronicleFeedDetailsImpervaWafSettings({this.authentication});

  final ChronicleFeedDetailsImpervaWafSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.imperva_waf_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsImpervaWafSettingsAuthentication {
  const ChronicleFeedDetailsImpervaWafSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.imperva_waf_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.mandiant_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMandiantIocSettings {
  const ChronicleFeedDetailsMandiantIocSettings({
    this.startTime,
    this.authentication,
  });

  final TfArg<String>? startTime;

  final ChronicleFeedDetailsMandiantIocSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'start_time': ?startTime?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.mandiant_ioc_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMandiantIocSettingsAuthentication {
  const ChronicleFeedDetailsMandiantIocSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.mandiant_ioc_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.microsoft_graph_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMicrosoftGraphAlertSettings {
  const ChronicleFeedDetailsMicrosoftGraphAlertSettings({
    this.authEndpoint,
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? authEndpoint;

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedDetailsMicrosoftGraphAlertSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.microsoft_graph_alert_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMicrosoftGraphAlertSettingsAuthentication {
  const ChronicleFeedDetailsMicrosoftGraphAlertSettingsAuthentication({
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

/// Typed helper for the `details.microsoft_security_center_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettings {
  const ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettings({
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

  final ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'subscription_id': ?subscriptionId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.microsoft_security_center_alert_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication {
  const ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettingsAuthentication({
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

/// Typed helper for the `details.mimecast_mail_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMimecastMailSettings {
  const ChronicleFeedDetailsMimecastMailSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsMimecastMailSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.mimecast_mail_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMimecastMailSettingsAuthentication {
  const ChronicleFeedDetailsMimecastMailSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsMimecastMailSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.mimecast_mail_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMimecastMailSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsMimecastMailSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.mimecast_mail_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMimecastMailV2Settings {
  const ChronicleFeedDetailsMimecastMailV2Settings({this.authCredentials});

  final ChronicleFeedDetailsMimecastMailV2SettingsAuthCredentials?
  authCredentials;

  Map<String, Object?> encode() => {
    'auth_credentials': ?authCredentials?.encode(),
  };
}

/// Typed helper for the `details.mimecast_mail_v2_settings.auth_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsMimecastMailV2SettingsAuthCredentials {
  const ChronicleFeedDetailsMimecastMailV2SettingsAuthCredentials({
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

/// Typed helper for the `details.netskope_alert_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertSettings {
  const ChronicleFeedDetailsNetskopeAlertSettings({
    this.contentType,
    this.feedname,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? contentType;

  final TfArg<String>? feedname;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsNetskopeAlertSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'content_type': ?contentType?.toTfJson(),
    'feedname': ?feedname?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.netskope_alert_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertSettingsAuthentication {
  const ChronicleFeedDetailsNetskopeAlertSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.netskope_alert_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.netskope_alert_v2_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertV2Settings {
  const ChronicleFeedDetailsNetskopeAlertV2Settings({
    this.contentCategory,
    this.contentTypes,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? contentCategory;

  final TfArg<List<Object?>>? contentTypes;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsNetskopeAlertV2SettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'content_category': ?contentCategory?.toTfJson(),
    'content_types': ?contentTypes?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.netskope_alert_v2_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertV2SettingsAuthentication {
  const ChronicleFeedDetailsNetskopeAlertV2SettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.netskope_alert_v2_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.office365_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOffice365Settings {
  const ChronicleFeedDetailsOffice365Settings({
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

  final ChronicleFeedDetailsOffice365SettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'auth_endpoint': ?authEndpoint?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.office365_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOffice365SettingsAuthentication {
  const ChronicleFeedDetailsOffice365SettingsAuthentication({
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

/// Typed helper for the `details.okta_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaSettings {
  const ChronicleFeedDetailsOktaSettings({this.hostname, this.authentication});

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsOktaSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.okta_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaSettingsAuthentication {
  const ChronicleFeedDetailsOktaSettingsAuthentication({this.headerKeyValues});

  final List<ChronicleFeedDetailsOktaSettingsAuthenticationHeaderKeyValues>?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.okta_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsOktaSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.okta_user_context_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaUserContextSettings {
  const ChronicleFeedDetailsOktaUserContextSettings({
    this.hostname,
    this.managerIdReferenceField,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? managerIdReferenceField;

  final ChronicleFeedDetailsOktaUserContextSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'manager_id_reference_field': ?managerIdReferenceField?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.okta_user_context_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaUserContextSettingsAuthentication {
  const ChronicleFeedDetailsOktaUserContextSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsOktaUserContextSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.okta_user_context_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsOktaUserContextSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsOktaUserContextSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.pan_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPanIocSettings {
  const ChronicleFeedDetailsPanIocSettings({
    this.feed,
    this.feedId,
    this.authentication,
  });

  final TfArg<String>? feed;

  final TfArg<String>? feedId;

  final ChronicleFeedDetailsPanIocSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'feed': ?feed?.toTfJson(),
    'feed_id': ?feedId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pan_ioc_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPanIocSettingsAuthentication {
  const ChronicleFeedDetailsPanIocSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<ChronicleFeedDetailsPanIocSettingsAuthenticationHeaderKeyValues>?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.pan_ioc_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPanIocSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsPanIocSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.pan_prisma_cloud_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPanPrismaCloudSettings {
  const ChronicleFeedDetailsPanPrismaCloudSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsPanPrismaCloudSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.pan_prisma_cloud_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPanPrismaCloudSettingsAuthentication {
  const ChronicleFeedDetailsPanPrismaCloudSettingsAuthentication({
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
final class ChronicleFeedDetailsProofpointMailSettings {
  const ChronicleFeedDetailsProofpointMailSettings({this.authentication});

  final ChronicleFeedDetailsProofpointMailSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.proofpoint_mail_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsProofpointMailSettingsAuthentication {
  const ChronicleFeedDetailsProofpointMailSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.proofpoint_on_demand_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsProofpointOnDemandSettings {
  const ChronicleFeedDetailsProofpointOnDemandSettings({
    this.clusterId,
    this.authentication,
  });

  final TfArg<String>? clusterId;

  final ChronicleFeedDetailsProofpointOnDemandSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'cluster_id': ?clusterId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.proofpoint_on_demand_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsProofpointOnDemandSettingsAuthentication {
  const ChronicleFeedDetailsProofpointOnDemandSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.proofpoint_on_demand_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsProofpointOnDemandSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.pubsub_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPubsubSettings {
  const ChronicleFeedDetailsPubsubSettings({this.googleServiceAccountEmail});

  final TfArg<String>? googleServiceAccountEmail;

  Map<String, Object?> encode() => {
    'google_service_account_email': ?googleServiceAccountEmail?.toTfJson(),
  };
}

/// Typed helper for the `details.qualys_scan_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsQualysScanSettings {
  const ChronicleFeedDetailsQualysScanSettings({
    this.apiType,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? apiType;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsQualysScanSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'api_type': ?apiType?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.qualys_scan_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsQualysScanSettingsAuthentication {
  const ChronicleFeedDetailsQualysScanSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.qualys_vm_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsQualysVmSettings {
  const ChronicleFeedDetailsQualysVmSettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsQualysVmSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.qualys_vm_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsQualysVmSettingsAuthentication {
  const ChronicleFeedDetailsQualysVmSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.rapid7_insight_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRapid7InsightSettings {
  const ChronicleFeedDetailsRapid7InsightSettings({
    this.endpoint,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsRapid7InsightSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.rapid7_insight_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRapid7InsightSettingsAuthentication {
  const ChronicleFeedDetailsRapid7InsightSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.rapid7_insight_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.recorded_future_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRecordedFutureIocSettings {
  const ChronicleFeedDetailsRecordedFutureIocSettings({this.authentication});

  final ChronicleFeedDetailsRecordedFutureIocSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.recorded_future_ioc_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRecordedFutureIocSettingsAuthentication {
  const ChronicleFeedDetailsRecordedFutureIocSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.recorded_future_ioc_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.rh_isac_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRhIsacIocSettings {
  const ChronicleFeedDetailsRhIsacIocSettings({this.authentication});

  final ChronicleFeedDetailsRhIsacIocSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.rh_isac_ioc_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRhIsacIocSettingsAuthentication {
  const ChronicleFeedDetailsRhIsacIocSettingsAuthentication({
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

/// Typed helper for the `details.salesforce_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSalesforceSettings {
  const ChronicleFeedDetailsSalesforceSettings({
    this.hostname,
    this.oauthJwtCredentials,
    this.oauthPasswordGrantAuth,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentials?
  oauthJwtCredentials;

  final ChronicleFeedDetailsSalesforceSettingsOauthPasswordGrantAuth?
  oauthPasswordGrantAuth;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'oauth_jwt_credentials': ?oauthJwtCredentials?.encode(),
    'oauth_password_grant_auth': ?oauthPasswordGrantAuth?.encode(),
  };
}

/// Typed helper for the `details.salesforce_settings.oauth_jwt_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentials {
  const ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentials({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsClaims? claims;

  final ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.salesforce_settings.oauth_jwt_credentials.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsClaims {
  const ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.salesforce_settings.oauth_jwt_credentials.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials {
  const ChronicleFeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.salesforce_settings.oauth_password_grant_auth` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSalesforceSettingsOauthPasswordGrantAuth {
  const ChronicleFeedDetailsSalesforceSettingsOauthPasswordGrantAuth({
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
final class ChronicleFeedDetailsSentineloneAlertSettings {
  const ChronicleFeedDetailsSentineloneAlertSettings({
    this.hostname,
    this.initialStartTime,
    this.isAlertApiSubscribed,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? initialStartTime;

  final TfArg<bool>? isAlertApiSubscribed;

  final ChronicleFeedDetailsSentineloneAlertSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'initial_start_time': ?initialStartTime?.toTfJson(),
    'is_alert_api_subscribed': ?isAlertApiSubscribed?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.sentinelone_alert_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSentineloneAlertSettingsAuthentication {
  const ChronicleFeedDetailsSentineloneAlertSettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.sentinelone_alert_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.service_now_cmdb_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsServiceNowCmdbSettings {
  const ChronicleFeedDetailsServiceNowCmdbSettings({
    this.feedname,
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? feedname;

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsServiceNowCmdbSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'feedname': ?feedname?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.service_now_cmdb_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsServiceNowCmdbSettingsAuthentication {
  const ChronicleFeedDetailsServiceNowCmdbSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.sftp_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSftpSettings {
  const ChronicleFeedDetailsSftpSettings({
    this.sourceDeletionOption,
    this.sourceType,
    this.uri,
    this.authentication,
  });

  final TfArg<String>? sourceDeletionOption;

  final TfArg<String>? sourceType;

  final TfArg<String>? uri;

  final ChronicleFeedDetailsSftpSettingsAuthentication? authentication;

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
final class ChronicleFeedDetailsSftpSettingsAuthentication {
  const ChronicleFeedDetailsSftpSettingsAuthentication({
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
final class ChronicleFeedDetailsSymantecEventExportSettings {
  const ChronicleFeedDetailsSymantecEventExportSettings({this.authentication});

  final ChronicleFeedDetailsSymantecEventExportSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.symantec_event_export_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsSymantecEventExportSettingsAuthentication {
  const ChronicleFeedDetailsSymantecEventExportSettingsAuthentication({
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
final class ChronicleFeedDetailsThinkstCanarySettings {
  const ChronicleFeedDetailsThinkstCanarySettings({
    this.hostname,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final ChronicleFeedDetailsThinkstCanarySettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.thinkst_canary_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThinkstCanarySettingsAuthentication {
  const ChronicleFeedDetailsThinkstCanarySettingsAuthentication({
    this.headerKeyValues,
  });

  final List<
    ChronicleFeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValues
  >?
  headerKeyValues;

  Map<String, Object?> encode() => {
    if (headerKeyValues != null)
      'header_key_values': [for (final e in headerKeyValues!) e.encode()],
  };
}

/// Typed helper for the `details.thinkst_canary_settings.authentication.header_key_values` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValues {
  const ChronicleFeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThreatConnectIocSettings {
  const ChronicleFeedDetailsThreatConnectIocSettings({
    this.hostname,
    this.owners,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<List<Object?>>? owners;

  final ChronicleFeedDetailsThreatConnectIocSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'owners': ?owners?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThreatConnectIocSettingsAuthentication {
  const ChronicleFeedDetailsThreatConnectIocSettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_v3_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThreatConnectIocV3Settings {
  const ChronicleFeedDetailsThreatConnectIocV3Settings({
    this.fields,
    this.hostname,
    this.owners,
    this.schedule,
    this.tqlQuery,
    this.authentication,
  });

  final TfArg<List<Object?>>? fields;

  final TfArg<String>? hostname;

  final TfArg<List<Object?>>? owners;

  final TfArg<num>? schedule;

  final TfArg<String>? tqlQuery;

  final ChronicleFeedDetailsThreatConnectIocV3SettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'fields': ?fields?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'owners': ?owners?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'tql_query': ?tqlQuery?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.threat_connect_ioc_v3_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsThreatConnectIocV3SettingsAuthentication {
  const ChronicleFeedDetailsThreatConnectIocV3SettingsAuthentication({
    this.secret,
    this.user,
  });

  final TfArg<String>? secret;

  final TfArg<String>? user;

  Map<String, Object?> encode() => {
    'secret': ?secret?.toTfJson(),
    'user': ?user?.toTfJson(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxAlertsSettings {
  const ChronicleFeedDetailsTrellixHxAlertsSettings({
    this.endpoint,
    this.authentication,
  });

  final TfArg<String>? endpoint;

  final ChronicleFeedDetailsTrellixHxAlertsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'endpoint': ?endpoint?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxAlertsSettingsAuthentication {
  const ChronicleFeedDetailsTrellixHxAlertsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  final ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationMsso? msso;

  final ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam?
  trellixIam;

  Map<String, Object?> encode() => {
    'msso': ?msso?.encode(),
    'trellix_iam': ?trellixIam?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_alerts_settings.authentication.msso` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationMsso {
  const ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationMsso({
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
final class ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam {
  const ChronicleFeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam({
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
final class ChronicleFeedDetailsTrellixHxBulkAcqsSettings {
  const ChronicleFeedDetailsTrellixHxBulkAcqsSettings({
    required this.endpoint,
    this.authentication,
  });

  final TfArg<String> endpoint;

  final ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthentication {
  const ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  final ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso? msso;

  final ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam?
  trellixIam;

  Map<String, Object?> encode() => {
    'msso': ?msso?.encode(),
    'trellix_iam': ?trellixIam?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_bulk_acqs_settings.authentication.msso` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso {
  const ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationMsso({
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
@immutable
final class ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam {
  const ChronicleFeedDetailsTrellixHxBulkAcqsSettingsAuthenticationTrellixIam({
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
final class ChronicleFeedDetailsTrellixHxHostsSettings {
  const ChronicleFeedDetailsTrellixHxHostsSettings({
    required this.endpoint,
    this.authentication,
  });

  final TfArg<String> endpoint;

  final ChronicleFeedDetailsTrellixHxHostsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_hosts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxHostsSettingsAuthentication {
  const ChronicleFeedDetailsTrellixHxHostsSettingsAuthentication({
    this.msso,
    this.trellixIam,
  });

  final ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationMsso? msso;

  final ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam?
  trellixIam;

  Map<String, Object?> encode() => {
    'msso': ?msso?.encode(),
    'trellix_iam': ?trellixIam?.encode(),
  };
}

/// Typed helper for the `details.trellix_hx_hosts_settings.authentication.msso` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationMsso {
  const ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationMsso({
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

/// Typed helper for the `details.trellix_hx_hosts_settings.authentication.trellix_iam` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam {
  const ChronicleFeedDetailsTrellixHxHostsSettingsAuthenticationTrellixIam({
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

/// Typed helper for the `details.webhook_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWebhookSettings {
  const ChronicleFeedDetailsWebhookSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `details.workday_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkdaySettings {
  const ChronicleFeedDetailsWorkdaySettings({
    this.hostname,
    this.tenantId,
    this.authentication,
  });

  final TfArg<String>? hostname;

  final TfArg<String>? tenantId;

  final ChronicleFeedDetailsWorkdaySettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    'hostname': ?hostname?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workday_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkdaySettingsAuthentication {
  const ChronicleFeedDetailsWorkdaySettingsAuthentication({
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
final class ChronicleFeedDetailsWorkspaceActivitySettings {
  const ChronicleFeedDetailsWorkspaceActivitySettings({
    this.applications,
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<List<Object?>>? applications;

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceActivitySettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'applications': ?applications?.toTfJson(),
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_activity_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceActivitySettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceActivitySettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationClaims?
  claims;

  final ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_activity_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_activity_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_alerts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceAlertsSettings {
  const ChronicleFeedDetailsWorkspaceAlertsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceAlertsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_alerts_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceAlertsSettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceAlertsSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationClaims? claims;

  final ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_alerts_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_alerts_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_chrome_os_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceChromeOsSettings {
  const ChronicleFeedDetailsWorkspaceChromeOsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_chrome_os_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims?
  claims;

  final ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_chrome_os_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_chrome_os_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_groups_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceGroupsSettings {
  const ChronicleFeedDetailsWorkspaceGroupsSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceGroupsSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_groups_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceGroupsSettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceGroupsSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationClaims? claims;

  final ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_groups_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_groups_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_mobile_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceMobileSettings {
  const ChronicleFeedDetailsWorkspaceMobileSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceMobileSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_mobile_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceMobileSettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceMobileSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationClaims? claims;

  final ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_mobile_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_mobile_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceMobileSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_privileges_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspacePrivilegesSettings {
  const ChronicleFeedDetailsWorkspacePrivilegesSettings({
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_privileges_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthentication {
  const ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationClaims?
  claims;

  final ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_privileges_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_privileges_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspacePrivilegesSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `details.workspace_users_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceUsersSettings {
  const ChronicleFeedDetailsWorkspaceUsersSettings({
    this.projectionType,
    this.workspaceCustomerId,
    this.authentication,
  });

  final TfArg<String>? projectionType;

  final TfArg<String>? workspaceCustomerId;

  final ChronicleFeedDetailsWorkspaceUsersSettingsAuthentication?
  authentication;

  Map<String, Object?> encode() => {
    'projection_type': ?projectionType?.toTfJson(),
    'workspace_customer_id': ?workspaceCustomerId?.toTfJson(),
    'authentication': ?authentication?.encode(),
  };
}

/// Typed helper for the `details.workspace_users_settings.authentication` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceUsersSettingsAuthentication {
  const ChronicleFeedDetailsWorkspaceUsersSettingsAuthentication({
    this.tokenEndpoint,
    this.claims,
    this.rsCredentials,
  });

  final TfArg<String>? tokenEndpoint;

  final ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationClaims? claims;

  final ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationRsCredentials?
  rsCredentials;

  Map<String, Object?> encode() => {
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    'claims': ?claims?.encode(),
    'rs_credentials': ?rsCredentials?.encode(),
  };
}

/// Typed helper for the `details.workspace_users_settings.authentication.claims` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationClaims {
  const ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  final TfArg<String>? audience;

  final TfArg<String>? issuer;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'subject': ?subject?.toTfJson(),
  };
}

/// Typed helper for the `details.workspace_users_settings.authentication.rs_credentials` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationRsCredentials {
  const ChronicleFeedDetailsWorkspaceUsersSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  final TfArg<String>? privateKey;

  Map<String, Object?> encode() => {'private_key': ?privateKey?.toTfJson()};
}

/// Typed helper for the `failure_details` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedFailureDetails {
  const ChronicleFeedFailureDetails();

  Map<String, Object?> encode() => {};
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

  GoogleChronicleFeed({
    required super.localName,
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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
