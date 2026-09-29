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
           if (addColumnName != null) 'add_column_name': addColumnName,
           if (addTrailingPaddingCharacter != null)
             'add_trailing_padding_character': addTrailingPaddingCharacter,
           if (bucketFolder != null) 'bucket_folder': bucketFolder,
           'bucket_name': bucketName.encodeAs('id'),
           if (cannedAclForObjects != null)
             'canned_acl_for_objects': cannedAclForObjects,
           if (cdcInsertsAndUpdates != null)
             'cdc_inserts_and_updates': cdcInsertsAndUpdates,
           if (cdcInsertsOnly != null) 'cdc_inserts_only': cdcInsertsOnly,
           if (cdcMaxBatchInterval != null)
             'cdc_max_batch_interval': cdcMaxBatchInterval,
           if (cdcMinFileSize != null) 'cdc_min_file_size': cdcMinFileSize,
           if (cdcPath != null) 'cdc_path': cdcPath,
           if (certificateArn != null) 'certificate_arn': certificateArn,
           if (compressionType != null) 'compression_type': compressionType,
           if (csvDelimiter != null) 'csv_delimiter': csvDelimiter,
           if (csvNoSupValue != null) 'csv_no_sup_value': csvNoSupValue,
           if (csvNullValue != null) 'csv_null_value': csvNullValue,
           if (csvRowDelimiter != null) 'csv_row_delimiter': csvRowDelimiter,
           if (dataFormat != null) 'data_format': dataFormat,
           if (dataPageSize != null) 'data_page_size': dataPageSize,
           if (datePartitionDelimiter != null)
             'date_partition_delimiter': datePartitionDelimiter,
           if (datePartitionEnabled != null)
             'date_partition_enabled': datePartitionEnabled,
           if (datePartitionSequence != null)
             'date_partition_sequence': datePartitionSequence,
           if (datePartitionTimezone != null)
             'date_partition_timezone': datePartitionTimezone,
           if (detachTargetOnLobLookupFailureParquet != null)
             'detach_target_on_lob_lookup_failure_parquet':
                 detachTargetOnLobLookupFailureParquet,
           if (dictPageSizeLimit != null)
             'dict_page_size_limit': dictPageSizeLimit,
           if (enableStatistics != null) 'enable_statistics': enableStatistics,
           if (encodingType != null) 'encoding_type': encodingType,
           if (encryptionMode != null) 'encryption_mode': encryptionMode,
           'endpoint_id': endpointId,
           'endpoint_type': endpointType,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (externalTableDefinition != null)
             'external_table_definition': externalTableDefinition,
           if (glueCatalogGeneration != null)
             'glue_catalog_generation': glueCatalogGeneration,
           if (ignoreHeaderRows != null) 'ignore_header_rows': ignoreHeaderRows,
           if (includeOpForFullLoad != null)
             'include_op_for_full_load': includeOpForFullLoad,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn.encodeAs('arn'),
           if (maxFileSize != null) 'max_file_size': maxFileSize,
           if (parquetTimestampInMillisecond != null)
             'parquet_timestamp_in_millisecond': parquetTimestampInMillisecond,
           if (parquetVersion != null) 'parquet_version': parquetVersion,
           if (preserveTransactions != null)
             'preserve_transactions': preserveTransactions,
           if (region != null) 'region': region,
           if (rfc4180 != null) 'rfc_4180': rfc4180,
           if (rowGroupLength != null) 'row_group_length': rowGroupLength,
           if (serverSideEncryptionKmsKeyId != null)
             'server_side_encryption_kms_key_id': serverSideEncryptionKmsKeyId,
           'service_access_role_arn': serviceAccessRoleArn,
           if (sslMode != null) 'ssl_mode': sslMode,
           if (tags != null) 'tags': tags,
           if (timestampColumnName != null)
             'timestamp_column_name': timestampColumnName,
           if (useCsvNoSupValue != null)
             'use_csv_no_sup_value': useCsvNoSupValue,
           if (useTaskStartTimeForFullLoadTimestamp != null)
             'use_task_start_time_for_full_load_timestamp':
                 useTaskStartTimeForFullLoadTimestamp,
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
