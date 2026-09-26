// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> connectorType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorProperties
  destinationConnectorProperties;

  Map<String, Object?> encode() => {
    if (apiVersion != null) 'api_version': apiVersion!.toTfJson(),
    if (connectorProfileName != null)
      'connector_profile_name': connectorProfileName!.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'destination_connector_properties': destinationConnectorProperties.encode(),
  };
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
    if (customConnector != null) 'custom_connector': customConnector!.encode(),
    if (customerProfiles != null)
      'customer_profiles': customerProfiles!.encode(),
    if (eventBridge != null) 'event_bridge': eventBridge!.encode(),
    if (honeycode != null) 'honeycode': honeycode!.encode(),
    if (lookoutMetrics != null) 'lookout_metrics': lookoutMetrics!.encode(),
    if (marketo != null) 'marketo': marketo!.encode(),
    if (redshift != null) 'redshift': redshift!.encode(),
    if (s3 != null) 's3': s3!.encode(),
    if (salesforce != null) 'salesforce': salesforce!.encode(),
    if (sapoData != null) 'sapo_data': sapoData!.encode(),
    if (snowflake != null) 'snowflake': snowflake!.encode(),
    if (upsolver != null) 'upsolver': upsolver!.encode(),
    if (zendesk != null) 'zendesk': zendesk!.encode(),
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

  final TfArg<List<Object?>>? idFieldNames;

  final TfArg<String>? writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnectorErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    if (customProperties != null)
      'custom_properties': customProperties!.toTfJson(),
    'entity_name': entityName.toTfJson(),
    if (idFieldNames != null) 'id_field_names': idFieldNames!.toTfJson(),
    if (writeOperationType != null)
      'write_operation_type': writeOperationType!.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
  };
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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
    if (objectTypeName != null) 'object_type_name': objectTypeName!.toTfJson(),
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
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig?
  s3OutputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (s3OutputFormatConfig != null)
      's3_output_format_config': s3OutputFormatConfig!.encode(),
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

  final TfArg<String>? fileType;

  final TfArg<bool>? preserveSourceDataTyping;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig?
  aggregationConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig?
  prefixConfig;

  Map<String, Object?> encode() => {
    if (fileType != null) 'file_type': fileType!.toTfJson(),
    if (preserveSourceDataTyping != null)
      'preserve_source_data_typing': preserveSourceDataTyping!.toTfJson(),
    if (aggregationConfig != null)
      'aggregation_config': aggregationConfig!.encode(),
    if (prefixConfig != null) 'prefix_config': prefixConfig!.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig({
    this.aggregationType,
    this.targetFileSize,
  });

  final TfArg<String>? aggregationType;

  final TfArg<num>? targetFileSize;

  Map<String, Object?> encode() => {
    if (aggregationType != null)
      'aggregation_type': aggregationType!.toTfJson(),
    if (targetFileSize != null) 'target_file_size': targetFileSize!.toTfJson(),
  };
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

  final TfArg<String>? prefixFormat;

  final TfArg<List<Object?>>? prefixHierarchy;

  final TfArg<String>? prefixType;

  Map<String, Object?> encode() => {
    if (prefixFormat != null) 'prefix_format': prefixFormat!.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': prefixHierarchy!.toTfJson(),
    if (prefixType != null) 'prefix_type': prefixType!.toTfJson(),
  };
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

  final TfArg<String>? dataTransferApi;

  final TfArg<List<Object?>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<String>? writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSalesforceErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    if (dataTransferApi != null)
      'data_transfer_api': dataTransferApi!.toTfJson(),
    if (idFieldNames != null) 'id_field_names': idFieldNames!.toTfJson(),
    'object': object.toTfJson(),
    if (writeOperationType != null)
      'write_operation_type': writeOperationType!.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
  };
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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

  final TfArg<List<Object?>>? idFieldNames;

  final TfArg<String> objectPath;

  final TfArg<String>? writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig?
  errorHandlingConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig?
  successResponseHandlingConfig;

  Map<String, Object?> encode() => {
    if (idFieldNames != null) 'id_field_names': idFieldNames!.toTfJson(),
    'object_path': objectPath.toTfJson(),
    if (writeOperationType != null)
      'write_operation_type': writeOperationType!.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
    if (successResponseHandlingConfig != null)
      'success_response_handling_config': successResponseHandlingConfig!
          .encode(),
  };
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
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
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    'intermediate_bucket_name': intermediateBucketName.toTfJson(),
    'object': object.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
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

  final TfArg<String> bucketName;

  final TfArg<String>? bucketPrefix;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
  s3OutputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
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

  final TfArg<String>? fileType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig?
  aggregationConfig;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig
  prefixConfig;

  Map<String, Object?> encode() => {
    if (fileType != null) 'file_type': fileType!.toTfJson(),
    if (aggregationConfig != null)
      'aggregation_config': aggregationConfig!.encode(),
    'prefix_config': prefixConfig.encode(),
  };
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig {
  const AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig({
    this.aggregationType,
  });

  final TfArg<String>? aggregationType;

  Map<String, Object?> encode() => {
    if (aggregationType != null)
      'aggregation_type': aggregationType!.toTfJson(),
  };
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

  final TfArg<String>? prefixFormat;

  final TfArg<List<Object?>>? prefixHierarchy;

  final TfArg<String> prefixType;

  Map<String, Object?> encode() => {
    if (prefixFormat != null) 'prefix_format': prefixFormat!.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': prefixHierarchy!.toTfJson(),
    'prefix_type': prefixType.toTfJson(),
  };
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

  final TfArg<List<Object?>>? idFieldNames;

  final TfArg<String> object;

  final TfArg<String>? writeOperationType;

  final AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesZendeskErrorHandlingConfig?
  errorHandlingConfig;

  Map<String, Object?> encode() => {
    if (idFieldNames != null) 'id_field_names': idFieldNames!.toTfJson(),
    'object': object.toTfJson(),
    if (writeOperationType != null)
      'write_operation_type': writeOperationType!.toTfJson(),
    if (errorHandlingConfig != null)
      'error_handling_config': errorHandlingConfig!.encode(),
  };
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

  final TfArg<String>? bucketName;

  final TfArg<String>? bucketPrefix;

  final TfArg<bool>? failOnFirstDestinationError;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (bucketPrefix != null) 'bucket_prefix': bucketPrefix!.toTfJson(),
    if (failOnFirstDestinationError != null)
      'fail_on_first_destination_error': failOnFirstDestinationError!
          .toTfJson(),
  };
}

/// Typed helper for the `metadata_catalog_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowMetadataCatalogConfig {
  const AppflowFlowMetadataCatalogConfig({this.glueDataCatalog});

  final AppflowFlowMetadataCatalogConfigGlueDataCatalog? glueDataCatalog;

  Map<String, Object?> encode() => {
    if (glueDataCatalog != null) 'glue_data_catalog': glueDataCatalog!.encode(),
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

  final TfArg<String> roleArn;

  final TfArg<String> tablePrefix;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    'role_arn': roleArn.toTfJson(),
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

  final TfArg<String> connectorType;

  final AppflowFlowSourceFlowConfigIncrementalPullConfig? incrementalPullConfig;

  final AppflowFlowSourceFlowConfigSourceConnectorProperties
  sourceConnectorProperties;

  Map<String, Object?> encode() => {
    if (apiVersion != null) 'api_version': apiVersion!.toTfJson(),
    if (connectorProfileName != null)
      'connector_profile_name': connectorProfileName!.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    if (incrementalPullConfig != null)
      'incremental_pull_config': incrementalPullConfig!.encode(),
    'source_connector_properties': sourceConnectorProperties.encode(),
  };
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
    if (datetimeTypeFieldName != null)
      'datetime_type_field_name': datetimeTypeFieldName!.toTfJson(),
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
    if (amplitude != null) 'amplitude': amplitude!.encode(),
    if (customConnector != null) 'custom_connector': customConnector!.encode(),
    if (datadog != null) 'datadog': datadog!.encode(),
    if (dynatrace != null) 'dynatrace': dynatrace!.encode(),
    if (googleAnalytics != null) 'google_analytics': googleAnalytics!.encode(),
    if (inforNexus != null) 'infor_nexus': inforNexus!.encode(),
    if (marketo != null) 'marketo': marketo!.encode(),
    if (s3 != null) 's3': s3!.encode(),
    if (salesforce != null) 'salesforce': salesforce!.encode(),
    if (sapoData != null) 'sapo_data': sapoData!.encode(),
    if (serviceNow != null) 'service_now': serviceNow!.encode(),
    if (singular != null) 'singular': singular!.encode(),
    if (slack != null) 'slack': slack!.encode(),
    if (trendmicro != null) 'trendmicro': trendmicro!.encode(),
    if (veeva != null) 'veeva': veeva!.encode(),
    if (zendesk != null) 'zendesk': zendesk!.encode(),
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
    if (customProperties != null)
      'custom_properties': customProperties!.toTfJson(),
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

  final TfArg<String> bucketName;

  final TfArg<String> bucketPrefix;

  final AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig?
  s3InputFormatConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'bucket_prefix': bucketPrefix.toTfJson(),
    if (s3InputFormatConfig != null)
      's3_input_format_config': s3InputFormatConfig!.encode(),
  };
}

/// Typed helper for the `source_flow_config.source_connector_properties.s3.s3_input_format_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig {
  const AppflowFlowSourceFlowConfigSourceConnectorPropertiesS3S3InputFormatConfig({
    this.s3InputFileType,
  });

  final TfArg<String>? s3InputFileType;

  Map<String, Object?> encode() => {
    if (s3InputFileType != null)
      's3_input_file_type': s3InputFileType!.toTfJson(),
  };
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

  final TfArg<String>? dataTransferApi;

  final TfArg<bool>? enableDynamicFieldUpdate;

  final TfArg<bool>? includeDeletedRecords;

  final TfArg<String> object;

  Map<String, Object?> encode() => {
    if (dataTransferApi != null)
      'data_transfer_api': dataTransferApi!.toTfJson(),
    if (enableDynamicFieldUpdate != null)
      'enable_dynamic_field_update': enableDynamicFieldUpdate!.toTfJson(),
    if (includeDeletedRecords != null)
      'include_deleted_records': includeDeletedRecords!.toTfJson(),
    'object': object.toTfJson(),
  };
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
    if (paginationConfig != null)
      'pagination_config': paginationConfig!.encode(),
    if (parallelismConfig != null)
      'parallelism_config': parallelismConfig!.encode(),
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
    if (documentType != null) 'document_type': documentType!.toTfJson(),
    if (includeAllVersions != null)
      'include_all_versions': includeAllVersions!.toTfJson(),
    if (includeRenditions != null)
      'include_renditions': includeRenditions!.toTfJson(),
    if (includeSourceFiles != null)
      'include_source_files': includeSourceFiles!.toTfJson(),
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

  final TfArg<List<Object?>>? sourceFields;

  final TfArg<Map<String, String>>? taskProperties;

  final TfArg<String> taskType;

  final List<AppflowFlowTaskConnectorOperator>? connectorOperator;

  Map<String, Object?> encode() => {
    if (destinationField != null)
      'destination_field': destinationField!.toTfJson(),
    if (sourceFields != null) 'source_fields': sourceFields!.toTfJson(),
    if (taskProperties != null) 'task_properties': taskProperties!.toTfJson(),
    'task_type': taskType.toTfJson(),
    if (connectorOperator != null)
      'connector_operator': [for (final e in connectorOperator!) e.encode()],
  };
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

  final TfArg<String>? amplitude;

  final TfArg<String>? customConnector;

  final TfArg<String>? datadog;

  final TfArg<String>? dynatrace;

  final TfArg<String>? googleAnalytics;

  final TfArg<String>? inforNexus;

  final TfArg<String>? marketo;

  final TfArg<String>? s3;

  final TfArg<String>? salesforce;

  final TfArg<String>? sapoData;

  final TfArg<String>? serviceNow;

  final TfArg<String>? singular;

  final TfArg<String>? slack;

  final TfArg<String>? trendmicro;

  final TfArg<String>? veeva;

  final TfArg<String>? zendesk;

  Map<String, Object?> encode() => {
    if (amplitude != null) 'amplitude': amplitude!.toTfJson(),
    if (customConnector != null)
      'custom_connector': customConnector!.toTfJson(),
    if (datadog != null) 'datadog': datadog!.toTfJson(),
    if (dynatrace != null) 'dynatrace': dynatrace!.toTfJson(),
    if (googleAnalytics != null)
      'google_analytics': googleAnalytics!.toTfJson(),
    if (inforNexus != null) 'infor_nexus': inforNexus!.toTfJson(),
    if (marketo != null) 'marketo': marketo!.toTfJson(),
    if (s3 != null) 's3': s3!.toTfJson(),
    if (salesforce != null) 'salesforce': salesforce!.toTfJson(),
    if (sapoData != null) 'sapo_data': sapoData!.toTfJson(),
    if (serviceNow != null) 'service_now': serviceNow!.toTfJson(),
    if (singular != null) 'singular': singular!.toTfJson(),
    if (slack != null) 'slack': slack!.toTfJson(),
    if (trendmicro != null) 'trendmicro': trendmicro!.toTfJson(),
    if (veeva != null) 'veeva': veeva!.toTfJson(),
    if (zendesk != null) 'zendesk': zendesk!.toTfJson(),
  };
}

/// Typed helper for the `trigger_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfig {
  const AppflowFlowTriggerConfig({
    required this.triggerType,
    this.triggerProperties,
  });

  final TfArg<String> triggerType;

  final AppflowFlowTriggerConfigTriggerProperties? triggerProperties;

  Map<String, Object?> encode() => {
    'trigger_type': triggerType.toTfJson(),
    if (triggerProperties != null)
      'trigger_properties': triggerProperties!.encode(),
  };
}

/// Typed helper for the `trigger_config.trigger_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfigTriggerProperties {
  const AppflowFlowTriggerConfigTriggerProperties({this.scheduled});

  final AppflowFlowTriggerConfigTriggerPropertiesScheduled? scheduled;

  Map<String, Object?> encode() => {
    if (scheduled != null) 'scheduled': scheduled!.encode(),
  };
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

  final TfArg<String>? dataPullMode;

  final TfArg<String>? firstExecutionFrom;

  final TfArg<String>? scheduleEndTime;

  final TfArg<String> scheduleExpression;

  final TfArg<num>? scheduleOffset;

  final TfArg<String>? scheduleStartTime;

  final TfArg<String>? timezone;

  Map<String, Object?> encode() => {
    if (dataPullMode != null) 'data_pull_mode': dataPullMode!.toTfJson(),
    if (firstExecutionFrom != null)
      'first_execution_from': firstExecutionFrom!.toTfJson(),
    if (scheduleEndTime != null)
      'schedule_end_time': scheduleEndTime!.toTfJson(),
    'schedule_expression': scheduleExpression.toTfJson(),
    if (scheduleOffset != null) 'schedule_offset': scheduleOffset!.toTfJson(),
    if (scheduleStartTime != null)
      'schedule_start_time': scheduleStartTime!.toTfJson(),
    if (timezone != null) 'timezone': timezone!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appflow_flow`.
final class AwsAppflowFlow extends Resource {
  static const String tfType = 'aws_appflow_flow';

  AwsAppflowFlow({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? kmsArn,
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
           if (description != null) 'description': description,
           if (kmsArn != null) 'kms_arn': kmsArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `flow_status` attribute.
  TfRef<String> get flowStatus => TfRef.attribute<String>(this, 'flow_status');
}
