// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_data_transfer_config`.
const Set<String> _googleBigqueryDataTransferConfigSensitive = <String>{
  'sensitive_params.secret_access_key',
};

// ===========================================================================
// schedule_options nested block (max=1)
// ===========================================================================

/// `schedule_options` block (max=1) — fine-grained overrides for the
/// cron schedule defined on the parent
/// [GoogleBigqueryDataTransferConfig.schedule] slot.
///
/// Set [disableAutoScheduling] to `TfArg.literal(true)` to suppress the
/// cron entirely — runs must then be triggered manually via
/// `transferConfigs.startManualRuns`. [startTime] and [endTime] are
/// RFC3339 UTC timestamps that bound when the cron is allowed to fire
/// (manual runs are not constrained by them).
@immutable
class BigqueryDataTransferConfigScheduleOptions {
  const BigqueryDataTransferConfigScheduleOptions({
    this.disableAutoScheduling,
    this.startTime,
    this.endTime,
  });

  /// If true, automatic scheduling is disabled for this transfer
  /// config. The
  /// [GoogleBigqueryDataTransferConfig.schedule] field is ignored when
  /// this is set; only `transferConfigs.startManualRuns` will fire runs.
  final TfArg<bool>? disableAutoScheduling;

  /// RFC3339 UTC timestamp (e.g. `"2026-01-01T00:00:00Z"`). The first
  /// scheduled run will occur at or after this moment. Optional —
  /// defaults to "now" when omitted.
  final TfArg<String>? startTime;

  /// RFC3339 UTC timestamp. After this moment, the cron stops firing
  /// (manual runs are still allowed). Optional.
  final TfArg<String>? endTime;

  Map<String, Object?> toArgMap() => {
    if (disableAutoScheduling != null)
      'disable_auto_scheduling': disableAutoScheduling!.toTfJson(),
    if (startTime != null) 'start_time': startTime!.toTfJson(),
    if (endTime != null) 'end_time': endTime!.toTfJson(),
  };
}

// ===========================================================================
// email_preferences nested block (max=1)
// ===========================================================================

/// `email_preferences` block (max=1) — controls failure-email delivery
/// to the user who owns the transfer config. The owner is the identity
/// that created the resource (or the service account in
/// [GoogleBigqueryDataTransferConfig.serviceAccountName] when set).
@immutable
class BigqueryDataTransferConfigEmailPreferences {
  const BigqueryDataTransferConfigEmailPreferences({
    required this.enableFailureEmail,
  });

  /// If true, an email is delivered to the config owner on every
  /// failed transfer run. Required by the schema (the block exists
  /// solely to carry this flag).
  final TfArg<bool> enableFailureEmail;

  Map<String, Object?> toArgMap() => {
    'enable_failure_email': enableFailureEmail.toTfJson(),
  };
}

// ===========================================================================
// sensitive_params nested block (max=1)
// ===========================================================================

/// `sensitive_params` block (max=1) — credential slot for the
/// `amazon_s3` data source (and any future DTS connector that needs
/// out-of-band secrets). The block is named "sensitive_params" because
/// the keys it carries logically belong to the parent
/// [GoogleBigqueryDataTransferConfig.params] map; placing them here
/// instead lets the provider flag them sensitive (so they are masked
/// in plan output) and prevents accidental disclosure via state
/// inspection.
///
/// Credentials must NOT also be supplied in
/// [GoogleBigqueryDataTransferConfig.params] — the provider rejects
/// configurations that double-specify the same logical secret and
/// errors at apply time.
///
/// The secret access key is exactly one of
/// [BigqueryDataTransferConfigWriteOnlySecretAccessKey] and
/// [BigqueryDataTransferConfigPlaintextSecretAccessKey] (provider 8.x
/// ExactlyOneOf).
@immutable
class BigqueryDataTransferConfigSensitiveParams {
  const BigqueryDataTransferConfigSensitiveParams({
    required this.secretAccessKey,
  });

  /// AWS secret access key for the `amazon_s3` data source. The matching
  /// access key id (non-secret) goes in the parent
  /// [GoogleBigqueryDataTransferConfig.params] map under the key
  /// `'access_key_id'`.
  final BigqueryDataTransferConfigSecretAccessKey secretAccessKey;

  Map<String, Object?> toArgMap() => {...secretAccessKey.encode()};
}

/// `sensitive_params.secret_access_key` / `secret_access_key_wo`. Sealed
/// so the provider's ExactlyOneOf holds at compile time.
sealed class BigqueryDataTransferConfigSecretAccessKey {
  const BigqueryDataTransferConfigSecretAccessKey();

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

/// `encryption_configuration` block (max=1) — CMEK key used to encrypt
/// data written by this transfer config to the destination dataset.
/// When unset, the dataset's
/// `default_encryption_configuration.kms_key_name` (if any) applies; if
/// neither is set, Google-managed encryption is used.
///
/// The BigQuery DTS service identity
/// (`service-{projectNumber}@gcp-sa-bigquerydatatransfer.iam.gserviceaccount.com`)
/// must hold `roles/cloudkms.cryptoKeyEncrypterDecrypter` on the key
/// before the transfer config can use it.
@immutable
class BigqueryDataTransferConfigEncryptionConfiguration {
  const BigqueryDataTransferConfigEncryptionConfiguration({
    required this.kmsKeyName,
  });

  /// Fully-qualified KMS key resource name
  /// (`projects/{p}/locations/{l}/keyRings/{r}/cryptoKeys/{k}`).
  final TfArg<String> kmsKeyName;

  Map<String, Object?> toArgMap() => {'kms_key_name': kmsKeyName.toTfJson()};
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
           if (destinationDatasetId != null)
             'destination_dataset_id': destinationDatasetId,
           if (location != null) 'location': location,
           'params': params,
           if (schedule != null) 'schedule': schedule,
           if (scheduleOptions != null)
             'schedule_options': TfArg.literal([scheduleOptions.toArgMap()]),
           if (disabled != null) 'disabled': disabled,
           if (serviceAccountName != null)
             'service_account_name': serviceAccountName,
           if (notificationPubsubTopic != null)
             'notification_pubsub_topic': notificationPubsubTopic,
           if (emailPreferences != null)
             'email_preferences': TfArg.literal([emailPreferences.toArgMap()]),
           if (sensitiveParams != null)
             'sensitive_params': TfArg.literal([sensitiveParams.toArgMap()]),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               encryptionConfiguration.toArgMap(),
             ]),
           if (dataRefreshWindowDays != null)
             'data_refresh_window_days': dataRefreshWindowDays,
           if (project != null) 'project': project,
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
