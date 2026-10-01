// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigquery_data_transfer_config`.
const Set<String> _googleBigqueryDataTransferConfigSensitive = <String>{
  'sensitive_params.secret_access_key',
};

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
    required this.secretAccessKey,
    this.secretAccessKeyWoVersion,
  });

  final BigqueryDataTransferConfigSecretAccessKey secretAccessKey;

  final TfArg<String>? secretAccessKeyWoVersion;

  Map<String, Object?> encode() => {
    ...secretAccessKey.encode(),
    'secret_access_key_wo_version': ?secretAccessKeyWoVersion?.toTfJson(),
  };
}

/// Exactly one of `secret_access_key`, `secret_access_key_wo` on the `sensitive_params` block of `google_bigquery_data_transfer_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.secretAccessKey(...)`.
sealed class BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigSecretAccessKey();

  /// Sets `secret_access_key`.
  const factory BigqueryDataTransferConfigSecretAccessKey.secretAccessKey(
    TfArg<String> secretAccessKey,
  ) = BigqueryDataTransferConfigSecretAccessKeyChoice;

  /// Sets `secret_access_key_wo`.
  const factory BigqueryDataTransferConfigSecretAccessKey.secretAccessKeyWo(
    TfArg<String> secretAccessKeyWo,
  ) = BigqueryDataTransferConfigSecretAccessKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BigqueryDataTransferConfigSecretAccessKey.secretAccessKey] choice: sets `secret_access_key`.
final class BigqueryDataTransferConfigSecretAccessKeyChoice
    extends BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigSecretAccessKeyChoice(this.secretAccessKey);

  final TfArg<String> secretAccessKey;

  @override
  String get blockKey => 'secret_access_key';

  @override
  Map<String, Object?> encode() => {
    'secret_access_key': secretAccessKey.toTfJson(),
  };
}

/// The [BigqueryDataTransferConfigSecretAccessKey.secretAccessKeyWo] choice: sets `secret_access_key_wo`.
final class BigqueryDataTransferConfigSecretAccessKeyWo
    extends BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigSecretAccessKeyWo(this.secretAccessKeyWo);

  final TfArg<String> secretAccessKeyWo;

  @override
  String get blockKey => 'secret_access_key_wo';

  @override
  Map<String, Object?> encode() => {
    'secret_access_key_wo': secretAccessKeyWo.toTfJson(),
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
/// final params = TfArg.literal(const {
///   'query':
///       'SELECT date, COUNT(*) AS n FROM `proj.ds.events` '
///       'WHERE date = @run_date GROUP BY date',
///   'destination_table_name_template': 'daily_event_counts_{run_date}',
///   'write_disposition': 'WRITE_APPEND',       // or WRITE_TRUNCATE
///   'partitioning_field': '',                  // optional
/// });
/// ```
///
/// `google_cloud_storage` — loads CSV / JSON / Avro / Parquet files from
/// a GCS prefix into a destination table:
/// ```dart
/// final params = TfArg.literal(const {
///   'data_path_template': 'gs://my-bucket/exports/{run_date}/*.csv',
///   'destination_table_name_template': 'gcs_import_{run_date}',
///   'file_format': 'CSV',                      // CSV|JSON|AVRO|PARQUET|ORC
///   'field_delimiter': ',',
///   'skip_leading_rows': '1',
///   'write_disposition': 'WRITE_APPEND',
/// });
/// ```
///
/// `amazon_s3` — pulls files from an S3 prefix. The plaintext key id
/// goes in [params], the secret key goes in [sensitiveParams] (the
/// provider rejects configurations that put the secret in [params]):
/// ```dart
/// final params = TfArg.literal(const {
///   'data_path': 's3://my-bucket/exports/{run_date}/*.csv',
///   'destination_table_name_template': 's3_import_{run_date}',
///   'access_key_id': 'AKIAIOSFODNN7EXAMPLE',
///   'file_format': 'CSV',
/// });
/// final sensitiveParams = BigqueryDataTransferConfigSensitiveParams(
///   secretAccessKey: .secretAccessKeyWo(.literal(awsSecretAccessKey)),
///   secretAccessKeyWoVersion: .literal('1'),
/// );
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
/// `disableAutoScheduling: .literal(true)` to suppress the cron
/// entirely; runs must then be triggered via
/// `transferConfigs.startManualRuns`.
///
/// Credentials handling: the S3 secret access key MUST be placed in
/// [sensitiveParams] rather than [params], as `secretAccessKey:`
/// `.secretAccessKeyWo(...)` (Terraform 1.11+; keeps the key out of
/// Terraform state, bump `secretAccessKeyWoVersion` to rotate) or
/// `.secretAccessKey(...)` (schema-flagged sensitive, but stored in
/// state).
///
/// Example (daily GCS → BigQuery import):
/// ```dart
/// final dailyImport = GoogleBigqueryDataTransferConfig(
///   'daily_gcs_import',
///   displayName: TfArg.literal('Daily GCS export -> BigQuery'),
///   dataSourceId: TfArg.literal('google_cloud_storage'),
///   destinationDatasetId: analytics.ref,
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

  GoogleBigqueryDataTransferConfig(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> dataSourceId,
    RefTo<GoogleBigqueryDataset>? destinationDatasetId,
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
           'destination_dataset_id': ?destinationDatasetId?.encodeAs(
             'dataset_id',
           ),
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_refresh_window_days` attribute.
  TfRef<num> get dataRefreshWindowDays =>
      TfRef.attribute<num>(this, 'data_refresh_window_days');

  /// Reference to `data_source_id` attribute.
  TfRef<String> get dataSourceId =>
      TfRef.attribute<String>(this, 'data_source_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `destination_dataset_id` attribute.
  TfRef<String> get destinationDatasetId =>
      TfRef.attribute<String>(this, 'destination_dataset_id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `notification_pubsub_topic` attribute.
  TfRef<String> get notificationPubsubTopic =>
      TfRef.attribute<String>(this, 'notification_pubsub_topic');

  /// Reference to `params` attribute.
  TfRef<Map<String, String>> get params =>
      TfRef.attribute<Map<String, String>>(this, 'params');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schedule` attribute.
  TfRef<String> get schedule => TfRef.attribute<String>(this, 'schedule');

  /// Reference to `service_account_name` attribute.
  TfRef<String> get serviceAccountName =>
      TfRef.attribute<String>(this, 'service_account_name');
}
