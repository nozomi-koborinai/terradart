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

  final TfArg<AppflowFlowConnectorType> connectorType;

  final AppflowFlowDestinationConnectorProperties
  destinationConnectorProperties;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'connector_profile_name': ?connectorProfileName?.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'destination_connector_properties': destinationConnectorProperties.encode(),
  };
}

/// `connector_type` — derived from the provider schema description.
enum AppflowFlowConnectorType implements TerraformEnum {
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

  const AppflowFlowConnectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorProperties {
  const AppflowFlowDestinationConnectorProperties({
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

  final AppflowFlowDestinationConnectorPropertiesCustomConnector?
  customConnector;

  final AppflowFlowCustomerProfiles? customerProfiles;

  final AppflowFlowEventBridge? eventBridge;

  final AppflowFlowHoneycode? honeycode;

  final AppflowFlowLookoutMetrics? lookoutMetrics;

  final AppflowFlowDestinationConnectorPropertiesMarketo? marketo;

  final AppflowFlowRedshift? redshift;

  final AppflowFlowDestinationConnectorPropertiesS3? s3;

  final AppflowFlowDestinationConnectorPropertiesSalesforce? salesforce;

  final AppflowFlowDestinationConnectorPropertiesSapoData? sapoData;

  final AppflowFlowSnowflake? snowflake;

  final AppflowFlowUpsolver? upsolver;

  final AppflowFlowDestinationConnectorPropertiesZendesk? zendesk;

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
final class AppflowFlowDestinationConnectorPropertiesCustomConnector {
  const AppflowFlowDestinationConnectorPropertiesCustomConnector({
    this.customProperties,
    required this.entityName,
    this.idFieldNames,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<Map<String, String>>? customProperties;

  final TfArg<String> entityName;

  final TfArg<List<String>>? idFieldNames;

  final TfArg<AppflowFlowWriteOperationType>? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'custom_properties': ?customProperties?.toTfJson(),
    'entity_name': entityName.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `write_operation_type` — derived from the provider schema description.
enum AppflowFlowWriteOperationType implements TerraformEnum {
  insert('INSERT'),
  upsert('UPSERT'),
  update('UPDATE'),
  delete('DELETE');

  const AppflowFlowWriteOperationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.custom_connector.error_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AppflowFlowErrorHandlingConfig {
  const AppflowFlowErrorHandlingConfig({
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
final class AppflowFlowCustomerProfiles {
  const AppflowFlowCustomerProfiles({
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
final class AppflowFlowEventBridge {
  const AppflowFlowEventBridge({
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String> object;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.honeycode` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowHoneycode {
  const AppflowFlowHoneycode({required this.object, this.errorHandlingConfig});

  final TfArg<String> object;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.lookout_metrics` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowLookoutMetrics {
  const AppflowFlowLookoutMetrics();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.marketo` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorPropertiesMarketo {
  const AppflowFlowDestinationConnectorPropertiesMarketo({
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String> object;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.redshift` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowRedshift {
  const AppflowFlowRedshift({
    this.bucketPrefix,
    required this.intermediateBucketName,
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String>? bucketPrefix;

  final TfArg<String> intermediateBucketName;

  final TfArg<String> object;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorPropertiesS3 {
  const AppflowFlowDestinationConnectorPropertiesS3({
    required this.bucketName,
    this.bucketPrefix,
    this.s3OutputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowDestinationConnectorPropertiesS3OutputFormatConfig?
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
final class AppflowFlowDestinationConnectorPropertiesS3OutputFormatConfig {
  const AppflowFlowDestinationConnectorPropertiesS3OutputFormatConfig({
    this.fileType,
    this.preserveSourceDataTyping,
    this.aggregationConfig,
    this.prefixConfig,
  });

  final TfArg<AppflowFlowFileType>? fileType;

  final TfArg<bool>? preserveSourceDataTyping;

  final AppflowFlowS3AggregationConfig? aggregationConfig;

  final AppflowFlowS3PrefixConfig? prefixConfig;

  Map<String, Object?> encode() => {
    'file_type': ?fileType?.toTfJson(),
    'preserve_source_data_typing': ?preserveSourceDataTyping?.toTfJson(),
    'aggregation_config': ?aggregationConfig?.encode(),
    'prefix_config': ?prefixConfig?.encode(),
  };
}

/// `file_type` — derived from the provider schema description.
enum AppflowFlowFileType implements TerraformEnum {
  csv('CSV'),
  json('JSON'),
  parquet('PARQUET');

  const AppflowFlowFileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowS3AggregationConfig {
  const AppflowFlowS3AggregationConfig({
    this.aggregationType,
    this.targetFileSize,
  });

  final TfArg<AppflowFlowAggregationType>? aggregationType;

  final TfArg<num>? targetFileSize;

  Map<String, Object?> encode() => {
    'aggregation_type': ?aggregationType?.toTfJson(),
    'target_file_size': ?targetFileSize?.toTfJson(),
  };
}

/// `aggregation_type` — derived from the provider schema description.
enum AppflowFlowAggregationType implements TerraformEnum {
  none('None'),
  singlefile('SingleFile');

  const AppflowFlowAggregationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.prefix_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowS3PrefixConfig {
  const AppflowFlowS3PrefixConfig({
    this.prefixFormat,
    this.prefixHierarchy,
    this.prefixType,
  });

  final TfArg<AppflowFlowPrefixFormat>? prefixFormat;

  final List<TfArg<AppflowFlowPrefixHierarchy>>? prefixHierarchy;

  final TfArg<AppflowFlowPrefixType>? prefixType;

  Map<String, Object?> encode() => {
    'prefix_format': ?prefixFormat?.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': [for (final e in prefixHierarchy!) e.toTfJson()],
    'prefix_type': ?prefixType?.toTfJson(),
  };
}

/// `prefix_format` — derived from the provider schema description.
enum AppflowFlowPrefixFormat implements TerraformEnum {
  year('YEAR'),
  month('MONTH'),
  day('DAY'),
  hour('HOUR'),
  minute('MINUTE');

  const AppflowFlowPrefixFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `prefix_hierarchy` — derived from the provider schema description.
enum AppflowFlowPrefixHierarchy implements TerraformEnum {
  executionId('EXECUTION_ID'),
  schemaVersion('SCHEMA_VERSION');

  const AppflowFlowPrefixHierarchy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `prefix_type` — derived from the provider schema description.
enum AppflowFlowPrefixType implements TerraformEnum {
  filename('FILENAME'),
  path('PATH'),
  pathAndFilename('PATH_AND_FILENAME');

  const AppflowFlowPrefixType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.salesforce` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorPropertiesSalesforce {
  const AppflowFlowDestinationConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<AppflowFlowDataTransferApi>? dataTransferApi;

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<AppflowFlowWriteOperationType>? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'data_transfer_api': ?dataTransferApi?.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object': object.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `data_transfer_api` — derived from the provider schema description.
enum AppflowFlowDataTransferApi implements TerraformEnum {
  automatic('AUTOMATIC'),
  bulkv2('BULKV2'),
  restSync('REST_SYNC');

  const AppflowFlowDataTransferApi(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.sapo_data` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorPropertiesSapoData {
  const AppflowFlowDestinationConnectorPropertiesSapoData({
    this.idFieldNames,
    required this.objectPath,
    this.writeOperationType,
    this.errorHandlingConfig,
    this.successResponseHandlingConfig,
  });

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> objectPath;

  final TfArg<AppflowFlowWriteOperationType>? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  final AppflowFlowSuccessResponseHandlingConfig? successResponseHandlingConfig;

  Map<String, Object?> encode() => {
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object_path': objectPath.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
    'success_response_handling_config': ?successResponseHandlingConfig
        ?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.sapo_data.success_response_handling_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSuccessResponseHandlingConfig {
  const AppflowFlowSuccessResponseHandlingConfig({
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
final class AppflowFlowSnowflake {
  const AppflowFlowSnowflake({
    this.bucketPrefix,
    required this.intermediateBucketName,
    required this.object,
    this.errorHandlingConfig,
  });

  final TfArg<String>? bucketPrefix;

  final TfArg<String> intermediateBucketName;

  final TfArg<String> object;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowUpsolver {
  const AppflowFlowUpsolver({
    required this.bucketName,
    this.bucketPrefix,
    required this.s3OutputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowUpsolverS3OutputFormatConfig s3OutputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': ?bucketPrefix?.toTfJson(),
    's3_output_format_config': s3OutputFormatConfig.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowUpsolverS3OutputFormatConfig {
  const AppflowFlowUpsolverS3OutputFormatConfig({
    this.fileType,
    this.aggregationConfig,
    required this.prefixConfig,
  });

  final TfArg<AppflowFlowFileType>? fileType;

  final AppflowFlowUpsolverAggregationConfig? aggregationConfig;

  final AppflowFlowUpsolverPrefixConfig prefixConfig;

  Map<String, Object?> encode() => {
    'file_type': ?fileType?.toTfJson(),
    'aggregation_config': ?aggregationConfig?.encode(),
    'prefix_config': prefixConfig.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowUpsolverAggregationConfig {
  const AppflowFlowUpsolverAggregationConfig({this.aggregationType});

  final TfArg<AppflowFlowAggregationType>? aggregationType;

  Map<String, Object?> encode() => {
    'aggregation_type': ?aggregationType?.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.prefix_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowUpsolverPrefixConfig {
  const AppflowFlowUpsolverPrefixConfig({
    this.prefixFormat,
    this.prefixHierarchy,
    required this.prefixType,
  });

  final TfArg<AppflowFlowPrefixFormat>? prefixFormat;

  final List<TfArg<AppflowFlowPrefixHierarchy>>? prefixHierarchy;

  final TfArg<AppflowFlowPrefixType> prefixType;

  Map<String, Object?> encode() => {
    'prefix_format': ?prefixFormat?.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': [for (final e in prefixHierarchy!) e.toTfJson()],
    'prefix_type': prefixType.toTfJson(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.zendesk` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationConnectorPropertiesZendesk {
  const AppflowFlowDestinationConnectorPropertiesZendesk({
    this.idFieldNames,
    required this.object,
    this.writeOperationType,
    this.errorHandlingConfig,
  });

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<AppflowFlowWriteOperationType>? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  Map<String, Object?> encode() => {
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object': object.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// Typed helper for the `metadata_catalog_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowMetadataCatalogConfig {
  const AppflowFlowMetadataCatalogConfig({this.glueDataCatalog});

  final AppflowFlowGlueDataCatalog? glueDataCatalog;

  Map<String, Object?> encode() => {
    'glue_data_catalog': ?glueDataCatalog?.encode(),
  };
}

/// Typed helper for the `metadata_catalog_config.glue_data_catalog` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowGlueDataCatalog {
  const AppflowFlowGlueDataCatalog({
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

  final TfArg<AppflowFlowConnectorType> connectorType;

  final AppflowFlowIncrementalPullConfig? incrementalPullConfig;

  final AppflowFlowSourceConnectorProperties sourceConnectorProperties;

  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'connector_profile_name': ?connectorProfileName?.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'incremental_pull_config': ?incrementalPullConfig?.encode(),
    'source_connector_properties': sourceConnectorProperties.encode(),
  };
}

/// Typed helper for the `source_flow_config.incremental_pull_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowIncrementalPullConfig {
  const AppflowFlowIncrementalPullConfig({this.datetimeTypeFieldName});

  final TfArg<String>? datetimeTypeFieldName;

  Map<String, Object?> encode() => {
    'datetime_type_field_name': ?datetimeTypeFieldName?.toTfJson(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorProperties {
  const AppflowFlowSourceConnectorProperties({
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

  final AppflowFlowSourceConnectorPropertiesAmplitude? amplitude;

  final AppflowFlowSourceConnectorPropertiesCustomConnector? customConnector;

  final AppflowFlowSourceConnectorPropertiesDatadog? datadog;

  final AppflowFlowSourceConnectorPropertiesDynatrace? dynatrace;

  final AppflowFlowSourceConnectorPropertiesGoogleAnalytics? googleAnalytics;

  final AppflowFlowSourceConnectorPropertiesInforNexus? inforNexus;

  final AppflowFlowSourceConnectorPropertiesMarketo? marketo;

  final AppflowFlowSourceConnectorPropertiesS3? s3;

  final AppflowFlowSourceConnectorPropertiesSalesforce? salesforce;

  final AppflowFlowSourceConnectorPropertiesSapoData? sapoData;

  final AppflowFlowSourceConnectorPropertiesServiceNow? serviceNow;

  final AppflowFlowSourceConnectorPropertiesSingular? singular;

  final AppflowFlowSourceConnectorPropertiesSlack? slack;

  final AppflowFlowSourceConnectorPropertiesTrendmicro? trendmicro;

  final AppflowFlowSourceConnectorPropertiesVeeva? veeva;

  final AppflowFlowSourceConnectorPropertiesZendesk? zendesk;

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
final class AppflowFlowSourceConnectorPropertiesAmplitude {
  const AppflowFlowSourceConnectorPropertiesAmplitude({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.custom_connector` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesCustomConnector {
  const AppflowFlowSourceConnectorPropertiesCustomConnector({
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
final class AppflowFlowSourceConnectorPropertiesDatadog {
  const AppflowFlowSourceConnectorPropertiesDatadog({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.dynatrace` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesDynatrace {
  const AppflowFlowSourceConnectorPropertiesDynatrace({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.google_analytics` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesGoogleAnalytics {
  const AppflowFlowSourceConnectorPropertiesGoogleAnalytics({
    required this.object,
  });

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.infor_nexus` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesInforNexus {
  const AppflowFlowSourceConnectorPropertiesInforNexus({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.marketo` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesMarketo {
  const AppflowFlowSourceConnectorPropertiesMarketo({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.s3` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesS3 {
  const AppflowFlowSourceConnectorPropertiesS3({
    required this.bucketName,
    required this.bucketPrefix,
    this.s3InputFormatConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketPrefix;

  final AppflowFlowS3InputFormatConfig? s3InputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': bucketPrefix.toTfJson(),
    's3_input_format_config': ?s3InputFormatConfig?.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.s3.s3_input_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowS3InputFormatConfig {
  const AppflowFlowS3InputFormatConfig({this.s3InputFileType});

  final TfArg<AppflowFlowS3InputFileType>? s3InputFileType;

  Map<String, Object?> encode() => {
    's3_input_file_type': ?s3InputFileType?.toTfJson(),
  };
}

/// `s3_input_file_type` — derived from the provider schema description.
enum AppflowFlowS3InputFileType implements TerraformEnum {
  csv('CSV'),
  json('JSON');

  const AppflowFlowS3InputFileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `source_flow_config.source_connector_properties.salesforce` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSalesforce {
  const AppflowFlowSourceConnectorPropertiesSalesforce({
    this.dataTransferApi,
    this.enableDynamicFieldUpdate,
    this.includeDeletedRecords,
    required this.object,
  });

  final TfArg<AppflowFlowDataTransferApi>? dataTransferApi;

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

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSapoData {
  const AppflowFlowSourceConnectorPropertiesSapoData({
    required this.objectPath,
    this.paginationConfig,
    this.parallelismConfig,
  });

  final TfArg<String> objectPath;

  final AppflowFlowPaginationConfig? paginationConfig;

  final AppflowFlowParallelismConfig? parallelismConfig;

  Map<String, Object?> encode() => {
    'object_path': objectPath.toTfJson(),
    'pagination_config': ?paginationConfig?.encode(),
    'parallelism_config': ?parallelismConfig?.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data.pagination_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowPaginationConfig {
  const AppflowFlowPaginationConfig({required this.maxPageSize});

  final TfArg<num> maxPageSize;

  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data.parallelism_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowParallelismConfig {
  const AppflowFlowParallelismConfig({required this.maxPageSize});

  final TfArg<num> maxPageSize;

  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.service_now` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesServiceNow {
  const AppflowFlowSourceConnectorPropertiesServiceNow({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.singular` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSingular {
  const AppflowFlowSourceConnectorPropertiesSingular({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.slack` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSlack {
  const AppflowFlowSourceConnectorPropertiesSlack({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.trendmicro` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesTrendmicro {
  const AppflowFlowSourceConnectorPropertiesTrendmicro({required this.object});

  final TfArg<String> object;

  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.veeva` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesVeeva {
  const AppflowFlowSourceConnectorPropertiesVeeva({
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
final class AppflowFlowSourceConnectorPropertiesZendesk {
  const AppflowFlowSourceConnectorPropertiesZendesk({required this.object});

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

  final TfArg<AppflowFlowTaskType> taskType;

  final List<AppflowFlowConnectorOperator>? connectorOperator;

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
enum AppflowFlowTaskType implements TerraformEnum {
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

  const AppflowFlowTaskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `task.connector_operator` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowConnectorOperator {
  const AppflowFlowConnectorOperator({
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

  final TfArg<AppflowFlowConnectorOperatorAmplitude>? amplitude;

  final TfArg<AppflowFlowConnectorOperatorCustomConnector>? customConnector;

  final TfArg<AppflowFlowConnectorOperatorDatadog>? datadog;

  final TfArg<AppflowFlowConnectorOperatorDynatrace>? dynatrace;

  final TfArg<AppflowFlowConnectorOperatorGoogleAnalytics>? googleAnalytics;

  final TfArg<AppflowFlowConnectorOperatorInforNexus>? inforNexus;

  final TfArg<AppflowFlowConnectorOperatorMarketo>? marketo;

  final TfArg<AppflowFlowConnectorOperatorS3>? s3;

  final TfArg<AppflowFlowConnectorOperatorSalesforce>? salesforce;

  final TfArg<AppflowFlowConnectorOperatorSapoData>? sapoData;

  final TfArg<AppflowFlowConnectorOperatorServiceNow>? serviceNow;

  final TfArg<AppflowFlowConnectorOperatorSingular>? singular;

  final TfArg<AppflowFlowConnectorOperatorSlack>? slack;

  final TfArg<AppflowFlowConnectorOperatorTrendmicro>? trendmicro;

  final TfArg<AppflowFlowConnectorOperatorVeeva>? veeva;

  final TfArg<AppflowFlowConnectorOperatorZendesk>? zendesk;

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
enum AppflowFlowConnectorOperatorAmplitude implements TerraformEnum {
  between('BETWEEN');

  const AppflowFlowConnectorOperatorAmplitude(this.terraformValue);
  @override
  final String terraformValue;
}

/// `custom_connector` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorCustomConnector implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorCustomConnector(this.terraformValue);
  @override
  final String terraformValue;
}

/// `datadog` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorDatadog implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorDatadog(this.terraformValue);
  @override
  final String terraformValue;
}

/// `dynatrace` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorDynatrace implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorDynatrace(this.terraformValue);
  @override
  final String terraformValue;
}

/// `google_analytics` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorGoogleAnalytics implements TerraformEnum {
  projection('PROJECTION'),
  between('BETWEEN');

  const AppflowFlowConnectorOperatorGoogleAnalytics(this.terraformValue);
  @override
  final String terraformValue;
}

/// `infor_nexus` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorInforNexus implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorInforNexus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `marketo` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorMarketo implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorMarketo(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorS3 implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorS3(this.terraformValue);
  @override
  final String terraformValue;
}

/// `salesforce` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorSalesforce implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorSalesforce(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sapo_data` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorSapoData implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorSapoData(this.terraformValue);
  @override
  final String terraformValue;
}

/// `service_now` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorServiceNow implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorServiceNow(this.terraformValue);
  @override
  final String terraformValue;
}

/// `singular` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorSingular implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorSingular(this.terraformValue);
  @override
  final String terraformValue;
}

/// `slack` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorSlack implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorSlack(this.terraformValue);
  @override
  final String terraformValue;
}

/// `trendmicro` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorTrendmicro implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorTrendmicro(this.terraformValue);
  @override
  final String terraformValue;
}

/// `veeva` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorVeeva implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorVeeva(this.terraformValue);
  @override
  final String terraformValue;
}

/// `zendesk` — derived from the provider schema description.
enum AppflowFlowConnectorOperatorZendesk implements TerraformEnum {
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

  const AppflowFlowConnectorOperatorZendesk(this.terraformValue);
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

  final TfArg<AppflowFlowTriggerType> triggerType;

  final AppflowFlowTriggerProperties? triggerProperties;

  Map<String, Object?> encode() => {
    'trigger_type': triggerType.toTfJson(),
    'trigger_properties': ?triggerProperties?.encode(),
  };
}

/// `trigger_type` — derived from the provider schema description.
enum AppflowFlowTriggerType implements TerraformEnum {
  scheduled('Scheduled'),
  event('Event'),
  ondemand('OnDemand');

  const AppflowFlowTriggerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `trigger_config.trigger_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerProperties {
  const AppflowFlowTriggerProperties({this.scheduled});

  final AppflowFlowScheduled? scheduled;

  Map<String, Object?> encode() => {'scheduled': ?scheduled?.encode()};
}

/// Typed helper for the `trigger_config.trigger_properties.scheduled` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowScheduled {
  const AppflowFlowScheduled({
    this.dataPullMode,
    this.firstExecutionFrom,
    this.scheduleEndTime,
    required this.scheduleExpression,
    this.scheduleOffset,
    this.scheduleStartTime,
    this.timezone,
  });

  final TfArg<AppflowFlowDataPullMode>? dataPullMode;

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
enum AppflowFlowDataPullMode implements TerraformEnum {
  incremental('Incremental'),
  complete('Complete');

  const AppflowFlowDataPullMode(this.terraformValue);
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `flow_status` attribute.
  TfRef<String> get flowStatus => TfRef.attribute<String>(this, 'flow_status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_arn` attribute.
  TfRef<String> get kmsArn => TfRef.attribute<String>(this, 'kms_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
