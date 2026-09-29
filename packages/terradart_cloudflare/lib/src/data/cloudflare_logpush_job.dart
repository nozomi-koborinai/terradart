// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../logs/cloudflare_logpush_job.dart';

/// Sensitive field paths for `cloudflare_logpush_job`.
const Set<String> _cloudflareLogpushJobSensitive = <String>{'destination_conf'};

/// Factory wrapper for `cloudflare_logpush_job`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class DataCloudflareLogpushJob extends Data {
  static const String tfType = 'cloudflare_logpush_job';

  DataCloudflareLogpushJob({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<num> jobId,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'job_id': jobId,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushJobSensitive;

  /// A reference to the `cloudflare_logpush_job` this data source reads, for
  /// arguments typed `RefTo<CloudflareLogpushJob>`.
  RefTo<CloudflareLogpushJob> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `filter_attack_traffic` attribute.
  TfRef<bool> get filterAttackTraffic =>
      TfRef.attribute<bool>(this, 'filter_attack_traffic');

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
