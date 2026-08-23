// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_logpush_job`.
const Set<String> _cloudflareLogpushJobSensitive = <String>{
  'destination_conf',
  'ownership_challenge',
};

/// Typed helper for the `output_options` block of
/// `cloudflare_logpush_job` (derived from provider schema).
@immutable
final class LogpushJobOutputOptions {
  const LogpushJobOutputOptions({
    this.batchPrefix,
    this.batchSuffix,
    this.cve202144228,
    this.fieldDelimiter,
    this.fieldNames,
    this.mergeSubrequests,
    this.outputType,
    this.recordDelimiter,
    this.recordPrefix,
    this.recordSuffix,
    this.recordTemplate,
    this.sampleRate,
    this.timestampFormat,
  });

  final TfArg<String>? batchPrefix;

  final TfArg<String>? batchSuffix;

  final TfArg<bool>? cve202144228;

  final TfArg<String>? fieldDelimiter;

  final TfArg<List<Object?>>? fieldNames;

  final TfArg<bool>? mergeSubrequests;

  final TfArg<String>? outputType;

  final TfArg<String>? recordDelimiter;

  final TfArg<String>? recordPrefix;

  final TfArg<String>? recordSuffix;

  final TfArg<String>? recordTemplate;

  final TfArg<num>? sampleRate;

  final TfArg<String>? timestampFormat;

  Map<String, Object?> encode() => {
    if (batchPrefix != null) 'batch_prefix': batchPrefix!.toTfJson(),
    if (batchSuffix != null) 'batch_suffix': batchSuffix!.toTfJson(),
    if (cve202144228 != null) 'cve_2021_44228': cve202144228!.toTfJson(),
    if (fieldDelimiter != null) 'field_delimiter': fieldDelimiter!.toTfJson(),
    if (fieldNames != null) 'field_names': fieldNames!.toTfJson(),
    if (mergeSubrequests != null)
      'merge_subrequests': mergeSubrequests!.toTfJson(),
    if (outputType != null) 'output_type': outputType!.toTfJson(),
    if (recordDelimiter != null)
      'record_delimiter': recordDelimiter!.toTfJson(),
    if (recordPrefix != null) 'record_prefix': recordPrefix!.toTfJson(),
    if (recordSuffix != null) 'record_suffix': recordSuffix!.toTfJson(),
    if (recordTemplate != null) 'record_template': recordTemplate!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
    if (timestampFormat != null)
      'timestamp_format': timestampFormat!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_logpush_job`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class CloudflareLogpushJob extends Resource {
  static const String tfType = 'cloudflare_logpush_job';

  CloudflareLogpushJob({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? dataset,
    required TfArg<String> destinationConf,
    TfArg<bool>? enabled,
    TfArg<String>? filter,
    TfArg<String>? frequency,
    TfArg<String>? kind,
    TfArg<String>? logpullOptions,
    TfArg<num>? maxUploadBytes,
    TfArg<num>? maxUploadIntervalSeconds,
    TfArg<num>? maxUploadRecords,
    TfArg<String>? name,
    TfArg<String>? ownershipChallenge,
    TfArg<String>? zoneId,
    LogpushJobOutputOptions? outputOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (dataset != null) 'dataset': dataset,
           'destination_conf': destinationConf,
           if (enabled != null) 'enabled': enabled,
           if (filter != null) 'filter': filter,
           if (frequency != null) 'frequency': frequency,
           if (kind != null) 'kind': kind,
           if (logpullOptions != null) 'logpull_options': logpullOptions,
           if (maxUploadBytes != null) 'max_upload_bytes': maxUploadBytes,
           if (maxUploadIntervalSeconds != null)
             'max_upload_interval_seconds': maxUploadIntervalSeconds,
           if (maxUploadRecords != null) 'max_upload_records': maxUploadRecords,
           if (name != null) 'name': name,
           if (ownershipChallenge != null)
             'ownership_challenge': ownershipChallenge,
           if (zoneId != null) 'zone_id': zoneId,
           if (outputOptions != null)
             'output_options': TfArg.literal(outputOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `last_complete` attribute.
  TfRef<String> get lastComplete =>
      TfRef.attribute<String>(this, 'last_complete');

  /// Reference to `last_error` attribute.
  TfRef<String> get lastError => TfRef.attribute<String>(this, 'last_error');
}
