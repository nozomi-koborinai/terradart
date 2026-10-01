// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dms_s3_endpoint`.
const Set<String> _awsDmsS3EndpointSensitive = <String>{};

/// Dms S3 Endpoint Canned Acl For enum for `canned_acl_for_objects`.
extension type const DmsS3EndpointCannedAclForObjects._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointCannedAclForObjects.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointCannedAclForObjects.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointCannedAclForObjects.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsS3EndpointCannedAclForObjects._(TfArgLiteral('none'));
  static const private = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('private'),
  );
  static const publicRead = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('public-read'),
  );
  static const publicReadWrite = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('public-read-write'),
  );
  static const authenticatedRead = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('authenticated-read'),
  );
  static const awsExecRead = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('aws-exec-read'),
  );
  static const bucketOwnerRead = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('bucket-owner-read'),
  );
  static const bucketOwnerFullControl = DmsS3EndpointCannedAclForObjects._(
    TfArgLiteral('bucket-owner-full-control'),
  );

  static const List<DmsS3EndpointCannedAclForObjects> values = [
    none,
    private,
    publicRead,
    publicReadWrite,
    authenticatedRead,
    awsExecRead,
    bucketOwnerRead,
    bucketOwnerFullControl,
  ];
}

/// Dms S3 Endpoint Compression enum for `compression_type`.
extension type const DmsS3EndpointCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointCompressionType.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsS3EndpointCompressionType._(TfArgLiteral('none'));
  static const gzip = DmsS3EndpointCompressionType._(TfArgLiteral('gzip'));

  static const List<DmsS3EndpointCompressionType> values = [none, gzip];
}

/// Dms S3 Endpoint Data enum for `data_format`.
extension type const DmsS3EndpointDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointDataFormat.variable(String name) : this._(TfArg.variable(name));
  DmsS3EndpointDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointDataFormat.arg(TfArg<String> arg) : this._(arg);

  static const csv = DmsS3EndpointDataFormat._(TfArgLiteral('csv'));
  static const parquet = DmsS3EndpointDataFormat._(TfArgLiteral('parquet'));

  static const List<DmsS3EndpointDataFormat> values = [csv, parquet];
}

/// Dms S3 Endpoint Date Partition enum for `date_partition_delimiter`.
extension type const DmsS3EndpointDatePartitionDelimiter._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointDatePartitionDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointDatePartitionDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointDatePartitionDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const slash = DmsS3EndpointDatePartitionDelimiter._(
    TfArgLiteral('SLASH'),
  );
  static const underscore = DmsS3EndpointDatePartitionDelimiter._(
    TfArgLiteral('UNDERSCORE'),
  );
  static const dash = DmsS3EndpointDatePartitionDelimiter._(
    TfArgLiteral('DASH'),
  );
  static const none = DmsS3EndpointDatePartitionDelimiter._(
    TfArgLiteral('NONE'),
  );

  static const List<DmsS3EndpointDatePartitionDelimiter> values = [
    slash,
    underscore,
    dash,
    none,
  ];
}

/// Dms S3 Endpoint Date Partition enum for `date_partition_sequence`.
extension type const DmsS3EndpointDatePartitionSequence._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointDatePartitionSequence.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointDatePartitionSequence.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointDatePartitionSequence.arg(TfArg<String> arg) : this._(arg);

  static const yyyymmdd = DmsS3EndpointDatePartitionSequence._(
    TfArgLiteral('YYYYMMDD'),
  );
  static const yyyymmddhh = DmsS3EndpointDatePartitionSequence._(
    TfArgLiteral('YYYYMMDDHH'),
  );
  static const yyyymm = DmsS3EndpointDatePartitionSequence._(
    TfArgLiteral('YYYYMM'),
  );
  static const mmyyyydd = DmsS3EndpointDatePartitionSequence._(
    TfArgLiteral('MMYYYYDD'),
  );
  static const ddmmyyyy = DmsS3EndpointDatePartitionSequence._(
    TfArgLiteral('DDMMYYYY'),
  );

  static const List<DmsS3EndpointDatePartitionSequence> values = [
    yyyymmdd,
    yyyymmddhh,
    yyyymm,
    mmyyyydd,
    ddmmyyyy,
  ];
}

/// Dms S3 Endpoint Encoding enum for `encoding_type`.
extension type const DmsS3EndpointEncodingType._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointEncodingType.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointEncodingType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointEncodingType.arg(TfArg<String> arg) : this._(arg);

  static const plain = DmsS3EndpointEncodingType._(TfArgLiteral('plain'));
  static const plainDictionary = DmsS3EndpointEncodingType._(
    TfArgLiteral('plain-dictionary'),
  );
  static const rleDictionary = DmsS3EndpointEncodingType._(
    TfArgLiteral('rle-dictionary'),
  );

  static const List<DmsS3EndpointEncodingType> values = [
    plain,
    plainDictionary,
    rleDictionary,
  ];
}

/// Dms S3 Endpoint Encryption enum for `encryption_mode`.
extension type const DmsS3EndpointEncryptionMode._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointEncryptionMode.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointEncryptionMode.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointEncryptionMode.arg(TfArg<String> arg) : this._(arg);

  static const sseKms = DmsS3EndpointEncryptionMode._(TfArgLiteral('SSE_KMS'));
  static const sseS3 = DmsS3EndpointEncryptionMode._(TfArgLiteral('SSE_S3'));

  static const List<DmsS3EndpointEncryptionMode> values = [sseKms, sseS3];
}

/// Dms S3 Endpoint enum for `endpoint_type`.
extension type const DmsS3EndpointType._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointType.variable(String name) : this._(TfArg.variable(name));
  DmsS3EndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointType.arg(TfArg<String> arg) : this._(arg);

  static const source = DmsS3EndpointType._(TfArgLiteral('source'));
  static const target = DmsS3EndpointType._(TfArgLiteral('target'));

  static const List<DmsS3EndpointType> values = [source, target];
}

/// Dms S3 Endpoint Parquet enum for `parquet_version`.
extension type const DmsS3EndpointParquetVersion._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointParquetVersion.variable(String name)
    : this._(TfArg.variable(name));
  DmsS3EndpointParquetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointParquetVersion.arg(TfArg<String> arg) : this._(arg);

  static const parquet10 = DmsS3EndpointParquetVersion._(
    TfArgLiteral('parquet-1-0'),
  );
  static const parquet20 = DmsS3EndpointParquetVersion._(
    TfArgLiteral('parquet-2-0'),
  );

  static const List<DmsS3EndpointParquetVersion> values = [
    parquet10,
    parquet20,
  ];
}

/// Dms S3 Endpoint Ssl enum for `ssl_mode`.
extension type const DmsS3EndpointSslMode._(TfArg<String> _)
    implements TfArg<String> {
  DmsS3EndpointSslMode.variable(String name) : this._(TfArg.variable(name));
  DmsS3EndpointSslMode.expression(String template)
    : this._(TfArg.expression(template));
  const DmsS3EndpointSslMode.arg(TfArg<String> arg) : this._(arg);

  static const none = DmsS3EndpointSslMode._(TfArgLiteral('none'));
  static const require = DmsS3EndpointSslMode._(TfArgLiteral('require'));
  static const verifyCa = DmsS3EndpointSslMode._(TfArgLiteral('verify-ca'));
  static const verifyFull = DmsS3EndpointSslMode._(TfArgLiteral('verify-full'));

  static const List<DmsS3EndpointSslMode> values = [
    none,
    require,
    verifyCa,
    verifyFull,
  ];
}

/// Factory wrapper for `aws_dms_s3_endpoint`.
final class AwsDmsS3Endpoint extends Resource {
  static const String tfType = 'aws_dms_s3_endpoint';

  AwsDmsS3Endpoint(
    super.localName, {
    TfArg<bool>? addColumnName,
    TfArg<bool>? addTrailingPaddingCharacter,
    TfArg<String>? bucketFolder,
    required RefTo<AwsS3Bucket> bucketName,
    DmsS3EndpointCannedAclForObjects? cannedAclForObjects,
    TfArg<bool>? cdcInsertsAndUpdates,
    TfArg<bool>? cdcInsertsOnly,
    TfArg<num>? cdcMaxBatchInterval,
    TfArg<num>? cdcMinFileSize,
    TfArg<String>? cdcPath,
    TfArg<String>? certificateArn,
    DmsS3EndpointCompressionType? compressionType,
    TfArg<String>? csvDelimiter,
    TfArg<String>? csvNoSupValue,
    TfArg<String>? csvNullValue,
    TfArg<String>? csvRowDelimiter,
    DmsS3EndpointDataFormat? dataFormat,
    TfArg<num>? dataPageSize,
    DmsS3EndpointDatePartitionDelimiter? datePartitionDelimiter,
    TfArg<bool>? datePartitionEnabled,
    DmsS3EndpointDatePartitionSequence? datePartitionSequence,
    TfArg<String>? datePartitionTimezone,
    TfArg<bool>? detachTargetOnLobLookupFailureParquet,
    TfArg<num>? dictPageSizeLimit,
    TfArg<bool>? enableStatistics,
    DmsS3EndpointEncodingType? encodingType,
    DmsS3EndpointEncryptionMode? encryptionMode,
    required TfArg<String> endpointId,
    required DmsS3EndpointType endpointType,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? externalTableDefinition,
    TfArg<bool>? glueCatalogGeneration,
    TfArg<num>? ignoreHeaderRows,
    TfArg<bool>? includeOpForFullLoad,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<num>? maxFileSize,
    TfArg<bool>? parquetTimestampInMillisecond,
    DmsS3EndpointParquetVersion? parquetVersion,
    TfArg<bool>? preserveTransactions,
    TfArg<String>? region,
    TfArg<bool>? rfc4180,
    TfArg<num>? rowGroupLength,
    TfArg<String>? serverSideEncryptionKmsKeyId,
    required TfArg<String> serviceAccessRoleArn,
    DmsS3EndpointSslMode? sslMode,
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

  /// Reference to `add_column_name` attribute.
  TfRef<bool> get addColumnName =>
      TfRef.attribute<bool>(this, 'add_column_name');

  /// Reference to `add_trailing_padding_character` attribute.
  TfRef<bool> get addTrailingPaddingCharacter =>
      TfRef.attribute<bool>(this, 'add_trailing_padding_character');

  /// Reference to `bucket_folder` attribute.
  TfRef<String> get bucketFolder =>
      TfRef.attribute<String>(this, 'bucket_folder');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `canned_acl_for_objects` attribute.
  TfRef<String> get cannedAclForObjects =>
      TfRef.attribute<String>(this, 'canned_acl_for_objects');

  /// Reference to `cdc_inserts_and_updates` attribute.
  TfRef<bool> get cdcInsertsAndUpdates =>
      TfRef.attribute<bool>(this, 'cdc_inserts_and_updates');

  /// Reference to `cdc_inserts_only` attribute.
  TfRef<bool> get cdcInsertsOnly =>
      TfRef.attribute<bool>(this, 'cdc_inserts_only');

  /// Reference to `cdc_max_batch_interval` attribute.
  TfRef<num> get cdcMaxBatchInterval =>
      TfRef.attribute<num>(this, 'cdc_max_batch_interval');

  /// Reference to `cdc_min_file_size` attribute.
  TfRef<num> get cdcMinFileSize =>
      TfRef.attribute<num>(this, 'cdc_min_file_size');

  /// Reference to `cdc_path` attribute.
  TfRef<String> get cdcPath => TfRef.attribute<String>(this, 'cdc_path');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `compression_type` attribute.
  TfRef<String> get compressionType =>
      TfRef.attribute<String>(this, 'compression_type');

  /// Reference to `csv_delimiter` attribute.
  TfRef<String> get csvDelimiter =>
      TfRef.attribute<String>(this, 'csv_delimiter');

  /// Reference to `csv_no_sup_value` attribute.
  TfRef<String> get csvNoSupValue =>
      TfRef.attribute<String>(this, 'csv_no_sup_value');

  /// Reference to `csv_null_value` attribute.
  TfRef<String> get csvNullValue =>
      TfRef.attribute<String>(this, 'csv_null_value');

  /// Reference to `csv_row_delimiter` attribute.
  TfRef<String> get csvRowDelimiter =>
      TfRef.attribute<String>(this, 'csv_row_delimiter');

  /// Reference to `data_format` attribute.
  TfRef<String> get dataFormat => TfRef.attribute<String>(this, 'data_format');

  /// Reference to `data_page_size` attribute.
  TfRef<num> get dataPageSize => TfRef.attribute<num>(this, 'data_page_size');

  /// Reference to `date_partition_delimiter` attribute.
  TfRef<String> get datePartitionDelimiter =>
      TfRef.attribute<String>(this, 'date_partition_delimiter');

  /// Reference to `date_partition_enabled` attribute.
  TfRef<bool> get datePartitionEnabled =>
      TfRef.attribute<bool>(this, 'date_partition_enabled');

  /// Reference to `date_partition_sequence` attribute.
  TfRef<String> get datePartitionSequence =>
      TfRef.attribute<String>(this, 'date_partition_sequence');

  /// Reference to `date_partition_timezone` attribute.
  TfRef<String> get datePartitionTimezone =>
      TfRef.attribute<String>(this, 'date_partition_timezone');

  /// Reference to `detach_target_on_lob_lookup_failure_parquet` attribute.
  TfRef<bool> get detachTargetOnLobLookupFailureParquet =>
      TfRef.attribute<bool>(
        this,
        'detach_target_on_lob_lookup_failure_parquet',
      );

  /// Reference to `dict_page_size_limit` attribute.
  TfRef<num> get dictPageSizeLimit =>
      TfRef.attribute<num>(this, 'dict_page_size_limit');

  /// Reference to `enable_statistics` attribute.
  TfRef<bool> get enableStatistics =>
      TfRef.attribute<bool>(this, 'enable_statistics');

  /// Reference to `encoding_type` attribute.
  TfRef<String> get encodingType =>
      TfRef.attribute<String>(this, 'encoding_type');

  /// Reference to `encryption_mode` attribute.
  TfRef<String> get encryptionMode =>
      TfRef.attribute<String>(this, 'encryption_mode');

  /// Reference to `endpoint_id` attribute.
  TfRef<String> get endpointId => TfRef.attribute<String>(this, 'endpoint_id');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `external_table_definition` attribute.
  TfRef<String> get externalTableDefinition =>
      TfRef.attribute<String>(this, 'external_table_definition');

  /// Reference to `glue_catalog_generation` attribute.
  TfRef<bool> get glueCatalogGeneration =>
      TfRef.attribute<bool>(this, 'glue_catalog_generation');

  /// Reference to `ignore_header_rows` attribute.
  TfRef<num> get ignoreHeaderRows =>
      TfRef.attribute<num>(this, 'ignore_header_rows');

  /// Reference to `include_op_for_full_load` attribute.
  TfRef<bool> get includeOpForFullLoad =>
      TfRef.attribute<bool>(this, 'include_op_for_full_load');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `max_file_size` attribute.
  TfRef<num> get maxFileSize => TfRef.attribute<num>(this, 'max_file_size');

  /// Reference to `parquet_timestamp_in_millisecond` attribute.
  TfRef<bool> get parquetTimestampInMillisecond =>
      TfRef.attribute<bool>(this, 'parquet_timestamp_in_millisecond');

  /// Reference to `parquet_version` attribute.
  TfRef<String> get parquetVersion =>
      TfRef.attribute<String>(this, 'parquet_version');

  /// Reference to `preserve_transactions` attribute.
  TfRef<bool> get preserveTransactions =>
      TfRef.attribute<bool>(this, 'preserve_transactions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rfc_4180` attribute.
  TfRef<bool> get rfc4180 => TfRef.attribute<bool>(this, 'rfc_4180');

  /// Reference to `row_group_length` attribute.
  TfRef<num> get rowGroupLength =>
      TfRef.attribute<num>(this, 'row_group_length');

  /// Reference to `server_side_encryption_kms_key_id` attribute.
  TfRef<String> get serverSideEncryptionKmsKeyId =>
      TfRef.attribute<String>(this, 'server_side_encryption_kms_key_id');

  /// Reference to `service_access_role_arn` attribute.
  TfRef<String> get serviceAccessRoleArn =>
      TfRef.attribute<String>(this, 'service_access_role_arn');

  /// Reference to `ssl_mode` attribute.
  TfRef<String> get sslMode => TfRef.attribute<String>(this, 'ssl_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timestamp_column_name` attribute.
  TfRef<String> get timestampColumnName =>
      TfRef.attribute<String>(this, 'timestamp_column_name');

  /// Reference to `use_csv_no_sup_value` attribute.
  TfRef<bool> get useCsvNoSupValue =>
      TfRef.attribute<bool>(this, 'use_csv_no_sup_value');

  /// Reference to `use_task_start_time_for_full_load_timestamp` attribute.
  TfRef<bool> get useTaskStartTimeForFullLoadTimestamp => TfRef.attribute<bool>(
    this,
    'use_task_start_time_for_full_load_timestamp',
  );
}
