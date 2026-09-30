// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_appflow_flow`.
const Set<String> _awsAppflowFlowSensitive = <String>{};

/// Typed helper for the `destination_flow_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfig {
  const AppflowFlowDestinationFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    required this.destinationConnectorProperties,
  });

  final TfArg<String>? apiVersion;

  final TfArg<String>? connectorProfileName;

  final TfArg<AppflowFlowDestinationFlowConfigConnectorType> connectorType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorProperties
  destinationConnectorProperties;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'connector_profile_name': ?connectorProfileName?.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'destination_connector_properties': destinationConnectorProperties.encode(),
  };
}

/// `connector_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigConnectorType implements TerraformEnum {
  salesforce('Salesforce'),
  singular('Singular'),
  slack('Slack'),
  redshift('Redshift'),
  s3('S3'),
  marketo('Marketo'),
  googleanalytics('Googleanalytics'),
  zendesk('Zendesk'),
  servicenow('Servicenow'),
  datadog('Datadog'),
  trendmicro('Trendmicro'),
  snowflake('Snowflake'),
  dynatrace('Dynatrace'),
  infornexus('Infornexus'),
  amplitude('Amplitude'),
  veeva('Veeva'),
  eventbridge('EventBridge'),
  lookoutmetrics('LookoutMetrics'),
  upsolver('Upsolver'),
  honeycode('Honeycode'),
  customerprofiles('CustomerProfiles'),
  sapodata('SAPOData'),
  customconnector('CustomConnector'),
  pardot('Pardot');

  const AppflowFlowDestinationFlowConfigConnectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorProperties {
  const AppflowFlowDestinationFlowConfigDestinationConnectorProperties({
    this.customConnector,
    this.customerProfiles,
    this.eventBridge,
    this.honeycode,
    this.lookoutMetrics,
    this.marketo,
    this.redshift,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.snowflake,
    this.upsolver,
    this.zendesk,
  });

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector?
  customConnector;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles?
  customerProfiles;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge?
  eventBridge;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode?
  honeycode;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesLookoutMetrics?
  lookoutMetrics;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketo?
  marketo;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshift?
  redshift;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3? s3;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce?
  salesforce;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoData?
  sapoData;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake?
  snowflake;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver?
  upsolver;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendesk?
  zendesk;

  Map<String, Object?> encode() => {
    'custom_connector': ?customConnector?.encode(),
    'customer_profiles': ?customerProfiles?.encode(),
    'event_bridge': ?eventBridge?.encode(),
    'honeycode': ?honeycode?.encode(),
    'lookout_metrics': ?lookoutMetrics?.encode(),
    'marketo': ?marketo?.encode(),
    'redshift': ?redshift?.encode(),
    's3': ?s3?.encode(),
    'salesforce': ?salesforce?.encode(),
    'sapo_data': ?sapoData?.encode(),
    'snowflake': ?snowflake?.encode(),
    'upsolver': ?upsolver?.encode(),
    'zendesk': ?zendesk?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.custom_connector` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
    this.idFieldNames,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<Map<String, String>>? customProperties;

  final TfArg<String> entityName;

  final TfArg<List<String>>? idFieldNames;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorWriteOperationType
  >?
  writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'custom_properties': ?customProperties?.toTfJson(),
    'entity_name': entityName.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `write_operation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorWriteOperationType
    implements TerraformEnum {
  insert('INSERT'),
  upsert('UPSERT'),
  update('UPDATE'),
  delete('DELETE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorWriteOperationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.custom_connector.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.customer_profiles` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles({
    required this.domainName,
    this.objectTypeName,
  });

  final TfArg<String> domainName;

  final TfArg<String>? objectTypeName;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'object_type_name': ?objectTypeName?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.event_bridge` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge({
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String> object;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.event_bridge.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesEventBridgeErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.honeycode` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode({
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String> object;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.honeycode.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.lookout_metrics` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesLookoutMetrics {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesLookoutMetrics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.marketo` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketo {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketo({
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String> object;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.marketo.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.redshift` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshift {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshift({
    this.bucketPrefix,
    required this.intermediateBucketName,
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String>? bucketPrefix;

  final TfArg<String> intermediateBucketName;

  final TfArg<String> object;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.redshift.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3 {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3({
    required this.bucketName,
    this.bucketPrefix,
    this.s3OutputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig?
  s3OutputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    's3_output_format_config': ?s3OutputFormatConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig({
    this.fileType,
    this.preserveSourceDataTyping,
    this.aggregationConfig,
    this.prefixConfig,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigFileType
  >?
  fileType;

  final TfArg<bool>? preserveSourceDataTyping;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig?
  aggregationConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig?
  prefixConfig;

  Map<String, Object?> encode() => {
    'file_type': ?fileType?.toTfJson(),
    'preserve_source_data_typing': ?preserveSourceDataTyping?.toTfJson(),
    'aggregation_config': ?aggregationConfig?.encode(),
    'prefix_config': ?prefixConfig?.encode(),
  };
}

/// `file_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigFileType
    implements TerraformEnum {
  csv('CSV'),
  json('JSON'),
  parquet('PARQUET');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigFileType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig({
    this.aggregationType,
    this.targetFileSize,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfigAggregationType
  >?
  aggregationType;

  final TfArg<num>? targetFileSize;

  Map<String, Object?> encode() => {
    'aggregation_type': ?aggregationType?.toTfJson(),
    'target_file_size': ?targetFileSize?.toTfJson(),
  };
}

/// `aggregation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfigAggregationType
    implements TerraformEnum {
  none('None'),
  singlefile('SingleFile');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfigAggregationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.prefix_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig({
    this.prefixFormat,
    this.prefixHierarchy,
    this.prefixType,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixFormat
  >?
  prefixFormat;

  final List<
    TfArg<
      AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixHierarchy
    >
  >?
  prefixHierarchy;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixType
  >?
  prefixType;

  Map<String, Object?> encode() => {
    'prefix_format': ?prefixFormat?.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': [for (final e in prefixHierarchy!) e.toTfJson()],
    'prefix_type': ?prefixType?.toTfJson(),
  };
}

/// `prefix_format` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixFormat
    implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  day('DAY'),
  hour('HOUR'),
  minute('MINUTE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `prefix_hierarchy` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixHierarchy
    implements TerraformEnum {
  executionId('EXECUTION_ID'),
  schemaVersion('SCHEMA_VERSION');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixHierarchy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `prefix_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixType
    implements TerraformEnum {
  filename('FILENAME'),
  path('PATH'),
  pathAndFilename('PATH_AND_FILENAME');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigPrefixType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.salesforce` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceDataTransferApi
  >?
  dataTransferApi;

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceWriteOperationType
  >?
  writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'data_transfer_api': ?dataTransferApi?.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object': object.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `data_transfer_api` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceDataTransferApi
    implements TerraformEnum {
  automatic('AUTOMATIC'),
  bulkv2('BULKV2'),
  restSync('REST_SYNC');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceDataTransferApi(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `write_operation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceWriteOperationType
    implements TerraformEnum {
  insert('INSERT'),
  upsert('UPSERT'),
  update('UPDATE'),
  delete('DELETE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceWriteOperationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.salesforce.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.sapo_data` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoData {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoData({
    this.idFieldNames,
    required this.objectPath,
    this.writeOperationType,
    this.errorHandlingConfig,
    this.successResponseHandlingConfig,
  });

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> objectPath;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataWriteOperationType
  >?
  writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig?
  errorHandlingConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig?
  successResponseHandlingConfig;

  Map<String, Object?> encode() => {
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object_path': objectPath.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
    'success_response_handling_config': ?successResponseHandlingConfig
        ?.encode(),
  };
}

/// `write_operation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataWriteOperationType
    implements TerraformEnum {
  insert('INSERT'),
  upsert('UPSERT'),
  update('UPDATE'),
  delete('DELETE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataWriteOperationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.sapo_data.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.sapo_data.success_response_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.snowflake` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake({
    this.bucketPrefix,
    required this.intermediateBucketName,
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String>? bucketPrefix;

  final TfArg<String> intermediateBucketName;

  final TfArg<String> object;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.snowflake.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver({
    required this.bucketName,
    this.bucketPrefix,
    required this.s3OutputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
  s3OutputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    's3_output_format_config': s3OutputFormatConfig.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig({
    this.fileType,
    this.aggregationConfig,
    required this.prefixConfig,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigFileType
  >?
  fileType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig?
  aggregationConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig
  prefixConfig;

  Map<String, Object?> encode() => {
    'file_type': ?fileType?.toTfJson(),
    'aggregation_config': ?aggregationConfig?.encode(),
    'prefix_config': prefixConfig.encode(),
  };
}

/// `file_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigFileType
    implements TerraformEnum {
  csv('CSV'),
  json('JSON'),
  parquet('PARQUET');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigFileType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig({
    this.aggregationType,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfigAggregationType
  >?
  aggregationType;

  Map<String, Object?> encode() => {
    'aggregation_type': ?aggregationType?.toTfJson(),
  };
}

/// `aggregation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfigAggregationType
    implements TerraformEnum {
  none('None'),
  singlefile('SingleFile');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfigAggregationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.prefix_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig({
    this.prefixFormat,
    this.prefixHierarchy,
    required this.prefixType,
  });

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixFormat
  >?
  prefixFormat;

  final List<
    TfArg<
      AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixHierarchy
    >
  >?
  prefixHierarchy;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixType
  >
  prefixType;

  Map<String, Object?> encode() => {
    'prefix_format': ?prefixFormat?.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': [for (final e in prefixHierarchy!) e.toTfJson()],
    'prefix_type': prefixType.toTfJson(),
  };
}

/// `prefix_format` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixFormat
    implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  day('DAY'),
  hour('HOUR'),
  minute('MINUTE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `prefix_hierarchy` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixHierarchy
    implements TerraformEnum {
  executionId('EXECUTION_ID'),
  schemaVersion('SCHEMA_VERSION');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixHierarchy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `prefix_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixType
    implements TerraformEnum {
  filename('FILENAME'),
  path('PATH'),
  pathAndFilename('PATH_AND_FILENAME');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfigPrefixType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.zendesk` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendesk {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendesk({
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<
    AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskWriteOperationType
  >?
  writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object': object.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `write_operation_type` — derived from the provider schema description.
enum AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskWriteOperationType
    implements TerraformEnum {
  insert('INSERT'),
  upsert('UPSERT'),
  update('UPDATE'),
  delete('DELETE');

  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskWriteOperationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'fail_on_first_destination_error': ?failOnFirstDestinationError?.toTfJson(),
  };
}

/// Typed helper for the `metadata_catalog_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowMetadataCatalogConfig {
  const AppflowFlowMetadataCatalogConfig({this.glueDataCatalog});

  final AppflowFlowMetadataCatalogConfigGlueDataCatalog? glueDataCatalog;

  Map<String, Object?> encode() => {
    'glue_data_catalog': ?glueDataCatalog?.encode(),
  };
}

/// Typed helper for the `metadata_catalog_config.glue_data_catalog` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowMetadataCatalogConfigGlueDataCatalog {
  const AppflowFlowMetadataCatalogConfigGlueDataCatalog({
    required this.databaseName,
    required this.roleArn,
    required this.tablePrefix,
  });

  final TfArg<String> databaseName;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> tablePrefix;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'table_prefix': tablePrefix.toTfJson(),
  };
}

/// Typed helper for the `source_flow_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfig {
  const AppflowFlowSourceFlowConfig({
    this.apiVersion,
    this.connectorProfileName,
    required this.connectorType,
    this.incrementalPullConfig,
    required this.sourceConnectorProperties,
  });

  final TfArg<String>? apiVersion;

  final TfArg<String>? connectorProfileName;

  final TfArg<AppflowFlowSourceFlowConfigConnectorType> connectorType;

  final AppflowFlowSourceFlowConfigIncrementalPullConfig? incrementalPullConfig;

  final AppflowFlowSourceFlowConfigSourceConnectorProperties
  sourceConnectorProperties;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'connector_profile_name': ?connectorProfileName?.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'incremental_pull_config': ?incrementalPullConfig?.encode(),
    'source_connector_properties': sourceConnectorProperties.encode(),
  };
}

/// `connector_type` — derived from the provider schema description.
enum AppflowFlowSourceFlowConfigConnectorType implements TerraformEnum {
  salesforce('Salesforce'),
  singular('Singular'),
  slack('Slack'),
  redshift('Redshift'),
  s3('S3'),
  marketo('Marketo'),
  googleanalytics('Googleanalytics'),
  zendesk('Zendesk'),
  servicenow('Servicenow'),
  datadog('Datadog'),
  trendmicro('Trendmicro'),
  snowflake('Snowflake'),
  dynatrace('Dynatrace'),
  infornexus('Infornexus'),
  amplitude('Amplitude'),
  veeva('Veeva'),
  eventbridge('EventBridge'),
  lookoutmetrics('LookoutMetrics'),
  upsolver('Upsolver'),
  honeycode('Honeycode'),
  customerprofiles('CustomerProfiles'),
  sapodata('SAPOData'),
  customconnector('CustomConnector'),
  pardot('Pardot');

  const AppflowFlowSourceFlowConfigConnectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_flow_config.incremental_pull_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigIncrementalPullConfig {
  const AppflowFlowSourceFlowConfigIncrementalPullConfig({
    this.datetimeTypeFieldName,
  });

  final TfArg<String>? datetimeTypeFieldName;

  Map<String, Object?> encode() => {
    'datetime_type_field_name': ?datetimeTypeFieldName?.toTfJson(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorProperties {
  const AppflowFlowSourceFlowConfigSourceConnectorProperties({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.inforNexus,
    this.marketo,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesAmplitude?
  amplitude;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesCustomConnector?
  customConnector;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesDatadog? datadog;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesDynatrace?
  dynatrace;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics?
  googleAnalytics;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesInforNexus?
  inforNexus;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesMarketo? marketo;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3? s3;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforce?
  salesforce;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoData? sapoData;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesServiceNow?
  serviceNow;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSingular? singular;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSlack? slack;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesTrendmicro?
  trendmicro;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesVeeva? veeva;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesZendesk? zendesk;

  Map<String, Object?> encode() => {
    'amplitude': ?amplitude?.encode(),
    'custom_connector': ?customConnector?.encode(),
    'datadog': ?datadog?.encode(),
    'dynatrace': ?dynatrace?.encode(),
    'google_analytics': ?googleAnalytics?.encode(),
    'infor_nexus': ?inforNexus?.encode(),
    'marketo': ?marketo?.encode(),
    's3': ?s3?.encode(),
    'salesforce': ?salesforce?.encode(),
    'sapo_data': ?sapoData?.encode(),
    'service_now': ?serviceNow?.encode(),
    'singular': ?singular?.encode(),
    'slack': ?slack?.encode(),
    'trendmicro': ?trendmicro?.encode(),
    'veeva': ?veeva?.encode(),
    'zendesk': ?zendesk?.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.amplitude` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesAmplitude {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesAmplitude({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.custom_connector` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesCustomConnector {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
  });

  final TfArg<Map<String, String>>? customProperties;

  final TfArg<String> entityName;

  Map<String, Object?> encode() => {
    'custom_properties': ?customProperties?.toTfJson(),
    'entity_name': entityName.toTfJson(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.datadog` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesDatadog {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesDatadog({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.dynatrace` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesDynatrace {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesDynatrace({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.google_analytics` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.infor_nexus` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesInforNexus {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesInforNexus({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.marketo` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesMarketo {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesMarketo({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.s3` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3 {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3({
    required this.bucketName,
    required this.bucketPrefix,
    this.s3InputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketPrefix;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig?
  s3InputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': bucketPrefix.toTfJson(),
    's3_input_format_config': ?s3InputFormatConfig?.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.s3.s3_input_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig({
    this.s3InputFileType,
  });

  final TfArg<
    AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfigS3InputFileType
  >?
  s3InputFileType;

  Map<String, Object?> encode() => {
    's3_input_file_type': ?s3InputFileType?.toTfJson(),
  };
}

/// `s3_input_file_type` — derived from the provider schema description.
enum AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfigS3InputFileType
    implements TerraformEnum {
  csv('CSV'),
  json('JSON');

  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfigS3InputFileType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_flow_config.source_connector_properties.salesforce` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforce {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.enableDynamicFieldUpdate,
    this.includeDeletedRecords,
    required this.object,
  });

  final TfArg<
    AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforceDataTransferApi
  >?
  dataTransferApi;

  final TfArg<bool>? enableDynamicFieldUpdate;

  final TfArg<bool>? includeDeletedRecords;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'data_transfer_api': ?dataTransferApi?.toTfJson(),
    'enable_dynamic_field_update': ?enableDynamicFieldUpdate?.toTfJson(),
    'include_deleted_records': ?includeDeletedRecords?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// `data_transfer_api` — derived from the provider schema description.
enum AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforceDataTransferApi
    implements TerraformEnum {
  automatic('AUTOMATIC'),
  bulkv2('BULKV2'),
  restSync('REST_SYNC');

  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSalesforceDataTransferApi(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoData {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoData({
    required this.objectPath,
    this.paginationConfig,
    this.parallelismConfig,
  });

  final TfArg<String> objectPath;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig?
  paginationConfig;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig?
  parallelismConfig;

  Map<String, Object?> encode() => {
    'object_path': objectPath.toTfJson(),
    'pagination_config': ?paginationConfig?.encode(),
    'parallelism_config': ?parallelismConfig?.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data.pagination_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataPaginationConfig({
    required this.maxPageSize,
  });

  final TfArg<num> maxPageSize;

  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data.parallelism_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSapoDataParallelismConfig({
    required this.maxPageSize,
  });

  final TfArg<num> maxPageSize;

  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.service_now` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesServiceNow {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesServiceNow({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.singular` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSingular {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSingular({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.slack` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesSlack {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesSlack({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.trendmicro` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesTrendmicro {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesTrendmicro({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.veeva` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesVeeva {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesVeeva({
    this.documentType,
    this.includeAllVersions,
    this.includeRenditions,
    this.includeSourceFiles,
    required this.object,
  });

  final TfArg<String>? documentType;

  final TfArg<bool>? includeAllVersions;

  final TfArg<bool>? includeRenditions;

  final TfArg<bool>? includeSourceFiles;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    'document_type': ?documentType?.toTfJson(),
    'include_all_versions': ?includeAllVersions?.toTfJson(),
    'include_renditions': ?includeRenditions?.toTfJson(),
    'include_source_files': ?includeSourceFiles?.toTfJson(),
    'object': object.toTfJson(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.zendesk` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesZendesk {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesZendesk({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `task` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTask {
  const AppflowFlowTask({
    this.destinationField,
    this.sourceFields,
    this.taskProperties,
    required this.taskType,
    this.connectorOperator,
  });

  final TfArg<String>? destinationField;

  final TfArg<List<String>>? sourceFields;

  final TfArg<Map<String, String>>? taskProperties;

  final TfArg<AppflowFlowTaskTaskType> taskType;

  final List<AppflowFlowTaskConnectorOperator>? connectorOperator;

  Map<String, Object?> encode() => {
    'destination_field': ?destinationField?.toTfJson(),
    'source_fields': ?sourceFields?.toTfJson(),
    'task_properties': ?taskProperties?.toTfJson(),
    'task_type': taskType.toTfJson(),
    if (connectorOperator != null)
      'connector_operator': [for (final e in connectorOperator!) e.encode()],
  };
}

/// `task_type` — derived from the provider schema description.
enum AppflowFlowTaskTaskType implements TerraformEnum {
  arithmetic('Arithmetic'),
  filter('Filter'),
  map('Map'),
  mapAll('Map_all'),
  mask('Mask'),
  merge('Merge'),
  passthrough('Passthrough'),
  truncate('Truncate'),
  validate('Validate'),
  partition('Partition');

  const AppflowFlowTaskTaskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task.connector_operator` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTaskConnectorOperator {
  const AppflowFlowTaskConnectorOperator({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.inforNexus,
    this.marketo,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  final TfArg<AppflowFlowTaskConnectorOperatorAmplitude>? amplitude;

  final TfArg<AppflowFlowTaskConnectorOperatorCustomConnector>? customConnector;

  final TfArg<AppflowFlowTaskConnectorOperatorDatadog>? datadog;

  final TfArg<AppflowFlowTaskConnectorOperatorDynatrace>? dynatrace;

  final TfArg<AppflowFlowTaskConnectorOperatorGoogleAnalytics>? googleAnalytics;

  final TfArg<AppflowFlowTaskConnectorOperatorInforNexus>? inforNexus;

  final TfArg<AppflowFlowTaskConnectorOperatorMarketo>? marketo;

  final TfArg<AppflowFlowTaskConnectorOperatorS3>? s3;

  final TfArg<AppflowFlowTaskConnectorOperatorSalesforce>? salesforce;

  final TfArg<AppflowFlowTaskConnectorOperatorSapoData>? sapoData;

  final TfArg<AppflowFlowTaskConnectorOperatorServiceNow>? serviceNow;

  final TfArg<AppflowFlowTaskConnectorOperatorSingular>? singular;

  final TfArg<AppflowFlowTaskConnectorOperatorSlack>? slack;

  final TfArg<AppflowFlowTaskConnectorOperatorTrendmicro>? trendmicro;

  final TfArg<AppflowFlowTaskConnectorOperatorVeeva>? veeva;

  final TfArg<AppflowFlowTaskConnectorOperatorZendesk>? zendesk;

  Map<String, Object?> encode() => {
    'amplitude': ?amplitude?.toTfJson(),
    'custom_connector': ?customConnector?.toTfJson(),
    'datadog': ?datadog?.toTfJson(),
    'dynatrace': ?dynatrace?.toTfJson(),
    'google_analytics': ?googleAnalytics?.toTfJson(),
    'infor_nexus': ?inforNexus?.toTfJson(),
    'marketo': ?marketo?.toTfJson(),
    's3': ?s3?.toTfJson(),
    'salesforce': ?salesforce?.toTfJson(),
    'sapo_data': ?sapoData?.toTfJson(),
    'service_now': ?serviceNow?.toTfJson(),
    'singular': ?singular?.toTfJson(),
    'slack': ?slack?.toTfJson(),
    'trendmicro': ?trendmicro?.toTfJson(),
    'veeva': ?veeva?.toTfJson(),
    'zendesk': ?zendesk?.toTfJson(),
  };
}

/// `amplitude` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorAmplitude implements TerraformEnum {
  between('BETWEEN');

  const AppflowFlowTaskConnectorOperatorAmplitude(this.terraformValue);
  @override
  final String terraformValue;
}

/// `custom_connector` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorCustomConnector implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  contains('CONTAINS'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorCustomConnector(this.terraformValue);
  @override
  final String terraformValue;
}

/// `datadog` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorDatadog implements TerraformEnum {
  projection('PROJECTION'),
  between('BETWEEN'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorDatadog(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dynatrace` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorDynatrace implements TerraformEnum {
  projection('PROJECTION'),
  between('BETWEEN'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorDynatrace(this.terraformValue);
  @override
  final String terraformValue;
}

/// `google_analytics` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorGoogleAnalytics implements TerraformEnum {
  projection('PROJECTION'),
  between('BETWEEN');

  const AppflowFlowTaskConnectorOperatorGoogleAnalytics(this.terraformValue);
  @override
  final String terraformValue;
}

/// `infor_nexus` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorInforNexus implements TerraformEnum {
  projection('PROJECTION'),
  between('BETWEEN'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorInforNexus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `marketo` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorMarketo implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorMarketo(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorS3 implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorS3(this.terraformValue);
  @override
  final String terraformValue;
}

/// `salesforce` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorSalesforce implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  contains('CONTAINS'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorSalesforce(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sapo_data` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorSapoData implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  contains('CONTAINS'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorSapoData(this.terraformValue);
  @override
  final String terraformValue;
}

/// `service_now` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorServiceNow implements TerraformEnum {
  projection('PROJECTION'),
  contains('CONTAINS'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorServiceNow(this.terraformValue);
  @override
  final String terraformValue;
}

/// `singular` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorSingular implements TerraformEnum {
  projection('PROJECTION'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorSingular(this.terraformValue);
  @override
  final String terraformValue;
}

/// `slack` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorSlack implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorSlack(this.terraformValue);
  @override
  final String terraformValue;
}

/// `trendmicro` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorTrendmicro implements TerraformEnum {
  projection('PROJECTION'),
  equalTo('EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorTrendmicro(this.terraformValue);
  @override
  final String terraformValue;
}

/// `veeva` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorVeeva implements TerraformEnum {
  projection('PROJECTION'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  contains('CONTAINS'),
  between('BETWEEN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  equalTo('EQUAL_TO'),
  notEqualTo('NOT_EQUAL_TO'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorVeeva(this.terraformValue);
  @override
  final String terraformValue;
}

/// `zendesk` — derived from the provider schema description.
enum AppflowFlowTaskConnectorOperatorZendesk implements TerraformEnum {
  projection('PROJECTION'),
  greaterThan('GREATER_THAN'),
  addition('ADDITION'),
  multiplication('MULTIPLICATION'),
  division('DIVISION'),
  subtraction('SUBTRACTION'),
  maskAll('MASK_ALL'),
  maskFirstN('MASK_FIRST_N'),
  maskLastN('MASK_LAST_N'),
  validateNonNull('VALIDATE_NON_NULL'),
  validateNonZero('VALIDATE_NON_ZERO'),
  validateNonNegative('VALIDATE_NON_NEGATIVE'),
  validateNumeric('VALIDATE_NUMERIC'),
  noOp('NO_OP');

  const AppflowFlowTaskConnectorOperatorZendesk(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `trigger_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfig {
  const AppflowFlowTriggerConfig({
    required this.triggerType,
    this.triggerProperties,
  });

  final TfArg<AppflowFlowTriggerConfigTriggerType> triggerType;

  final AppflowFlowTriggerConfigTriggerProperties? triggerProperties;

  Map<String, Object?> encode() => {
    'trigger_type': triggerType.toTfJson(),
    'trigger_properties': ?triggerProperties?.encode(),
  };
}

/// `trigger_type` — derived from the provider schema description.
enum AppflowFlowTriggerConfigTriggerType implements TerraformEnum {
  scheduled('Scheduled'),
  event('Event'),
  ondemand('OnDemand');

  const AppflowFlowTriggerConfigTriggerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `trigger_config.trigger_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfigTriggerProperties {
  const AppflowFlowTriggerConfigTriggerProperties({this.scheduled});

  final AppflowFlowTriggerConfigTriggerPropertiesScheduled? scheduled;

  Map<String, Object?> encode() => {'scheduled': ?scheduled?.encode()};
}

/// Typed helper for the `trigger_config.trigger_properties.scheduled` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfigTriggerPropertiesScheduled {
  const AppflowFlowTriggerConfigTriggerPropertiesScheduled({
    this.dataPullMode,
    this.firstExecutionFrom,
    this.scheduleEndTime,
    required this.scheduleExpression,
    this.scheduleOffset,
    this.scheduleStartTime,
    this.timezone,
  });

  final TfArg<AppflowFlowTriggerConfigTriggerPropertiesScheduledDataPullMode>?
  dataPullMode;

  final TfArg<String>? firstExecutionFrom;

  final TfArg<String>? scheduleEndTime;

  final TfArg<String> scheduleExpression;

  final TfArg<num>? scheduleOffset;

  final TfArg<String>? scheduleStartTime;

  final TfArg<String>? timezone;

  Map<String, Object?> encode() => {
    'data_pull_mode': ?dataPullMode?.toTfJson(),
    'first_execution_from': ?firstExecutionFrom?.toTfJson(),
    'schedule_end_time': ?scheduleEndTime?.toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
    'schedule_offset': ?scheduleOffset?.toTfJson(),
    'schedule_start_time': ?scheduleStartTime?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
  };
}

/// `data_pull_mode` — derived from the provider schema description.
enum AppflowFlowTriggerConfigTriggerPropertiesScheduledDataPullMode
    implements TerraformEnum {
  incremental('Incremental'),
  complete('Complete');

  const AppflowFlowTriggerConfigTriggerPropertiesScheduledDataPullMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appflow_flow`.
final class AwsAppflowFlow extends Resource {
  static const String tfType = 'aws_appflow_flow';

  AwsAppflowFlow({
    required super.localName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<AppflowFlowDestinationFlowConfig> destinationFlowConfig,
    AppflowFlowMetadataCatalogConfig? metadataCatalogConfig,
    required AppflowFlowSourceFlowConfig sourceFlowConfig,
    required List<AppflowFlowTask> task,
    required AppflowFlowTriggerConfig triggerConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'kms_arn': ?kmsArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'destination_flow_config': TfArg.literal([
             for (final e in destinationFlowConfig) e.encode(),
           ]),
           if (metadataCatalogConfig != null)
             'metadata_catalog_config': TfArg.literal(
               metadataCatalogConfig.encode(),
             ),
           'source_flow_config': TfArg.literal(sourceFlowConfig.encode()),
           'task': TfArg.literal([for (final e in task) e.encode()]),
           'trigger_config': TfArg.literal(triggerConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppflowFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppflowFlow>`.
  RefTo<AwsAppflowFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `flow_status` attribute.
  TfRef<String> get flowStatus => TfRef.attribute<String>(this, 'flow_status');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_arn` attribute.
  TfRef<String> get kmsArnRef => TfRef.attribute<String>(this, 'kms_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
