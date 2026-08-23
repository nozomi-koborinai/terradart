// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_logpush_dataset_job`.
const Set<String> _cloudflareLogpushDatasetJobSensitive = <String>{
  'destination_conf',
};

/// Factory wrapper for `cloudflare_logpush_dataset_job`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class DataCloudflareLogpushDatasetJob extends Data {
  static const String tfType = 'cloudflare_logpush_dataset_job';

  DataCloudflareLogpushDatasetJob({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? datasetId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (datasetId != null) 'dataset_id': datasetId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushDatasetJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `destination_conf` attribute.
  TfRef<String> get destinationConf =>
      TfRef.attribute<String>(this, 'destination_conf');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `last_complete` attribute.
  TfRef<String> get lastComplete =>
      TfRef.attribute<String>(this, 'last_complete');

  /// Reference to `last_error` attribute.
  TfRef<String> get lastError => TfRef.attribute<String>(this, 'last_error');

  /// Reference to `logpull_options` attribute.
  TfRef<String> get logpullOptions =>
      TfRef.attribute<String>(this, 'logpull_options');

  /// Reference to `max_upload_bytes` attribute.
  TfRef<num> get maxUploadBytes =>
      TfRef.attribute<num>(this, 'max_upload_bytes');

  /// Reference to `max_upload_interval_seconds` attribute.
  TfRef<num> get maxUploadIntervalSeconds =>
      TfRef.attribute<num>(this, 'max_upload_interval_seconds');

  /// Reference to `max_upload_records` attribute.
  TfRef<num> get maxUploadRecords =>
      TfRef.attribute<num>(this, 'max_upload_records');
}
