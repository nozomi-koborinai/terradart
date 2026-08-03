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
    this.amazonKinesisFirehoseSettings,
    this.amazonS3Settings,
    this.amazonS3V2Settings,
    this.amazonSqsSettings,
    this.amazonSqsV2Settings,
    this.anomaliSettings,
    this.awsEc2HostsSettings,
    this.awsEc2InstancesSettings,
    this.awsEc2VpcsSettings,
    this.awsIamSettings,
    this.azureAdAuditSettings,
    this.azureAdContextSettings,
    this.azureAdSettings,
    this.azureBlobStoreSettings,
    this.azureBlobStoreV2Settings,
    this.azureEventHubSettings,
    this.azureMdmIntuneSettings,
    this.cloudPassageSettings,
    this.cortexXdrSettings,
    this.crowdstrikeAlertsSettings,
    this.crowdstrikeDetectsSettings,
    this.dummyLogTypeSettings,
    this.duoAuthSettings,
    this.duoUserContextSettings,
    this.foxItStixSettings,
    this.gcsSettings,
    this.gcsV2Settings,
    this.googleCloudIdentityDeviceUsersSettings,
    this.googleCloudIdentityDevicesSettings,
    this.googleCloudStorageEventDrivenSettings,
    this.httpSettings,
    this.httpsPushAmazonKinesisFirehoseSettings,
    this.httpsPushGoogleCloudPubsubSettings,
    this.httpsPushWebhookSettings,
    this.impervaWafSettings,
    this.mandiantIocSettings,
    this.microsoftGraphAlertSettings,
    this.microsoftSecurityCenterAlertSettings,
    this.mimecastMailSettings,
    this.mimecastMailV2Settings,
    this.netskopeAlertSettings,
    this.netskopeAlertV2Settings,
    this.office365Settings,
    this.oktaSettings,
    this.oktaUserContextSettings,
    this.panIocSettings,
    this.panPrismaCloudSettings,
    this.proofpointMailSettings,
    this.proofpointOnDemandSettings,
    this.pubsubSettings,
    this.qualysScanSettings,
    this.qualysVmSettings,
    this.rapid7InsightSettings,
    this.recordedFutureIocSettings,
    this.rhIsacIocSettings,
    this.salesforceSettings,
    this.sentineloneAlertSettings,
    this.serviceNowCmdbSettings,
    this.sftpSettings,
    this.symantecEventExportSettings,
    this.thinkstCanarySettings,
    this.threatConnectIocSettings,
    this.threatConnectIocV3Settings,
    this.trellixHxAlertsSettings,
    this.trellixHxBulkAcqsSettings,
    this.trellixHxHostsSettings,
    this.webhookSettings,
    this.workdaySettings,
    this.workspaceActivitySettings,
    this.workspaceAlertsSettings,
    this.workspaceChromeOsSettings,
    this.workspaceGroupsSettings,
    this.workspaceMobileSettings,
    this.workspacePrivilegesSettings,
    this.workspaceUsersSettings,
  });

  final TfArg<String>? assetNamespace;

  final TfArg<ChronicleFeedDetailsFeedSourceType>? feedSourceType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> logType;

  final ChronicleFeedDetailsAmazonKinesisFirehoseSettings?
  amazonKinesisFirehoseSettings;

  final ChronicleFeedDetailsAmazonS3Settings? amazonS3Settings;

  final ChronicleFeedDetailsAmazonS3V2Settings? amazonS3V2Settings;

  final ChronicleFeedDetailsAmazonSqsSettings? amazonSqsSettings;

  final ChronicleFeedDetailsAmazonSqsV2Settings? amazonSqsV2Settings;

  final ChronicleFeedDetailsAnomaliSettings? anomaliSettings;

  final ChronicleFeedDetailsAwsEc2HostsSettings? awsEc2HostsSettings;

  final ChronicleFeedDetailsAwsEc2InstancesSettings? awsEc2InstancesSettings;

  final ChronicleFeedDetailsAwsEc2VpcsSettings? awsEc2VpcsSettings;

  final ChronicleFeedDetailsAwsIamSettings? awsIamSettings;

  final ChronicleFeedDetailsAzureAdAuditSettings? azureAdAuditSettings;

  final ChronicleFeedDetailsAzureAdContextSettings? azureAdContextSettings;

  final ChronicleFeedDetailsAzureAdSettings? azureAdSettings;

  final ChronicleFeedDetailsAzureBlobStoreSettings? azureBlobStoreSettings;

  final ChronicleFeedDetailsAzureBlobStoreV2Settings? azureBlobStoreV2Settings;

  final ChronicleFeedDetailsAzureEventHubSettings? azureEventHubSettings;

  final ChronicleFeedDetailsAzureMdmIntuneSettings? azureMdmIntuneSettings;

  final ChronicleFeedDetailsCloudPassageSettings? cloudPassageSettings;

  final ChronicleFeedDetailsCortexXdrSettings? cortexXdrSettings;

  final ChronicleFeedDetailsCrowdstrikeAlertsSettings?
  crowdstrikeAlertsSettings;

  final ChronicleFeedDetailsCrowdstrikeDetectsSettings?
  crowdstrikeDetectsSettings;

  final ChronicleFeedDetailsDummyLogTypeSettings? dummyLogTypeSettings;

  final ChronicleFeedDetailsDuoAuthSettings? duoAuthSettings;

  final ChronicleFeedDetailsDuoUserContextSettings? duoUserContextSettings;

  final ChronicleFeedDetailsFoxItStixSettings? foxItStixSettings;

  final ChronicleFeedDetailsGcsSettings? gcsSettings;

  final ChronicleFeedDetailsGcsV2Settings? gcsV2Settings;

  final ChronicleFeedDetailsGoogleCloudIdentityDeviceUsersSettings?
  googleCloudIdentityDeviceUsersSettings;

  final ChronicleFeedDetailsGoogleCloudIdentityDevicesSettings?
  googleCloudIdentityDevicesSettings;

  final ChronicleFeedDetailsGoogleCloudStorageEventDrivenSettings?
  googleCloudStorageEventDrivenSettings;

  final ChronicleFeedDetailsHttpSettings? httpSettings;

  final ChronicleFeedDetailsHttpsPushAmazonKinesisFirehoseSettings?
  httpsPushAmazonKinesisFirehoseSettings;

  final ChronicleFeedDetailsHttpsPushGoogleCloudPubsubSettings?
  httpsPushGoogleCloudPubsubSettings;

  final ChronicleFeedDetailsHttpsPushWebhookSettings? httpsPushWebhookSettings;

  final ChronicleFeedDetailsImpervaWafSettings? impervaWafSettings;

  final ChronicleFeedDetailsMandiantIocSettings? mandiantIocSettings;

  final ChronicleFeedDetailsMicrosoftGraphAlertSettings?
  microsoftGraphAlertSettings;

  final ChronicleFeedDetailsMicrosoftSecurityCenterAlertSettings?
  microsoftSecurityCenterAlertSettings;

  final ChronicleFeedDetailsMimecastMailSettings? mimecastMailSettings;

  final ChronicleFeedDetailsMimecastMailV2Settings? mimecastMailV2Settings;

  final ChronicleFeedDetailsNetskopeAlertSettings? netskopeAlertSettings;

  final ChronicleFeedDetailsNetskopeAlertV2Settings? netskopeAlertV2Settings;

  final ChronicleFeedDetailsOffice365Settings? office365Settings;

  final ChronicleFeedDetailsOktaSettings? oktaSettings;

  final ChronicleFeedDetailsOktaUserContextSettings? oktaUserContextSettings;

  final ChronicleFeedDetailsPanIocSettings? panIocSettings;

  final ChronicleFeedDetailsPanPrismaCloudSettings? panPrismaCloudSettings;

  final ChronicleFeedDetailsProofpointMailSettings? proofpointMailSettings;

  final ChronicleFeedDetailsProofpointOnDemandSettings?
  proofpointOnDemandSettings;

  final ChronicleFeedDetailsPubsubSettings? pubsubSettings;

  final ChronicleFeedDetailsQualysScanSettings? qualysScanSettings;

  final ChronicleFeedDetailsQualysVmSettings? qualysVmSettings;

  final ChronicleFeedDetailsRapid7InsightSettings? rapid7InsightSettings;

  final ChronicleFeedDetailsRecordedFutureIocSettings?
  recordedFutureIocSettings;

  final ChronicleFeedDetailsRhIsacIocSettings? rhIsacIocSettings;

  final ChronicleFeedDetailsSalesforceSettings? salesforceSettings;

  final ChronicleFeedDetailsSentineloneAlertSettings? sentineloneAlertSettings;

  final ChronicleFeedDetailsServiceNowCmdbSettings? serviceNowCmdbSettings;

  final ChronicleFeedDetailsSftpSettings? sftpSettings;

  final ChronicleFeedDetailsSymantecEventExportSettings?
  symantecEventExportSettings;

  final ChronicleFeedDetailsThinkstCanarySettings? thinkstCanarySettings;

  final ChronicleFeedDetailsThreatConnectIocSettings? threatConnectIocSettings;

  final ChronicleFeedDetailsThreatConnectIocV3Settings?
  threatConnectIocV3Settings;

  final ChronicleFeedDetailsTrellixHxAlertsSettings? trellixHxAlertsSettings;

  final ChronicleFeedDetailsTrellixHxBulkAcqsSettings?
  trellixHxBulkAcqsSettings;

  final ChronicleFeedDetailsTrellixHxHostsSettings? trellixHxHostsSettings;

  final ChronicleFeedDetailsWebhookSettings? webhookSettings;

  final ChronicleFeedDetailsWorkdaySettings? workdaySettings;

  final ChronicleFeedDetailsWorkspaceActivitySettings?
  workspaceActivitySettings;

  final ChronicleFeedDetailsWorkspaceAlertsSettings? workspaceAlertsSettings;

  final ChronicleFeedDetailsWorkspaceChromeOsSettings?
  workspaceChromeOsSettings;

  final ChronicleFeedDetailsWorkspaceGroupsSettings? workspaceGroupsSettings;

  final ChronicleFeedDetailsWorkspaceMobileSettings? workspaceMobileSettings;

  final ChronicleFeedDetailsWorkspacePrivilegesSettings?
  workspacePrivilegesSettings;

  final ChronicleFeedDetailsWorkspaceUsersSettings? workspaceUsersSettings;

  Map<String, Object?> encode() => {
    if (assetNamespace != null) 'asset_namespace': assetNamespace!.toTfJson(),
    if (feedSourceType != null) 'feed_source_type': feedSourceType!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    'log_type': logType.toTfJson(),
    if (amazonKinesisFirehoseSettings != null)
      'amazon_kinesis_firehose_settings': amazonKinesisFirehoseSettings!
          .encode(),
    if (amazonS3Settings != null)
      'amazon_s3_settings': amazonS3Settings!.encode(),
    if (amazonS3V2Settings != null)
      'amazon_s3_v2_settings': amazonS3V2Settings!.encode(),
    if (amazonSqsSettings != null)
      'amazon_sqs_settings': amazonSqsSettings!.encode(),
    if (amazonSqsV2Settings != null)
      'amazon_sqs_v2_settings': amazonSqsV2Settings!.encode(),
    if (anomaliSettings != null) 'anomali_settings': anomaliSettings!.encode(),
    if (awsEc2HostsSettings != null)
      'aws_ec2_hosts_settings': awsEc2HostsSettings!.encode(),
    if (awsEc2InstancesSettings != null)
      'aws_ec2_instances_settings': awsEc2InstancesSettings!.encode(),
    if (awsEc2VpcsSettings != null)
      'aws_ec2_vpcs_settings': awsEc2VpcsSettings!.encode(),
    if (awsIamSettings != null) 'aws_iam_settings': awsIamSettings!.encode(),
    if (azureAdAuditSettings != null)
      'azure_ad_audit_settings': azureAdAuditSettings!.encode(),
    if (azureAdContextSettings != null)
      'azure_ad_context_settings': azureAdContextSettings!.encode(),
    if (azureAdSettings != null) 'azure_ad_settings': azureAdSettings!.encode(),
    if (azureBlobStoreSettings != null)
      'azure_blob_store_settings': azureBlobStoreSettings!.encode(),
    if (azureBlobStoreV2Settings != null)
      'azure_blob_store_v2_settings': azureBlobStoreV2Settings!.encode(),
    if (azureEventHubSettings != null)
      'azure_event_hub_settings': azureEventHubSettings!.encode(),
    if (azureMdmIntuneSettings != null)
      'azure_mdm_intune_settings': azureMdmIntuneSettings!.encode(),
    if (cloudPassageSettings != null)
      'cloud_passage_settings': cloudPassageSettings!.encode(),
    if (cortexXdrSettings != null)
      'cortex_xdr_settings': cortexXdrSettings!.encode(),
    if (crowdstrikeAlertsSettings != null)
      'crowdstrike_alerts_settings': crowdstrikeAlertsSettings!.encode(),
    if (crowdstrikeDetectsSettings != null)
      'crowdstrike_detects_settings': crowdstrikeDetectsSettings!.encode(),
    if (dummyLogTypeSettings != null)
      'dummy_log_type_settings': dummyLogTypeSettings!.encode(),
    if (duoAuthSettings != null) 'duo_auth_settings': duoAuthSettings!.encode(),
    if (duoUserContextSettings != null)
      'duo_user_context_settings': duoUserContextSettings!.encode(),
    if (foxItStixSettings != null)
      'fox_it_stix_settings': foxItStixSettings!.encode(),
    if (gcsSettings != null) 'gcs_settings': gcsSettings!.encode(),
    if (gcsV2Settings != null) 'gcs_v2_settings': gcsV2Settings!.encode(),
    if (googleCloudIdentityDeviceUsersSettings != null)
      'google_cloud_identity_device_users_settings':
          googleCloudIdentityDeviceUsersSettings!.encode(),
    if (googleCloudIdentityDevicesSettings != null)
      'google_cloud_identity_devices_settings':
          googleCloudIdentityDevicesSettings!.encode(),
    if (googleCloudStorageEventDrivenSettings != null)
      'google_cloud_storage_event_driven_settings':
          googleCloudStorageEventDrivenSettings!.encode(),
    if (httpSettings != null) 'http_settings': httpSettings!.encode(),
    if (httpsPushAmazonKinesisFirehoseSettings != null)
      'https_push_amazon_kinesis_firehose_settings':
          httpsPushAmazonKinesisFirehoseSettings!.encode(),
    if (httpsPushGoogleCloudPubsubSettings != null)
      'https_push_google_cloud_pubsub_settings':
          httpsPushGoogleCloudPubsubSettings!.encode(),
    if (httpsPushWebhookSettings != null)
      'https_push_webhook_settings': httpsPushWebhookSettings!.encode(),
    if (impervaWafSettings != null)
      'imperva_waf_settings': impervaWafSettings!.encode(),
    if (mandiantIocSettings != null)
      'mandiant_ioc_settings': mandiantIocSettings!.encode(),
    if (microsoftGraphAlertSettings != null)
      'microsoft_graph_alert_settings': microsoftGraphAlertSettings!.encode(),
    if (microsoftSecurityCenterAlertSettings != null)
      'microsoft_security_center_alert_settings':
          microsoftSecurityCenterAlertSettings!.encode(),
    if (mimecastMailSettings != null)
      'mimecast_mail_settings': mimecastMailSettings!.encode(),
    if (mimecastMailV2Settings != null)
      'mimecast_mail_v2_settings': mimecastMailV2Settings!.encode(),
    if (netskopeAlertSettings != null)
      'netskope_alert_settings': netskopeAlertSettings!.encode(),
    if (netskopeAlertV2Settings != null)
      'netskope_alert_v2_settings': netskopeAlertV2Settings!.encode(),
    if (office365Settings != null)
      'office365_settings': office365Settings!.encode(),
    if (oktaSettings != null) 'okta_settings': oktaSettings!.encode(),
    if (oktaUserContextSettings != null)
      'okta_user_context_settings': oktaUserContextSettings!.encode(),
    if (panIocSettings != null) 'pan_ioc_settings': panIocSettings!.encode(),
    if (panPrismaCloudSettings != null)
      'pan_prisma_cloud_settings': panPrismaCloudSettings!.encode(),
    if (proofpointMailSettings != null)
      'proofpoint_mail_settings': proofpointMailSettings!.encode(),
    if (proofpointOnDemandSettings != null)
      'proofpoint_on_demand_settings': proofpointOnDemandSettings!.encode(),
    if (pubsubSettings != null) 'pubsub_settings': pubsubSettings!.encode(),
    if (qualysScanSettings != null)
      'qualys_scan_settings': qualysScanSettings!.encode(),
    if (qualysVmSettings != null)
      'qualys_vm_settings': qualysVmSettings!.encode(),
    if (rapid7InsightSettings != null)
      'rapid7_insight_settings': rapid7InsightSettings!.encode(),
    if (recordedFutureIocSettings != null)
      'recorded_future_ioc_settings': recordedFutureIocSettings!.encode(),
    if (rhIsacIocSettings != null)
      'rh_isac_ioc_settings': rhIsacIocSettings!.encode(),
    if (salesforceSettings != null)
      'salesforce_settings': salesforceSettings!.encode(),
    if (sentineloneAlertSettings != null)
      'sentinelone_alert_settings': sentineloneAlertSettings!.encode(),
    if (serviceNowCmdbSettings != null)
      'service_now_cmdb_settings': serviceNowCmdbSettings!.encode(),
    if (sftpSettings != null) 'sftp_settings': sftpSettings!.encode(),
    if (symantecEventExportSettings != null)
      'symantec_event_export_settings': symantecEventExportSettings!.encode(),
    if (thinkstCanarySettings != null)
      'thinkst_canary_settings': thinkstCanarySettings!.encode(),
    if (threatConnectIocSettings != null)
      'threat_connect_ioc_settings': threatConnectIocSettings!.encode(),
    if (threatConnectIocV3Settings != null)
      'threat_connect_ioc_v3_settings': threatConnectIocV3Settings!.encode(),
    if (trellixHxAlertsSettings != null)
      'trellix_hx_alerts_settings': trellixHxAlertsSettings!.encode(),
    if (trellixHxBulkAcqsSettings != null)
      'trellix_hx_bulk_acqs_settings': trellixHxBulkAcqsSettings!.encode(),
    if (trellixHxHostsSettings != null)
      'trellix_hx_hosts_settings': trellixHxHostsSettings!.encode(),
    if (webhookSettings != null) 'webhook_settings': webhookSettings!.encode(),
    if (workdaySettings != null) 'workday_settings': workdaySettings!.encode(),
    if (workspaceActivitySettings != null)
      'workspace_activity_settings': workspaceActivitySettings!.encode(),
    if (workspaceAlertsSettings != null)
      'workspace_alerts_settings': workspaceAlertsSettings!.encode(),
    if (workspaceChromeOsSettings != null)
      'workspace_chrome_os_settings': workspaceChromeOsSettings!.encode(),
    if (workspaceGroupsSettings != null)
      'workspace_groups_settings': workspaceGroupsSettings!.encode(),
    if (workspaceMobileSettings != null)
      'workspace_mobile_settings': workspaceMobileSettings!.encode(),
    if (workspacePrivilegesSettings != null)
      'workspace_privileges_settings': workspacePrivilegesSettings!.encode(),
    if (workspaceUsersSettings != null)
      'workspace_users_settings': workspaceUsersSettings!.encode(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (refreshUri != null) 'refresh_uri': refreshUri!.toTfJson(),
    'region': region.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
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
    if (maxLookbackDays != null)
      'max_lookback_days': maxLookbackDays!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
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
    if (accessKeySecretAuth != null)
      'access_key_secret_auth': accessKeySecretAuth!.encode(),
    if (awsIamRoleAuth != null) 'aws_iam_role_auth': awsIamRoleAuth!.encode(),
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
    if (awsIamRoleArn != null) 'aws_iam_role_arn': awsIamRoleArn!.toTfJson(),
    if (subjectId != null) 'subject_id': subjectId!.toTfJson(),
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
    if (accountNumber != null) 'account_number': accountNumber!.toTfJson(),
    if (queue != null) 'queue': queue!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (additionalS3AccessKeySecretAuth != null)
      'additional_s3_access_key_secret_auth': additionalS3AccessKeySecretAuth!
          .encode(),
    if (sqsAccessKeySecretAuth != null)
      'sqs_access_key_secret_auth': sqsAccessKeySecretAuth!.encode(),
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
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
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
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
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
    if (maxLookbackDays != null)
      'max_lookback_days': maxLookbackDays!.toTfJson(),
    'queue': queue.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
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
    if (awsIamRoleArn != null) 'aws_iam_role_arn': awsIamRoleArn!.toTfJson(),
    if (subjectId != null) 'subject_id': subjectId!.toTfJson(),
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
    if (accessKeyId != null) 'access_key_id': accessKeyId!.toTfJson(),
    if (secretAccessKey != null)
      'secret_access_key': secretAccessKey!.toTfJson(),
  };
}

/// Typed helper for the `details.anomali_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAnomaliSettings {
  const ChronicleFeedDetailsAnomaliSettings({this.authentication});

  final ChronicleFeedDetailsAnomaliSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
  };
}

/// Typed helper for the `details.aws_ec2_hosts_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2HostsSettings {
  const ChronicleFeedDetailsAwsEc2HostsSettings({this.authentication});

  final ChronicleFeedDetailsAwsEc2HostsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
  };
}

/// Typed helper for the `details.aws_ec2_vpcs_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsAwsEc2VpcsSettings {
  const ChronicleFeedDetailsAwsEc2VpcsSettings({this.authentication});

  final ChronicleFeedDetailsAwsEc2VpcsSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (apiType != null) 'api_type': apiType!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (retrieveDevices != null)
      'retrieve_devices': retrieveDevices!.toTfJson(),
    if (retrieveGroups != null) 'retrieve_groups': retrieveGroups!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (azureUri != null) 'azure_uri': azureUri!.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
    if (sourceType != null) 'source_type': sourceType!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (sasToken != null) 'sas_token': sasToken!.toTfJson(),
    if (sharedKey != null) 'shared_key': sharedKey!.toTfJson(),
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
    if (maxLookbackDays != null)
      'max_lookback_days': maxLookbackDays!.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
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
    if (azureSasToken != null) 'azure_sas_token': azureSasToken!.toTfJson(),
    if (azureStorageConnectionString != null)
      'azure_storage_connection_string': azureStorageConnectionString!
          .toTfJson(),
    if (azureStorageContainer != null)
      'azure_storage_container': azureStorageContainer!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (eventTypes != null) 'event_types': eventTypes!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (endpoint != null) 'endpoint': endpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (ingestionType != null) 'ingestion_type': ingestionType!.toTfJson(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (ingestionType != null) 'ingestion_type': ingestionType!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
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
    if (apiEndpoint != null) 'api_endpoint': apiEndpoint!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (collection != null) 'collection': collection!.toTfJson(),
    if (pollServiceUri != null) 'poll_service_uri': pollServiceUri!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
    if (ssl != null) 'ssl': ssl!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (encodedPrivateKey != null)
      'encoded_private_key': encodedPrivateKey!.toTfJson(),
    if (sslCertificate != null) 'ssl_certificate': sslCertificate!.toTfJson(),
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
    if (bucketUri != null) 'bucket_uri': bucketUri!.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
    if (sourceType != null) 'source_type': sourceType!.toTfJson(),
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
    if (maxLookbackDays != null)
      'max_lookback_days': maxLookbackDays!.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (apiVersion != null) 'api_version': apiVersion!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (maxLookbackDays != null)
      'max_lookback_days': maxLookbackDays!.toTfJson(),
    'pubsub_subscription': pubsubSubscription.toTfJson(),
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
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
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
    if (sourceType != null) 'source_type': sourceType!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
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
    if (splitDelimiter != null) 'split_delimiter': splitDelimiter!.toTfJson(),
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
    if (splitDelimiter != null) 'split_delimiter': splitDelimiter!.toTfJson(),
  };
}

/// Typed helper for the `details.https_push_webhook_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsHttpsPushWebhookSettings {
  const ChronicleFeedDetailsHttpsPushWebhookSettings({this.splitDelimiter});

  final TfArg<String>? splitDelimiter;

  Map<String, Object?> encode() => {
    if (splitDelimiter != null) 'split_delimiter': splitDelimiter!.toTfJson(),
  };
}

/// Typed helper for the `details.imperva_waf_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsImpervaWafSettings {
  const ChronicleFeedDetailsImpervaWafSettings({this.authentication});

  final ChronicleFeedDetailsImpervaWafSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (startTime != null) 'start_time': startTime!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (subscriptionId != null) 'subscription_id': subscriptionId!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (authCredentials != null) 'auth_credentials': authCredentials!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (feedname != null) 'feedname': feedname!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (contentCategory != null)
      'content_category': contentCategory!.toTfJson(),
    if (contentTypes != null) 'content_types': contentTypes!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (authEndpoint != null) 'auth_endpoint': authEndpoint!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (managerIdReferenceField != null)
      'manager_id_reference_field': managerIdReferenceField!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (feed != null) 'feed': feed!.toTfJson(),
    if (feedId != null) 'feed_id': feedId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (password != null) 'password': password!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (clusterId != null) 'cluster_id': clusterId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `details.pubsub_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsPubsubSettings {
  const ChronicleFeedDetailsPubsubSettings({this.googleServiceAccountEmail});

  final TfArg<String>? googleServiceAccountEmail;

  Map<String, Object?> encode() => {
    if (googleServiceAccountEmail != null)
      'google_service_account_email': googleServiceAccountEmail!.toTfJson(),
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
    if (apiType != null) 'api_type': apiType!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (endpoint != null) 'endpoint': endpoint!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `details.rh_isac_ioc_settings` block of
/// `google_chronicle_feed` (derived from provider schema).
@immutable
final class ChronicleFeedDetailsRhIsacIocSettings {
  const ChronicleFeedDetailsRhIsacIocSettings({this.authentication});

  final ChronicleFeedDetailsRhIsacIocSettingsAuthentication? authentication;

  Map<String, Object?> encode() => {
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (oauthJwtCredentials != null)
      'oauth_jwt_credentials': oauthJwtCredentials!.encode(),
    if (oauthPasswordGrantAuth != null)
      'oauth_password_grant_auth': oauthPasswordGrantAuth!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (initialStartTime != null)
      'initial_start_time': initialStartTime!.toTfJson(),
    if (isAlertApiSubscribed != null)
      'is_alert_api_subscribed': isAlertApiSubscribed!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (feedname != null) 'feedname': feedname!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (sourceDeletionOption != null)
      'source_deletion_option': sourceDeletionOption!.toTfJson(),
    if (sourceType != null) 'source_type': sourceType!.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (password != null) 'password': password!.toTfJson(),
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
    if (privateKeyPassphrase != null)
      'private_key_passphrase': privateKeyPassphrase!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (owners != null) 'owners': owners!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (fields != null) 'fields': fields!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (owners != null) 'owners': owners!.toTfJson(),
    if (schedule != null) 'schedule': schedule!.toTfJson(),
    if (tqlQuery != null) 'tql_query': tqlQuery!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (secret != null) 'secret': secret!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (endpoint != null) 'endpoint': endpoint!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (msso != null) 'msso': msso!.encode(),
    if (trellixIam != null) 'trellix_iam': trellixIam!.encode(),
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
    if (apiEndpoint != null) 'api_endpoint': apiEndpoint!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (msso != null) 'msso': msso!.encode(),
    if (trellixIam != null) 'trellix_iam': trellixIam!.encode(),
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
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (msso != null) 'msso': msso!.encode(),
    if (trellixIam != null) 'trellix_iam': trellixIam!.encode(),
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
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (refreshToken != null) 'refresh_token': refreshToken!.toTfJson(),
    if (secret != null) 'secret': secret!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
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
    if (applications != null) 'applications': applications!.toTfJson(),
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
    if (projectionType != null) 'projection_type': projectionType!.toTfJson(),
    if (workspaceCustomerId != null)
      'workspace_customer_id': workspaceCustomerId!.toTfJson(),
    if (authentication != null) 'authentication': authentication!.encode(),
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
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (claims != null) 'claims': claims!.encode(),
    if (rsCredentials != null) 'rs_credentials': rsCredentials!.encode(),
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
    if (audience != null) 'audience': audience!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
  };
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           if (displayName != null) 'display_name': displayName,
           if (enabled != null) 'enabled': enabled,
           if (details != null) 'details': TfArg.literal(details.encode()),
           if (feed != null) 'feed': feed,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleFeedSensitive;

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
