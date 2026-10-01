// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpush_job`.
const Set<String> _cloudflareLogpushJobSensitive = <String>{
  'destination_conf',
  'ownership_challenge',
};

/// Logpush Job enum for `dataset`.
enum LogpushJobDataset implements TerraformEnum {
  accessRequests('access_requests'),
  accountAbuseProtectionEvents('account_abuse_protection_events'),
  auditLogs('audit_logs'),
  auditLogsV2('audit_logs_v2'),
  bisoUserActions('biso_user_actions'),
  casbFindings('casb_findings'),
  devicePostureResults('device_posture_results'),
  dexApplicationTests('dex_application_tests'),
  dexDeviceStateEvents('dex_device_state_events'),
  dlpForensicCopies('dlp_forensic_copies'),
  dnsFirewallLogs('dns_firewall_logs'),
  dnsLogs('dns_logs'),
  emailSecurityAlerts('email_security_alerts'),
  emailSecurityPostDeliveryEvents('email_security_post_delivery_events'),
  firewallEvents('firewall_events'),
  gatewayDns('gateway_dns'),
  gatewayHttp('gateway_http'),
  gatewayNetwork('gateway_network'),
  httpRequests('http_requests'),
  ipsecLogs('ipsec_logs'),
  magicBgpLogs('magic_bgp_logs'),
  magicIdsDetections('magic_ids_detections'),
  mcpPortalLogs('mcp_portal_logs'),
  mnmFlowLogs('mnm_flow_logs'),
  nelReports('nel_reports'),
  networkAnalyticsLogs('network_analytics_logs'),
  pageShieldEvents('page_shield_events'),
  sinkholeHttpLogs('sinkhole_http_logs'),
  spectrumEvents('spectrum_events'),
  sshLogs('ssh_logs'),
  turnstileEvents('turnstile_events'),
  warpConfigChanges('warp_config_changes'),
  warpToggleChanges('warp_toggle_changes'),
  websocketAnalytics('websocket_analytics'),
  workersTraceEvents('workers_trace_events'),
  zarazEvents('zaraz_events'),
  zeroTrustNetworkSessions('zero_trust_network_sessions');

  const LogpushJobDataset(this.terraformValue);
  @override
  final String terraformValue;
}

/// Logpush Job enum for `frequency`.
enum LogpushJobFrequency implements TerraformEnum {
  high('high'),
  low('low');

  const LogpushJobFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Logpush Job enum for `kind`.
enum LogpushJobKind implements TerraformEnum {
  empty(''),
  edge('edge');

  const LogpushJobKind(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<List<String>>? fieldNames;

  final TfArg<bool>? mergeSubrequests;

  final TfArg<LogpushJobOutputType>? outputType;

  final TfArg<String>? recordDelimiter;

  final TfArg<String>? recordPrefix;

  final TfArg<String>? recordSuffix;

  final TfArg<String>? recordTemplate;

  final TfArg<num>? sampleRate;

  final TfArg<LogpushJobTimestampFormat>? timestampFormat;

  Map<String, Object?> encode() => {
    'batch_prefix': ?batchPrefix?.toTfJson(),
    'batch_suffix': ?batchSuffix?.toTfJson(),
    'cve_2021_44228': ?cve202144228?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'field_names': ?fieldNames?.toTfJson(),
    'merge_subrequests': ?mergeSubrequests?.toTfJson(),
    'output_type': ?outputType?.toTfJson(),
    'record_delimiter': ?recordDelimiter?.toTfJson(),
    'record_prefix': ?recordPrefix?.toTfJson(),
    'record_suffix': ?recordSuffix?.toTfJson(),
    'record_template': ?recordTemplate?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
    'timestamp_format': ?timestampFormat?.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum LogpushJobOutputType implements TerraformEnum {
  ndjson('ndjson'),
  csv('csv');

  const LogpushJobOutputType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `timestamp_format` — derived from the provider schema description.
enum LogpushJobTimestampFormat implements TerraformEnum {
  unixnano('unixnano'),
  unix('unix'),
  rfc3339('rfc3339'),
  rfc3339ms('rfc3339ms'),
  rfc3339ns('rfc3339ns');

  const LogpushJobTimestampFormat(this.terraformValue);
  @override
  final String terraformValue;
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<LogpushJobDataset>? dataset,
    required TfArg<String> destinationConf,
    TfArg<bool>? enabled,
    TfArg<String>? filter,
    TfArg<bool>? filterAttackTraffic,
    TfArg<LogpushJobFrequency>? frequency,
    TfArg<LogpushJobKind>? kind,
    TfArg<String>? logpullOptions,
    TfArg<num>? maxUploadBytes,
    TfArg<num>? maxUploadIntervalSeconds,
    TfArg<num>? maxUploadRecords,
    TfArg<String>? name,
    TfArg<String>? ownershipChallenge,
    RefTo<CloudflareZone>? zoneId,
    LogpushJobOutputOptions? outputOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'dataset': ?dataset,
           'destination_conf': destinationConf,
           'enabled': ?enabled,
           'filter': ?filter,
           'filter_attack_traffic': ?filterAttackTraffic,
           'frequency': ?frequency,
           'kind': ?kind,
           'logpull_options': ?logpullOptions,
           'max_upload_bytes': ?maxUploadBytes,
           'max_upload_interval_seconds': ?maxUploadIntervalSeconds,
           'max_upload_records': ?maxUploadRecords,
           'name': ?name,
           'ownership_challenge': ?ownershipChallenge,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (outputOptions != null)
             'output_options': TfArg.literal(outputOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLogpushJob>`.
  RefTo<CloudflareLogpushJob> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get datasetRef => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `destination_conf` attribute.
  TfRef<String> get destinationConfRef =>
      TfRef.attribute<String>(this, 'destination_conf');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filterRef => TfRef.attribute<String>(this, 'filter');

  /// Reference to `filter_attack_traffic` attribute.
  TfRef<bool> get filterAttackTrafficRef =>
      TfRef.attribute<bool>(this, 'filter_attack_traffic');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequencyRef => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `logpull_options` attribute.
  TfRef<String> get logpullOptionsRef =>
      TfRef.attribute<String>(this, 'logpull_options');

  /// Reference to `max_upload_bytes` attribute.
  TfRef<num> get maxUploadBytesRef =>
      TfRef.attribute<num>(this, 'max_upload_bytes');

  /// Reference to `max_upload_interval_seconds` attribute.
  TfRef<num> get maxUploadIntervalSecondsRef =>
      TfRef.attribute<num>(this, 'max_upload_interval_seconds');

  /// Reference to `max_upload_records` attribute.
  TfRef<num> get maxUploadRecordsRef =>
      TfRef.attribute<num>(this, 'max_upload_records');

  /// Reference to `ownership_challenge` attribute.
  TfRef<String> get ownershipChallengeRef =>
      TfRef.attribute<String>(this, 'ownership_challenge');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
