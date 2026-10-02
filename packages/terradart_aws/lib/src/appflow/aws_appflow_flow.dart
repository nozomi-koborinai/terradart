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

  final AppflowFlowConnectorType connectorType;

  final AppflowFlowDestinationConnectorProperties
  destinationConnectorProperties;

  @internal
  Map<String, Object?> encode() => {
    'api_version': ?apiVersion?.toTfJson(),
    'connector_profile_name': ?connectorProfileName?.toTfJson(),
    'connector_type': connectorType.toTfJson(),
    'destination_connector_properties': destinationConnectorProperties.encode(),
  };
}

/// `connector_type` — derived from the provider schema description.
extension type const AppflowFlowConnectorType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorType.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowConnectorType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorType.arg(TfArg<String> arg) : this._(arg);

  static const salesforce = AppflowFlowConnectorType._(
    TfArgLiteral('Salesforce'),
  );
  static const singular = AppflowFlowConnectorType._(TfArgLiteral('Singular'));
  static const slack = AppflowFlowConnectorType._(TfArgLiteral('Slack'));
  static const redshift = AppflowFlowConnectorType._(TfArgLiteral('Redshift'));
  static const s3 = AppflowFlowConnectorType._(TfArgLiteral('S3'));
  static const marketo = AppflowFlowConnectorType._(TfArgLiteral('Marketo'));
  static const googleanalytics = AppflowFlowConnectorType._(
    TfArgLiteral('Googleanalytics'),
  );
  static const zendesk = AppflowFlowConnectorType._(TfArgLiteral('Zendesk'));
  static const servicenow = AppflowFlowConnectorType._(
    TfArgLiteral('Servicenow'),
  );
  static const datadog = AppflowFlowConnectorType._(TfArgLiteral('Datadog'));
  static const trendmicro = AppflowFlowConnectorType._(
    TfArgLiteral('Trendmicro'),
  );
  static const snowflake = AppflowFlowConnectorType._(
    TfArgLiteral('Snowflake'),
  );
  static const dynatrace = AppflowFlowConnectorType._(
    TfArgLiteral('Dynatrace'),
  );
  static const infornexus = AppflowFlowConnectorType._(
    TfArgLiteral('Infornexus'),
  );
  static const amplitude = AppflowFlowConnectorType._(
    TfArgLiteral('Amplitude'),
  );
  static const veeva = AppflowFlowConnectorType._(TfArgLiteral('Veeva'));
  static const eventbridge = AppflowFlowConnectorType._(
    TfArgLiteral('EventBridge'),
  );
  static const lookoutmetrics = AppflowFlowConnectorType._(
    TfArgLiteral('LookoutMetrics'),
  );
  static const upsolver = AppflowFlowConnectorType._(TfArgLiteral('Upsolver'));
  static const honeycode = AppflowFlowConnectorType._(
    TfArgLiteral('Honeycode'),
  );
  static const customerprofiles = AppflowFlowConnectorType._(
    TfArgLiteral('CustomerProfiles'),
  );
  static const sapodata = AppflowFlowConnectorType._(TfArgLiteral('SAPOData'));
  static const customconnector = AppflowFlowConnectorType._(
    TfArgLiteral('CustomConnector'),
  );
  static const pardot = AppflowFlowConnectorType._(TfArgLiteral('Pardot'));

  static const List<AppflowFlowConnectorType> values = [
    salesforce,
    singular,
    slack,
    redshift,
    s3,
    marketo,
    googleanalytics,
    zendesk,
    servicenow,
    datadog,
    trendmicro,
    snowflake,
    dynatrace,
    infornexus,
    amplitude,
    veeva,
    eventbridge,
    lookoutmetrics,
    upsolver,
    honeycode,
    customerprofiles,
    sapodata,
    customconnector,
    pardot,
  ];
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

  @internal
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

  final AppflowFlowWriteOperationType? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  @internal
  Map<String, Object?> encode() => {
    'custom_properties': ?customProperties?.toTfJson(),
    'entity_name': entityName.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `write_operation_type` — derived from the provider schema description.
extension type const AppflowFlowWriteOperationType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowWriteOperationType.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowWriteOperationType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowWriteOperationType.arg(TfArg<String> arg) : this._(arg);

  static const insert = AppflowFlowWriteOperationType._(TfArgLiteral('INSERT'));
  static const upsert = AppflowFlowWriteOperationType._(TfArgLiteral('UPSERT'));
  static const update = AppflowFlowWriteOperationType._(TfArgLiteral('UPDATE'));
  static const delete = AppflowFlowWriteOperationType._(TfArgLiteral('DELETE'));

  static const List<AppflowFlowWriteOperationType> values = [
    insert,
    upsert,
    update,
    delete,
  ];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final AppflowFlowFileType? fileType;

  final TfArg<bool>? preserveSourceDataTyping;

  final AppflowFlowS3AggregationConfig? aggregationConfig;

  final AppflowFlowS3PrefixConfig? prefixConfig;

  @internal
  Map<String, Object?> encode() => {
    'file_type': ?fileType?.toTfJson(),
    'preserve_source_data_typing': ?preserveSourceDataTyping?.toTfJson(),
    'aggregation_config': ?aggregationConfig?.encode(),
    'prefix_config': ?prefixConfig?.encode(),
  };
}

/// `file_type` — derived from the provider schema description.
extension type const AppflowFlowFileType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowFileType.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowFileType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowFileType.arg(TfArg<String> arg) : this._(arg);

  static const csv = AppflowFlowFileType._(TfArgLiteral('CSV'));
  static const json = AppflowFlowFileType._(TfArgLiteral('JSON'));
  static const parquet = AppflowFlowFileType._(TfArgLiteral('PARQUET'));

  static const List<AppflowFlowFileType> values = [csv, json, parquet];
}

/// Typed helper for the `destination_flow_config.destination_connector_properties.s3.s3_output_format_config.aggregation_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowS3AggregationConfig {
  const AppflowFlowS3AggregationConfig({
    this.aggregationType,
    this.targetFileSize,
  });

  final AppflowFlowAggregationType? aggregationType;

  final TfArg<num>? targetFileSize;

  @internal
  Map<String, Object?> encode() => {
    'aggregation_type': ?aggregationType?.toTfJson(),
    'target_file_size': ?targetFileSize?.toTfJson(),
  };
}

/// `aggregation_type` — derived from the provider schema description.
extension type const AppflowFlowAggregationType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowAggregationType.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowAggregationType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowAggregationType.arg(TfArg<String> arg) : this._(arg);

  static const none = AppflowFlowAggregationType._(TfArgLiteral('None'));
  static const singlefile = AppflowFlowAggregationType._(
    TfArgLiteral('SingleFile'),
  );

  static const List<AppflowFlowAggregationType> values = [none, singlefile];
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

  final AppflowFlowPrefixFormat? prefixFormat;

  final List<AppflowFlowPrefixHierarchy>? prefixHierarchy;

  final AppflowFlowPrefixType? prefixType;

  @internal
  Map<String, Object?> encode() => {
    'prefix_format': ?prefixFormat?.toTfJson(),
    if (prefixHierarchy != null)
      'prefix_hierarchy': [for (final e in prefixHierarchy!) e.toTfJson()],
    'prefix_type': ?prefixType?.toTfJson(),
  };
}

/// `prefix_format` — derived from the provider schema description.
extension type const AppflowFlowPrefixFormat._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowPrefixFormat.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowPrefixFormat.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowPrefixFormat.arg(TfArg<String> arg) : this._(arg);

  static const year = AppflowFlowPrefixFormat._(TfArgLiteral('YEAR'));
  static const month = AppflowFlowPrefixFormat._(TfArgLiteral('MONTH'));
  static const day = AppflowFlowPrefixFormat._(TfArgLiteral('DAY'));
  static const hour = AppflowFlowPrefixFormat._(TfArgLiteral('HOUR'));
  static const minute = AppflowFlowPrefixFormat._(TfArgLiteral('MINUTE'));

  static const List<AppflowFlowPrefixFormat> values = [
    year,
    month,
    day,
    hour,
    minute,
  ];
}

/// `prefix_hierarchy` — derived from the provider schema description.
extension type const AppflowFlowPrefixHierarchy._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowPrefixHierarchy.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowPrefixHierarchy.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowPrefixHierarchy.arg(TfArg<String> arg) : this._(arg);

  static const executionId = AppflowFlowPrefixHierarchy._(
    TfArgLiteral('EXECUTION_ID'),
  );
  static const schemaVersion = AppflowFlowPrefixHierarchy._(
    TfArgLiteral('SCHEMA_VERSION'),
  );

  static const List<AppflowFlowPrefixHierarchy> values = [
    executionId,
    schemaVersion,
  ];
}

/// `prefix_type` — derived from the provider schema description.
extension type const AppflowFlowPrefixType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowPrefixType.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowPrefixType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowPrefixType.arg(TfArg<String> arg) : this._(arg);

  static const filename = AppflowFlowPrefixType._(TfArgLiteral('FILENAME'));
  static const path = AppflowFlowPrefixType._(TfArgLiteral('PATH'));
  static const pathAndFilename = AppflowFlowPrefixType._(
    TfArgLiteral('PATH_AND_FILENAME'),
  );

  static const List<AppflowFlowPrefixType> values = [
    filename,
    path,
    pathAndFilename,
  ];
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

  final AppflowFlowDataTransferApi? dataTransferApi;

  final TfArg<List<String>>? idFieldNames;

  final TfArg<String> object;

  final AppflowFlowWriteOperationType? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  @internal
  Map<String, Object?> encode() => {
    'data_transfer_api': ?dataTransferApi?.toTfJson(),
    'id_field_names': ?idFieldNames?.toTfJson(),
    'object': object.toTfJson(),
    'write_operation_type': ?writeOperationType?.toTfJson(),
    'error_handling_config': ?errorHandlingConfig?.encode(),
  };
}

/// `data_transfer_api` — derived from the provider schema description.
extension type const AppflowFlowDataTransferApi._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowDataTransferApi.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowDataTransferApi.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowDataTransferApi.arg(TfArg<String> arg) : this._(arg);

  static const automatic = AppflowFlowDataTransferApi._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const bulkv2 = AppflowFlowDataTransferApi._(TfArgLiteral('BULKV2'));
  static const restSync = AppflowFlowDataTransferApi._(
    TfArgLiteral('REST_SYNC'),
  );

  static const List<AppflowFlowDataTransferApi> values = [
    automatic,
    bulkv2,
    restSync,
  ];
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

  final AppflowFlowWriteOperationType? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  final AppflowFlowSuccessResponseHandlingConfig? successResponseHandlingConfig;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final AppflowFlowFileType? fileType;

  final AppflowFlowUpsolverAggregationConfig? aggregationConfig;

  final AppflowFlowUpsolverPrefixConfig prefixConfig;

  @internal
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

  final AppflowFlowAggregationType? aggregationType;

  @internal
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

  final AppflowFlowPrefixFormat? prefixFormat;

  final List<AppflowFlowPrefixHierarchy>? prefixHierarchy;

  final AppflowFlowPrefixType prefixType;

  @internal
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

  final AppflowFlowWriteOperationType? writeOperationType;

  final AppflowFlowErrorHandlingConfig? errorHandlingConfig;

  @internal
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

  @internal
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

  @internal
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

  final AppflowFlowConnectorType connectorType;

  final AppflowFlowIncrementalPullConfig? incrementalPullConfig;

  final AppflowFlowSourceConnectorProperties sourceConnectorProperties;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.dynatrace` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesDynatrace {
  const AppflowFlowSourceConnectorPropertiesDynatrace({required this.object});

  final TfArg<String> object;

  @internal
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

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.infor_nexus` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesInforNexus {
  const AppflowFlowSourceConnectorPropertiesInforNexus({required this.object});

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.marketo` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesMarketo {
  const AppflowFlowSourceConnectorPropertiesMarketo({required this.object});

  final TfArg<String> object;

  @internal
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

  @internal
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

  final AppflowFlowS3InputFileType? s3InputFileType;

  @internal
  Map<String, Object?> encode() => {
    's3_input_file_type': ?s3InputFileType?.toTfJson(),
  };
}

/// `s3_input_file_type` — derived from the provider schema description.
extension type const AppflowFlowS3InputFileType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowS3InputFileType.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowS3InputFileType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowS3InputFileType.arg(TfArg<String> arg) : this._(arg);

  static const csv = AppflowFlowS3InputFileType._(TfArgLiteral('CSV'));
  static const json = AppflowFlowS3InputFileType._(TfArgLiteral('JSON'));

  static const List<AppflowFlowS3InputFileType> values = [csv, json];
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

  final AppflowFlowDataTransferApi? dataTransferApi;

  final TfArg<bool>? enableDynamicFieldUpdate;

  final TfArg<bool>? includeDeletedRecords;

  final TfArg<String> object;

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.sapo_data.parallelism_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowParallelismConfig {
  const AppflowFlowParallelismConfig({required this.maxPageSize});

  final TfArg<num> maxPageSize;

  @internal
  Map<String, Object?> encode() => {'max_page_size': maxPageSize.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.service_now` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesServiceNow {
  const AppflowFlowSourceConnectorPropertiesServiceNow({required this.object});

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.singular` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSingular {
  const AppflowFlowSourceConnectorPropertiesSingular({required this.object});

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.slack` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesSlack {
  const AppflowFlowSourceConnectorPropertiesSlack({required this.object});

  final TfArg<String> object;

  @internal
  Map<String, Object?> encode() => {'object': object.toTfJson()};
}

/// Typed helper for the `source_flow_config.source_connector_properties.trendmicro` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowSourceConnectorPropertiesTrendmicro {
  const AppflowFlowSourceConnectorPropertiesTrendmicro({required this.object});

  final TfArg<String> object;

  @internal
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

  @internal
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

  @internal
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

  final AppflowFlowTaskType taskType;

  final List<AppflowFlowConnectorOperator>? connectorOperator;

  @internal
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
extension type const AppflowFlowTaskType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowTaskType.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowTaskType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowTaskType.arg(TfArg<String> arg) : this._(arg);

  static const arithmetic = AppflowFlowTaskType._(TfArgLiteral('Arithmetic'));
  static const filter = AppflowFlowTaskType._(TfArgLiteral('Filter'));
  static const map = AppflowFlowTaskType._(TfArgLiteral('Map'));
  static const mapAll = AppflowFlowTaskType._(TfArgLiteral('Map_all'));
  static const mask = AppflowFlowTaskType._(TfArgLiteral('Mask'));
  static const merge = AppflowFlowTaskType._(TfArgLiteral('Merge'));
  static const passthrough = AppflowFlowTaskType._(TfArgLiteral('Passthrough'));
  static const truncate = AppflowFlowTaskType._(TfArgLiteral('Truncate'));
  static const validate = AppflowFlowTaskType._(TfArgLiteral('Validate'));
  static const partition = AppflowFlowTaskType._(TfArgLiteral('Partition'));

  static const List<AppflowFlowTaskType> values = [
    arithmetic,
    filter,
    map,
    mapAll,
    mask,
    merge,
    passthrough,
    truncate,
    validate,
    partition,
  ];
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

  final AppflowFlowConnectorOperatorAmplitude? amplitude;

  final AppflowFlowConnectorOperatorCustomConnector? customConnector;

  final AppflowFlowConnectorOperatorDatadog? datadog;

  final AppflowFlowConnectorOperatorDynatrace? dynatrace;

  final AppflowFlowConnectorOperatorGoogleAnalytics? googleAnalytics;

  final AppflowFlowConnectorOperatorInforNexus? inforNexus;

  final AppflowFlowConnectorOperatorMarketo? marketo;

  final AppflowFlowConnectorOperatorS3? s3;

  final AppflowFlowConnectorOperatorSalesforce? salesforce;

  final AppflowFlowConnectorOperatorSapoData? sapoData;

  final AppflowFlowConnectorOperatorServiceNow? serviceNow;

  final AppflowFlowConnectorOperatorSingular? singular;

  final AppflowFlowConnectorOperatorSlack? slack;

  final AppflowFlowConnectorOperatorTrendmicro? trendmicro;

  final AppflowFlowConnectorOperatorVeeva? veeva;

  final AppflowFlowConnectorOperatorZendesk? zendesk;

  @internal
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
extension type const AppflowFlowConnectorOperatorAmplitude._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorAmplitude.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorAmplitude.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorAmplitude.arg(TfArg<String> arg)
    : this._(arg);

  static const between = AppflowFlowConnectorOperatorAmplitude._(
    TfArgLiteral('BETWEEN'),
  );

  static const List<AppflowFlowConnectorOperatorAmplitude> values = [between];
}

/// `custom_connector` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorCustomConnector._(
  TfArg<String> _
) implements TfArg<String> {
  AppflowFlowConnectorOperatorCustomConnector.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorCustomConnector.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorCustomConnector.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const contains = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('CONTAINS'),
  );
  static const between = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo =
      AppflowFlowConnectorOperatorCustomConnector._(
        TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
      );
  static const greaterThanOrEqualTo =
      AppflowFlowConnectorOperatorCustomConnector._(
        TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
      );
  static const equalTo = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative =
      AppflowFlowConnectorOperatorCustomConnector._(
        TfArgLiteral('VALIDATE_NON_NEGATIVE'),
      );
  static const validateNumeric = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorCustomConnector._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorCustomConnector> values = [
    projection,
    lessThan,
    greaterThan,
    contains,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `datadog` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorDatadog._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorDatadog.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorDatadog.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorDatadog.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('PROJECTION'),
  );
  static const between = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('BETWEEN'),
  );
  static const equalTo = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorDatadog._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorDatadog> values = [
    projection,
    between,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `dynatrace` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorDynatrace._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorDynatrace.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorDynatrace.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorDynatrace.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('PROJECTION'),
  );
  static const between = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('BETWEEN'),
  );
  static const equalTo = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorDynatrace._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorDynatrace> values = [
    projection,
    between,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `google_analytics` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorGoogleAnalytics._(
  TfArg<String> _
) implements TfArg<String> {
  AppflowFlowConnectorOperatorGoogleAnalytics.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorGoogleAnalytics.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorGoogleAnalytics.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorGoogleAnalytics._(
    TfArgLiteral('PROJECTION'),
  );
  static const between = AppflowFlowConnectorOperatorGoogleAnalytics._(
    TfArgLiteral('BETWEEN'),
  );

  static const List<AppflowFlowConnectorOperatorGoogleAnalytics> values = [
    projection,
    between,
  ];
}

/// `infor_nexus` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorInforNexus._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorInforNexus.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorInforNexus.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorInforNexus.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('PROJECTION'),
  );
  static const between = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('BETWEEN'),
  );
  static const equalTo = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorInforNexus._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorInforNexus> values = [
    projection,
    between,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `marketo` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorMarketo._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorMarketo.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorMarketo.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorMarketo.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('BETWEEN'),
  );
  static const addition = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorMarketo._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorMarketo> values = [
    projection,
    lessThan,
    greaterThan,
    between,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `s3` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorS3._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorS3.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorS3.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorS3.arg(TfArg<String> arg) : this._(arg);

  static const projection = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorS3._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorS3._(TfArgLiteral('NO_OP'));

  static const List<AppflowFlowConnectorOperatorS3> values = [
    projection,
    lessThan,
    greaterThan,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `salesforce` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorSalesforce._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorSalesforce.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorSalesforce.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorSalesforce.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('LESS_THAN'),
  );
  static const contains = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('CONTAINS'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorSalesforce._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorSalesforce> values = [
    projection,
    lessThan,
    contains,
    greaterThan,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `sapo_data` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorSapoData._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorSapoData.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorSapoData.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorSapoData.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('LESS_THAN'),
  );
  static const contains = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('CONTAINS'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorSapoData._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorSapoData> values = [
    projection,
    lessThan,
    contains,
    greaterThan,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `service_now` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorServiceNow._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorServiceNow.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorServiceNow.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorServiceNow.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('PROJECTION'),
  );
  static const contains = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('CONTAINS'),
  );
  static const lessThan = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorServiceNow._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorServiceNow> values = [
    projection,
    contains,
    lessThan,
    greaterThan,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `singular` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorSingular._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorSingular.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorSingular.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorSingular.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('PROJECTION'),
  );
  static const equalTo = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorSingular._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorSingular> values = [
    projection,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `slack` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorSlack._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorSlack.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorSlack.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorSlack.arg(TfArg<String> arg) : this._(arg);

  static const projection = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const between = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorSlack._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorSlack> values = [
    projection,
    lessThan,
    greaterThan,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `trendmicro` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorTrendmicro._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorTrendmicro.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorTrendmicro.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorTrendmicro.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('PROJECTION'),
  );
  static const equalTo = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorTrendmicro._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorTrendmicro> values = [
    projection,
    equalTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `veeva` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorVeeva._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorVeeva.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorVeeva.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorVeeva.arg(TfArg<String> arg) : this._(arg);

  static const projection = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('PROJECTION'),
  );
  static const lessThan = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('LESS_THAN'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const contains = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('CONTAINS'),
  );
  static const between = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('BETWEEN'),
  );
  static const lessThanOrEqualTo = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const greaterThanOrEqualTo = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const equalTo = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('EQUAL_TO'),
  );
  static const notEqualTo = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('NOT_EQUAL_TO'),
  );
  static const addition = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorVeeva._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorVeeva> values = [
    projection,
    lessThan,
    greaterThan,
    contains,
    between,
    lessThanOrEqualTo,
    greaterThanOrEqualTo,
    equalTo,
    notEqualTo,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// `zendesk` — derived from the provider schema description.
extension type const AppflowFlowConnectorOperatorZendesk._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowConnectorOperatorZendesk.variable(String name)
    : this._(TfArg.variable(name));
  AppflowFlowConnectorOperatorZendesk.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowConnectorOperatorZendesk.arg(TfArg<String> arg)
    : this._(arg);

  static const projection = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('PROJECTION'),
  );
  static const greaterThan = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const addition = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('ADDITION'),
  );
  static const multiplication = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('MULTIPLICATION'),
  );
  static const division = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('DIVISION'),
  );
  static const subtraction = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('SUBTRACTION'),
  );
  static const maskAll = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('MASK_ALL'),
  );
  static const maskFirstN = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('MASK_FIRST_N'),
  );
  static const maskLastN = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('MASK_LAST_N'),
  );
  static const validateNonNull = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('VALIDATE_NON_NULL'),
  );
  static const validateNonZero = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('VALIDATE_NON_ZERO'),
  );
  static const validateNonNegative = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('VALIDATE_NON_NEGATIVE'),
  );
  static const validateNumeric = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('VALIDATE_NUMERIC'),
  );
  static const noOp = AppflowFlowConnectorOperatorZendesk._(
    TfArgLiteral('NO_OP'),
  );

  static const List<AppflowFlowConnectorOperatorZendesk> values = [
    projection,
    greaterThan,
    addition,
    multiplication,
    division,
    subtraction,
    maskAll,
    maskFirstN,
    maskLastN,
    validateNonNull,
    validateNonZero,
    validateNonNegative,
    validateNumeric,
    noOp,
  ];
}

/// Typed helper for the `trigger_config` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerConfig {
  const AppflowFlowTriggerConfig({
    required this.triggerType,
    this.triggerProperties,
  });

  final AppflowFlowTriggerType triggerType;

  final AppflowFlowTriggerProperties? triggerProperties;

  @internal
  Map<String, Object?> encode() => {
    'trigger_type': triggerType.toTfJson(),
    'trigger_properties': ?triggerProperties?.encode(),
  };
}

/// `trigger_type` — derived from the provider schema description.
extension type const AppflowFlowTriggerType._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowTriggerType.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowTriggerType.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowTriggerType.arg(TfArg<String> arg) : this._(arg);

  static const scheduled = AppflowFlowTriggerType._(TfArgLiteral('Scheduled'));
  static const event = AppflowFlowTriggerType._(TfArgLiteral('Event'));
  static const ondemand = AppflowFlowTriggerType._(TfArgLiteral('OnDemand'));

  static const List<AppflowFlowTriggerType> values = [
    scheduled,
    event,
    ondemand,
  ];
}

/// Typed helper for the `trigger_config.trigger_properties` block of
/// `aws_appflow_flow` (derived from provider schema).
@immutable
final class AppflowFlowTriggerProperties {
  const AppflowFlowTriggerProperties({this.scheduled});

  final AppflowFlowScheduled? scheduled;

  @internal
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

  final AppflowFlowDataPullMode? dataPullMode;

  final TfArg<String>? firstExecutionFrom;

  final TfArg<String>? scheduleEndTime;

  final TfArg<String> scheduleExpression;

  final TfArg<num>? scheduleOffset;

  final TfArg<String>? scheduleStartTime;

  final TfArg<String>? timezone;

  @internal
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
extension type const AppflowFlowDataPullMode._(TfArg<String> _)
    implements TfArg<String> {
  AppflowFlowDataPullMode.variable(String name) : this._(TfArg.variable(name));
  AppflowFlowDataPullMode.expression(String template)
    : this._(TfArg.expression(template));
  const AppflowFlowDataPullMode.arg(TfArg<String> arg) : this._(arg);

  static const incremental = AppflowFlowDataPullMode._(
    TfArgLiteral('Incremental'),
  );
  static const complete = AppflowFlowDataPullMode._(TfArgLiteral('Complete'));

  static const List<AppflowFlowDataPullMode> values = [incremental, complete];
}

/// Factory wrapper for `aws_appflow_flow`.
final class AwsAppflowFlow extends Resource {
  static const String tfType = 'aws_appflow_flow';

  AwsAppflowFlow(
    super.localName, {
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
