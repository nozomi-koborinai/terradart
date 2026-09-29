// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dms_s3_endpoint`.
const Set<String> _awsDmsS3EndpointSensitive = <String>{};

/// Dms S3 Endpoint Canned Acl For enum for `canned_acl_for_objects`.
enum DmsS3EndpointCannedAclForObjects implements TerraformEnum {
  none('none'),
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  awsExecRead('aws-exec-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control');

  const DmsS3EndpointCannedAclForObjects(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Compression enum for `compression_type`.
enum DmsS3EndpointCompressionType implements TerraformEnum {
  none('none'),
  gzip('gzip');

  const DmsS3EndpointCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Data enum for `data_format`.
enum DmsS3EndpointDataFormat implements TerraformEnum {
  csv('csv'),
  parquet('parquet');

  const DmsS3EndpointDataFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Date Partition enum for `date_partition_delimiter`.
enum DmsS3EndpointDatePartitionDelimiter implements TerraformEnum {
  slash('SLASH'),
  underscore('UNDERSCORE'),
  dash('DASH'),
  none('NONE');

  const DmsS3EndpointDatePartitionDelimiter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Date Partition enum for `date_partition_sequence`.
enum DmsS3EndpointDatePartitionSequence implements TerraformEnum {
  yyyymmdd('YYYYMMDD'),
  yyyymmddhh('YYYYMMDDHH'),
  yyyymm('YYYYMM'),
  mmyyyydd('MMYYYYDD'),
  ddmmyyyy('DDMMYYYY');

  const DmsS3EndpointDatePartitionSequence(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Encoding enum for `encoding_type`.
enum DmsS3EndpointEncodingType implements TerraformEnum {
  plain('plain'),
  plainDictionary('plain-dictionary'),
  rleDictionary('rle-dictionary');

  const DmsS3EndpointEncodingType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Encryption enum for `encryption_mode`.
enum DmsS3EndpointEncryptionMode implements TerraformEnum {
  sseKms('SSE_KMS'),
  sseS3('SSE_S3');

  const DmsS3EndpointEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Endpoint enum for `endpoint_type`.
enum DmsS3EndpointEndpointType implements TerraformEnum {
  source('source'),
  target('target');

  const DmsS3EndpointEndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Parquet enum for `parquet_version`.
enum DmsS3EndpointParquetVersion implements TerraformEnum {
  parquet10('parquet-1-0'),
  parquet20('parquet-2-0');

  const DmsS3EndpointParquetVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dms S3 Endpoint Ssl enum for `ssl_mode`.
enum DmsS3EndpointSslMode implements TerraformEnum {
  none('none'),
  require('require'),
  verifyCa('verify-ca'),
  verifyFull('verify-full');

  const DmsS3EndpointSslMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dms_s3_endpoint`.
final class AwsDmsS3Endpoint extends Resource {
  static const String tfType = 'aws_dms_s3_endpoint';

  AwsDmsS3Endpoint({
    required super.localName,
    TfArg<bool>? addColumnName,
    TfArg<bool>? addTrailingPaddingCharacter,
    TfArg<String>? bucketFolder,
    required RefTo<AwsS3Bucket> bucketName,
    TfArg<DmsS3EndpointCannedAclForObjects>? cannedAclForObjects,
    TfArg<bool>? cdcInsertsAndUpdates,
    TfArg<bool>? cdcInsertsOnly,
    TfArg<num>? cdcMaxBatchInterval,
    TfArg<num>? cdcMinFileSize,
    TfArg<String>? cdcPath,
    TfArg<String>? certificateArn,
    TfArg<DmsS3EndpointCompressionType>? compressionType,
    TfArg<String>? csvDelimiter,
    TfArg<String>? csvNoSupValue,
    TfArg<String>? csvNullValue,
    TfArg<String>? csvRowDelimiter,
    TfArg<DmsS3EndpointDataFormat>? dataFormat,
    TfArg<num>? dataPageSize,
    TfArg<DmsS3EndpointDatePartitionDelimiter>? datePartitionDelimiter,
    TfArg<bool>? datePartitionEnabled,
    TfArg<DmsS3EndpointDatePartitionSequence>? datePartitionSequence,
    TfArg<String>? datePartitionTimezone,
    TfArg<bool>? detachTargetOnLobLookupFailureParquet,
    TfArg<num>? dictPageSizeLimit,
    TfArg<bool>? enableStatistics,
    TfArg<DmsS3EndpointEncodingType>? encodingType,
    TfArg<DmsS3EndpointEncryptionMode>? encryptionMode,
    required TfArg<String> endpointId,
    required TfArg<DmsS3EndpointEndpointType> endpointType,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? externalTableDefinition,
    TfArg<bool>? glueCatalogGeneration,
    TfArg<num>? ignoreHeaderRows,
    TfArg<bool>? includeOpForFullLoad,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<num>? maxFileSize,
    TfArg<bool>? parquetTimestampInMillisecond,
    TfArg<DmsS3EndpointParquetVersion>? parquetVersion,
    TfArg<bool>? preserveTransactions,
    TfArg<String>? region,
    TfArg<bool>? rfc4180,
    TfArg<num>? rowGroupLength,
    TfArg<String>? serverSideEncryptionKmsKeyId,
    required TfArg<String> serviceAccessRoleArn,
    TfArg<DmsS3EndpointSslMode>? sslMode,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timestampColumnName,
    TfArg<bool>? useCsvNoSupValue,
    TfArg<bool>? useTaskStartTimeForFullLoadTimestamp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'add_column_name': ?addColumnName,
           'add_trailing_padding_character': ?addTrailingPaddingCharacter,
           'bucket_folder': ?bucketFolder,
           'bucket_name': bucketName.encodeAs('id'),
           'canned_acl_for_objects': ?cannedAclForObjects,
           'cdc_inserts_and_updates': ?cdcInsertsAndUpdates,
           'cdc_inserts_only': ?cdcInsertsOnly,
           'cdc_max_batch_interval': ?cdcMaxBatchInterval,
           'cdc_min_file_size': ?cdcMinFileSize,
           'cdc_path': ?cdcPath,
           'certificate_arn': ?certificateArn,
           'compression_type': ?compressionType,
           'csv_delimiter': ?csvDelimiter,
           'csv_no_sup_value': ?csvNoSupValue,
           'csv_null_value': ?csvNullValue,
           'csv_row_delimiter': ?csvRowDelimiter,
           'data_format': ?dataFormat,
           'data_page_size': ?dataPageSize,
           'date_partition_delimiter': ?datePartitionDelimiter,
           'date_partition_enabled': ?datePartitionEnabled,
           'date_partition_sequence': ?datePartitionSequence,
           'date_partition_timezone': ?datePartitionTimezone,
           'detach_target_on_lob_lookup_failure_parquet':
               ?detachTargetOnLobLookupFailureParquet,
           'dict_page_size_limit': ?dictPageSizeLimit,
           'enable_statistics': ?enableStatistics,
           'encoding_type': ?encodingType,
           'encryption_mode': ?encryptionMode,
           'endpoint_id': endpointId,
           'endpoint_type': endpointType,
           'expected_bucket_owner': ?expectedBucketOwner,
           'external_table_definition': ?externalTableDefinition,
           'glue_catalog_generation': ?glueCatalogGeneration,
           'ignore_header_rows': ?ignoreHeaderRows,
           'include_op_for_full_load': ?includeOpForFullLoad,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'max_file_size': ?maxFileSize,
           'parquet_timestamp_in_millisecond': ?parquetTimestampInMillisecond,
           'parquet_version': ?parquetVersion,
           'preserve_transactions': ?preserveTransactions,
           'region': ?region,
           'rfc_4180': ?rfc4180,
           'row_group_length': ?rowGroupLength,
           'server_side_encryption_kms_key_id': ?serverSideEncryptionKmsKeyId,
           'service_access_role_arn': serviceAccessRoleArn,
           'ssl_mode': ?sslMode,
           'tags': ?tags,
           'timestamp_column_name': ?timestampColumnName,
           'use_csv_no_sup_value': ?useCsvNoSupValue,
           'use_task_start_time_for_full_load_timestamp':
               ?useTaskStartTimeForFullLoadTimestamp,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsS3EndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsS3Endpoint>`.
  RefTo<AwsDmsS3Endpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_arn` attribute.
  TfRef<String> get endpointArn =>
      TfRef.attribute<String>(this, 'endpoint_arn');

  /// Reference to `engine_display_name` attribute.
  TfRef<String> get engineDisplayName =>
      TfRef.attribute<String>(this, 'engine_display_name');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
