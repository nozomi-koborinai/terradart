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
extension type const LogpushJobDataset._(TfArg<String> _)
    implements TfArg<String> {
  LogpushJobDataset.variable(String name) : this._(TfArg.variable(name));
  LogpushJobDataset.expression(String template)
    : this._(TfArg.expression(template));
  const LogpushJobDataset.arg(TfArg<String> arg) : this._(arg);

  static const accessRequests = LogpushJobDataset._(
    TfArgLiteral('access_requests'),
  );
  static const accountAbuseProtectionEvents = LogpushJobDataset._(
    TfArgLiteral('account_abuse_protection_events'),
  );
  static const auditLogs = LogpushJobDataset._(TfArgLiteral('audit_logs'));
  static const auditLogsV2 = LogpushJobDataset._(TfArgLiteral('audit_logs_v2'));
  static const bisoUserActions = LogpushJobDataset._(
    TfArgLiteral('biso_user_actions'),
  );
  static const casbFindings = LogpushJobDataset._(
    TfArgLiteral('casb_findings'),
  );
  static const devicePostureResults = LogpushJobDataset._(
    TfArgLiteral('device_posture_results'),
  );
  static const dexApplicationTests = LogpushJobDataset._(
    TfArgLiteral('dex_application_tests'),
  );
  static const dexDeviceStateEvents = LogpushJobDataset._(
    TfArgLiteral('dex_device_state_events'),
  );
  static const dlpForensicCopies = LogpushJobDataset._(
    TfArgLiteral('dlp_forensic_copies'),
  );
  static const dnsFirewallLogs = LogpushJobDataset._(
    TfArgLiteral('dns_firewall_logs'),
  );
  static const dnsLogs = LogpushJobDataset._(TfArgLiteral('dns_logs'));
  static const emailSecurityAlerts = LogpushJobDataset._(
    TfArgLiteral('email_security_alerts'),
  );
  static const emailSecurityPostDeliveryEvents = LogpushJobDataset._(
    TfArgLiteral('email_security_post_delivery_events'),
  );
  static const firewallEvents = LogpushJobDataset._(
    TfArgLiteral('firewall_events'),
  );
  static const gatewayDns = LogpushJobDataset._(TfArgLiteral('gateway_dns'));
  static const gatewayHttp = LogpushJobDataset._(TfArgLiteral('gateway_http'));
  static const gatewayNetwork = LogpushJobDataset._(
    TfArgLiteral('gateway_network'),
  );
  static const httpRequests = LogpushJobDataset._(
    TfArgLiteral('http_requests'),
  );
  static const ipsecLogs = LogpushJobDataset._(TfArgLiteral('ipsec_logs'));
  static const magicBgpLogs = LogpushJobDataset._(
    TfArgLiteral('magic_bgp_logs'),
  );
  static const magicIdsDetections = LogpushJobDataset._(
    TfArgLiteral('magic_ids_detections'),
  );
  static const mcpPortalLogs = LogpushJobDataset._(
    TfArgLiteral('mcp_portal_logs'),
  );
  static const mnmFlowLogs = LogpushJobDataset._(TfArgLiteral('mnm_flow_logs'));
  static const nelReports = LogpushJobDataset._(TfArgLiteral('nel_reports'));
  static const networkAnalyticsLogs = LogpushJobDataset._(
    TfArgLiteral('network_analytics_logs'),
  );
  static const pageShieldEvents = LogpushJobDataset._(
    TfArgLiteral('page_shield_events'),
  );
  static const sinkholeHttpLogs = LogpushJobDataset._(
    TfArgLiteral('sinkhole_http_logs'),
  );
  static const spectrumEvents = LogpushJobDataset._(
    TfArgLiteral('spectrum_events'),
  );
  static const sshLogs = LogpushJobDataset._(TfArgLiteral('ssh_logs'));
  static const turnstileEvents = LogpushJobDataset._(
    TfArgLiteral('turnstile_events'),
  );
  static const warpConfigChanges = LogpushJobDataset._(
    TfArgLiteral('warp_config_changes'),
  );
  static const warpToggleChanges = LogpushJobDataset._(
    TfArgLiteral('warp_toggle_changes'),
  );
  static const websocketAnalytics = LogpushJobDataset._(
    TfArgLiteral('websocket_analytics'),
  );
  static const workersTraceEvents = LogpushJobDataset._(
    TfArgLiteral('workers_trace_events'),
  );
  static const zarazEvents = LogpushJobDataset._(TfArgLiteral('zaraz_events'));
  static const zeroTrustNetworkSessions = LogpushJobDataset._(
    TfArgLiteral('zero_trust_network_sessions'),
  );

  static const List<LogpushJobDataset> values = [
    accessRequests,
    accountAbuseProtectionEvents,
    auditLogs,
    auditLogsV2,
    bisoUserActions,
    casbFindings,
    devicePostureResults,
    dexApplicationTests,
    dexDeviceStateEvents,
    dlpForensicCopies,
    dnsFirewallLogs,
    dnsLogs,
    emailSecurityAlerts,
    emailSecurityPostDeliveryEvents,
    firewallEvents,
    gatewayDns,
    gatewayHttp,
    gatewayNetwork,
    httpRequests,
    ipsecLogs,
    magicBgpLogs,
    magicIdsDetections,
    mcpPortalLogs,
    mnmFlowLogs,
    nelReports,
    networkAnalyticsLogs,
    pageShieldEvents,
    sinkholeHttpLogs,
    spectrumEvents,
    sshLogs,
    turnstileEvents,
    warpConfigChanges,
    warpToggleChanges,
    websocketAnalytics,
    workersTraceEvents,
    zarazEvents,
    zeroTrustNetworkSessions,
  ];
}

/// Logpush Job enum for `frequency`.
extension type const LogpushJobFrequency._(TfArg<String> _)
    implements TfArg<String> {
  LogpushJobFrequency.variable(String name) : this._(TfArg.variable(name));
  LogpushJobFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const LogpushJobFrequency.arg(TfArg<String> arg) : this._(arg);

  static const high = LogpushJobFrequency._(TfArgLiteral('high'));
  static const low = LogpushJobFrequency._(TfArgLiteral('low'));

  static const List<LogpushJobFrequency> values = [high, low];
}

/// Logpush Job enum for `kind`.
extension type const LogpushJobKind._(TfArg<String> _)
    implements TfArg<String> {
  LogpushJobKind.variable(String name) : this._(TfArg.variable(name));
  LogpushJobKind.expression(String template)
    : this._(TfArg.expression(template));
  const LogpushJobKind.arg(TfArg<String> arg) : this._(arg);

  static const empty = LogpushJobKind._(TfArgLiteral(''));
  static const edge = LogpushJobKind._(TfArgLiteral('edge'));

  static const List<LogpushJobKind> values = [empty, edge];
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

  final LogpushJobOutputType? outputType;

  final TfArg<String>? recordDelimiter;

  final TfArg<String>? recordPrefix;

  final TfArg<String>? recordSuffix;

  final TfArg<String>? recordTemplate;

  final TfArg<num>? sampleRate;

  final LogpushJobTimestampFormat? timestampFormat;

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
extension type const LogpushJobOutputType._(TfArg<String> _)
    implements TfArg<String> {
  LogpushJobOutputType.variable(String name) : this._(TfArg.variable(name));
  LogpushJobOutputType.expression(String template)
    : this._(TfArg.expression(template));
  const LogpushJobOutputType.arg(TfArg<String> arg) : this._(arg);

  static const ndjson = LogpushJobOutputType._(TfArgLiteral('ndjson'));
  static const csv = LogpushJobOutputType._(TfArgLiteral('csv'));

  static const List<LogpushJobOutputType> values = [ndjson, csv];
}

/// `timestamp_format` — derived from the provider schema description.
extension type const LogpushJobTimestampFormat._(TfArg<String> _)
    implements TfArg<String> {
  LogpushJobTimestampFormat.variable(String name)
    : this._(TfArg.variable(name));
  LogpushJobTimestampFormat.expression(String template)
    : this._(TfArg.expression(template));
  const LogpushJobTimestampFormat.arg(TfArg<String> arg) : this._(arg);

  static const unixnano = LogpushJobTimestampFormat._(TfArgLiteral('unixnano'));
  static const unix = LogpushJobTimestampFormat._(TfArgLiteral('unix'));
  static const rfc3339 = LogpushJobTimestampFormat._(TfArgLiteral('rfc3339'));
  static const rfc3339ms = LogpushJobTimestampFormat._(
    TfArgLiteral('rfc3339ms'),
  );
  static const rfc3339ns = LogpushJobTimestampFormat._(
    TfArgLiteral('rfc3339ns'),
  );

  static const List<LogpushJobTimestampFormat> values = [
    unixnano,
    unix,
    rfc3339,
    rfc3339ms,
    rfc3339ns,
  ];
}

/// Factory wrapper for `cloudflare_logpush_job`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class CloudflareLogpushJob extends Resource {
  static const String tfType = 'cloudflare_logpush_job';

  CloudflareLogpushJob(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    LogpushJobDataset? dataset,
    required TfArg<String> destinationConf,
    TfArg<bool>? enabled,
    TfArg<String>? filter,
    TfArg<bool>? filterAttackTraffic,
    LogpushJobFrequency? frequency,
    LogpushJobKind? kind,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');

  /// Reference to `destination_conf` attribute.
  TfRef<String> get destinationConf =>
      TfRef.attribute<String>(this, 'destination_conf');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `filter_attack_traffic` attribute.
  TfRef<bool> get filterAttackTraffic =>
      TfRef.attribute<bool>(this, 'filter_attack_traffic');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

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

  /// Reference to `ownership_challenge` attribute.
  TfRef<String> get ownershipChallenge =>
      TfRef.attribute<String>(this, 'ownership_challenge');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
