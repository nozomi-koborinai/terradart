// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_data_transfer_config`.
const Set<String> _googleBigqueryDataTransferConfigSensitive = <String>{
  'sensitive_params.secret_access_key',
};

// ===========================================================================
// schedule_options nested block (max=1)
// ===========================================================================

// ===========================================================================
// email_preferences nested block (max=1)
// ===========================================================================

// ===========================================================================
// sensitive_params nested block (max=1)
// ===========================================================================

/// `sensitive_params.secret_access_key` / `secret_access_key_wo`. Sealed
/// so the provider's ExactlyOneOf holds at compile time.
sealed class BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigSecretAccessKey();

  /// Write-only secret access key (Terraform 1.11+): the provider sends [secretAccessKeyWo] but never stores it in Terraform state.
  const factory BigqueryDataTransferConfigSecretAccessKey.writeOnly({
    required TfArg<String> secretAccessKeyWo,
    TfArg<String>? secretAccessKeyWoVersion,
  }) = BigqueryDataTransferConfigWriteOnlySecretAccessKey;

  /// Plaintext secret access key.
  const factory BigqueryDataTransferConfigSecretAccessKey.plaintext({
    required TfArg<String> secretAccessKey,
  }) = BigqueryDataTransferConfigPlaintextSecretAccessKey;

  /// The key that tells the variants apart.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Write-only secret access key (Terraform 1.11+): the provider sends
/// [secretAccessKeyWo] but never stores it in Terraform state. Change
/// [secretAccessKeyWoVersion] (`'1'` → `'2'`) to rotate.
@immutable
final class BigqueryDataTransferConfigWriteOnlySecretAccessKey
    extends BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigWriteOnlySecretAccessKey({
    required this.secretAccessKeyWo,
    this.secretAccessKeyWoVersion,
  });

  final TfArg<String> secretAccessKeyWo;

  /// Version tag of [secretAccessKeyWo]; changing it triggers a rotation.
  final TfArg<String>? secretAccessKeyWoVersion;

  @override
  String get blockKey => 'secret_access_key_wo';

  @override
  Map<String, Object?> encode() => {
    'secret_access_key_wo': secretAccessKeyWo.toTfJson(),
    if (secretAccessKeyWoVersion != null)
      'secret_access_key_wo_version': secretAccessKeyWoVersion!.toTfJson(),
  };
}

/// Plaintext secret access key. Schema-flagged sensitive (masked in plan
/// output and synth) but stored in Terraform state — prefer
/// [BigqueryDataTransferConfigWriteOnlySecretAccessKey].
@immutable
final class BigqueryDataTransferConfigPlaintextSecretAccessKey
    extends BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigPlaintextSecretAccessKey({
    required this.secretAccessKey,
  });

  final TfArg<String> secretAccessKey;

  @override
  String get blockKey => 'secret_access_key';

  @override
  Map<String, Object?> encode() => {
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

// ===========================================================================
// encryption_configuration nested block (max=1)
// ===========================================================================

/// Typed helper for the `email_preferences` block of
/// `google_bigquery_data_transfer_config` (derived from provider schema).
@immutable
final class BigqueryDataTransferConfigEmailPreferences {
  const BigqueryDataTransferConfigEmailPreferences({
    required this.enableFailureEmail,
  });

  final TfArg<bool> enableFailureEmail;

  Map<String, Object?> encode() => {
    'enable_failure_email': enableFailureEmail.toTfJson(),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `google_bigquery_data_transfer_config` (derived from provider schema).
@immutable
final class BigqueryDataTransferConfigEncryptionConfiguration {
  const BigqueryDataTransferConfigEncryptionConfiguration({
    required this.kmsKeyName,
  });

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `schedule_options` block of
/// `google_bigquery_data_transfer_config` (derived from provider schema).
@immutable
final class BigqueryDataTransferConfigScheduleOptions {
  const BigqueryDataTransferConfigScheduleOptions({
    this.disableAutoScheduling,
    this.endTime,
    this.startTime,
  });

  final TfArg<bool>? disableAutoScheduling;

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'disable_auto_scheduling': ?disableAutoScheduling?.toTfJson(),
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `sensitive_params` block of
/// `google_bigquery_data_transfer_config` (derived from provider schema).
@immutable
final class BigqueryDataTransferConfigSensitiveParams {
  const BigqueryDataTransferConfigSensitiveParams({
    this.secretAccessKey,
    this.secretAccessKeyWo,
    this.secretAccessKeyWoVersion,
  });

  final TfArg<String>? secretAccessKey;

  final TfArg<String>? secretAccessKeyWo;

  final TfArg<String>? secretAccessKeyWoVersion;

  Map<String, Object?> encode() => {
    'secret_access_key': ?secretAccessKey?.toTfJson(),
    'secret_access_key_wo': ?secretAccessKeyWo?.toTfJson(),
    'secret_access_key_wo_version': ?secretAccessKeyWoVersion?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigquery_data_transfer_config`.
///
/// Represents a data transfer configuration. A transfer configuration contains
/// all metadata needed to perform a data transfer.
///
/// Manages a BigQuery Data Transfer Service (DTS) configuration — a
/// recurring import job that lands data into a BigQuery dataset from a
/// Google-owned source (`scheduled_query`, `google_cloud_storage`,
/// `dcm_dt`, `google_ads`, `youtube_channel`, ...) or a third-party
/// connector (`amazon_s3`, `redshift`, `azure_blob_storage`, ...). The
/// canonical reference for `data_source_id` values and the per-source
/// `params` map is the
/// [DTS data-source catalog](https://cloud.google.com/bigquery-transfer/docs/introduction).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_bigquery_data_transfer_config.`).
/// - `displayName`: human-readable label shown in the BigQuery UI.
/// - `dataSourceId`: the DTS data-source registry key. Free-form
///   `String` rather than a Dart enum because Google adds new
///   connectors asynchronously and we do not want to pin a terradart
///   release to the registry. Common values: `"scheduled_query"`,
///   `"google_cloud_storage"`, `"amazon_s3"`, `"redshift"`,
///   `"google_ads"`, `"youtube_channel"`, `"dcm_dt"`.
/// - `params`: data-source-specific key/value bag. The expected keys
///   depend on [dataSourceId]; see the doc table below for the three
///   most common shapes.
///
/// `params` per `data_source_id` (canonical entries — consult the DTS
/// documentation for the complete schema of each source):
///
/// `scheduled_query` — re-runs a SQL query and writes the result to a
/// destination table:
/// ```dart
/// params: TfArg.literal(const {
///   'query':
///       'SELECT date, COUNT(*) AS n FROM `proj.ds.events` '
///       'WHERE date = @run_date GROUP BY date',
///   'destination_table_name_template': 'daily_event_counts_{run_date}',
///   'write_disposition': 'WRITE_APPEND',       // or WRITE_TRUNCATE
///   'partitioning_field': '',                  // optional
/// }),
/// ```
///
/// `google_cloud_storage` — loads CSV / JSON / Avro / Parquet files from
/// a GCS prefix into a destination table:
/// ```dart
/// params: TfArg.literal(const {
///   'data_path_template': 'gs://my-bucket/exports/{run_date}/*.csv',
///   'destination_table_name_template': 'gcs_import_{run_date}',
///   'file_format': 'CSV',                      // CSV|JSON|AVRO|PARQUET|ORC
///   'field_delimiter': ',',
///   'skip_leading_rows': '1',
///   'write_disposition': 'WRITE_APPEND',
/// }),
/// ```
///
/// `amazon_s3` — pulls files from an S3 prefix. The plaintext key id
/// goes in [params], the secret key goes in [sensitiveParams] (the
/// provider rejects configurations that put the secret in [params]):
/// ```dart
/// params: TfArg.literal(const {
///   'data_path': 's3://my-bucket/exports/{run_date}/*.csv',
///   'destination_table_name_template': 's3_import_{run_date}',
///   'access_key_id': 'AKIAIOSFODNN7EXAMPLE',
///   'file_format': 'CSV',
/// }),
/// sensitiveParams: BigqueryDataTransferConfigSensitiveParams(
///   secretAccessKey: BigqueryDataTransferConfigWriteOnlySecretAccessKey(
///     secretAccessKeyWo: TfArg.literal(awsSecretAccessKey),
///     secretAccessKeyWoVersion: TfArg.literal('1'),
///   ),
/// ),
/// ```
///
/// Schedule shapes for `schedule` (App Engine cron syntax — the only
/// format DTS accepts):
/// - `"every 24 hours"` / `"every 6 hours"` (fixed interval)
/// - `"every day 03:00"` (UTC, daily anchor)
/// - `"first sunday of month 00:00"` (calendar anchor)
/// - `"1st,3rd monday of month 15:30"` (multi-anchor)
/// - `""` (empty) — fall back to the data source's default cadence.
///
/// Manual-only mode: set [scheduleOptions]
/// `.disableAutoScheduling = TfArg.literal(true)` to suppress the cron
/// entirely; runs must then be triggered via
/// `transferConfigs.startManualRuns`.
///
/// Credentials handling: the S3 secret access key MUST be placed in
/// [sensitiveParams] rather than [params], as exactly one of
/// [BigqueryDataTransferConfigWriteOnlySecretAccessKey] (Terraform 1.11+;
/// keeps the key out of Terraform state, bump `secretAccessKeyWoVersion`
/// to rotate) or [BigqueryDataTransferConfigPlaintextSecretAccessKey]
/// (schema-flagged sensitive and also enumerated in
/// [extraSensitiveFields], but stored in state).
///
/// Example (daily GCS → BigQuery import):
/// ```dart
/// final dailyImport = GoogleBigqueryDataTransferConfig(
///   localName: 'daily_gcs_import',
///   displayName: TfArg.literal('Daily GCS export -> BigQuery'),
///   dataSourceId: TfArg.literal('google_cloud_storage'),
///   destinationDatasetId: TfArg.ref(analytics.datasetIdRef),
///   location: TfArg.literal('US'),
///   schedule: TfArg.literal('every day 03:00'),
///   params: TfArg.literal(const {
///     'data_path_template':
///         'gs://exports-bucket/daily/{run_date}/*.csv',
///     'destination_table_name_template': 'gcs_import_{run_date}',
///     'file_format': 'CSV',
///     'field_delimiter': ',',
///     'skip_leading_rows': '1',
///   }),
///   emailPreferences: BigqueryDataTransferConfigEmailPreferences(
///     enableFailureEmail: TfArg.literal(true),
///   ),
/// );
/// ```
final class GoogleBigqueryDataTransferConfig extends Resource {
  static const String tfType = 'google_bigquery_data_transfer_config';

  GoogleBigqueryDataTransferConfig({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> dataSourceId,
    TfArg<String>? destinationDatasetId,
    TfArg<String>? location,
    required TfArg<Map<String, String>> params,
    TfArg<String>? schedule,
    BigqueryDataTransferConfigScheduleOptions? scheduleOptions,
    TfArg<bool>? disabled,
    TfArg<String>? serviceAccountName,
    TfArg<String>? notificationPubsubTopic,
    BigqueryDataTransferConfigEmailPreferences? emailPreferences,
    BigqueryDataTransferConfigSensitiveParams? sensitiveParams,
    BigqueryDataTransferConfigEncryptionConfiguration? encryptionConfiguration,
    TfArg<num>? dataRefreshWindowDays,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'data_source_id': dataSourceId,
           'destination_dataset_id': ?destinationDatasetId,
           'location': ?location,
           'params': params,
           'schedule': ?schedule,
           if (scheduleOptions != null)
             'schedule_options': TfArg.literal(scheduleOptions.encode()),
           'disabled': ?disabled,
           'service_account_name': ?serviceAccountName,
           'notification_pubsub_topic': ?notificationPubsubTopic,
           if (emailPreferences != null)
             'email_preferences': TfArg.literal(emailPreferences.encode()),
           if (sensitiveParams != null)
             'sensitive_params': TfArg.literal(sensitiveParams.encode()),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
           'data_refresh_window_days': ?dataRefreshWindowDays,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDataTransferConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryDataTransferConfig>`.
  RefTo<GoogleBigqueryDataTransferConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
