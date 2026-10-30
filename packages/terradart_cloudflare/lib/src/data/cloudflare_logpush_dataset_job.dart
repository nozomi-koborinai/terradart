// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpush_dataset_job`.
const Set<String> _cloudflareLogpushDatasetJobSensitive = <String>{
  'destination_conf',
};

/// Data Logpush Dataset Job Dataset enum for `dataset_id`.
extension type const DataLogpushDatasetJobDatasetId._(TfArg<String> _)
    implements TfArg<String> {
  DataLogpushDatasetJobDatasetId.variable(String name)
    : this._(TfArg.variable(name));
  DataLogpushDatasetJobDatasetId.expression(String template)
    : this._(TfArg.expression(template));
  const DataLogpushDatasetJobDatasetId.arg(TfArg<String> arg) : this._(arg);

  static const accessRequests = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('access_requests'),
  );
  static const accountAbuseProtectionEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('account_abuse_protection_events'),
  );
  static const auditLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('audit_logs'),
  );
  static const auditLogsV2 = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('audit_logs_v2'),
  );
  static const bisoUserActions = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('biso_user_actions'),
  );
  static const casbFindings = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('casb_findings'),
  );
  static const devicePostureResults = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('device_posture_results'),
  );
  static const dexApplicationTests = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('dex_application_tests'),
  );
  static const dexDeviceStateEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('dex_device_state_events'),
  );
  static const dlpForensicCopies = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('dlp_forensic_copies'),
  );
  static const dnsFirewallLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('dns_firewall_logs'),
  );
  static const dnsLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('dns_logs'),
  );
  static const emailSecurityAlerts = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('email_security_alerts'),
  );
  static const emailSecurityPostDeliveryEvents =
      DataLogpushDatasetJobDatasetId._(
        TfArgLiteral('email_security_post_delivery_events'),
      );
  static const firewallEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('firewall_events'),
  );
  static const gatewayDns = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('gateway_dns'),
  );
  static const gatewayHttp = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('gateway_http'),
  );
  static const gatewayNetwork = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('gateway_network'),
  );
  static const httpRequests = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('http_requests'),
  );
  static const ipsecLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('ipsec_logs'),
  );
  static const magicBgpLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('magic_bgp_logs'),
  );
  static const magicIdsDetections = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('magic_ids_detections'),
  );
  static const mcpPortalLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('mcp_portal_logs'),
  );
  static const mnmFlowLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('mnm_flow_logs'),
  );
  static const nelReports = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('nel_reports'),
  );
  static const networkAnalyticsLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('network_analytics_logs'),
  );
  static const pageShieldEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('page_shield_events'),
  );
  static const sinkholeHttpLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('sinkhole_http_logs'),
  );
  static const spectrumEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('spectrum_events'),
  );
  static const sshLogs = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('ssh_logs'),
  );
  static const turnstileEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('turnstile_events'),
  );
  static const warpConfigChanges = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('warp_config_changes'),
  );
  static const warpToggleChanges = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('warp_toggle_changes'),
  );
  static const websocketAnalytics = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('websocket_analytics'),
  );
  static const workersTraceEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('workers_trace_events'),
  );
  static const zarazEvents = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('zaraz_events'),
  );
  static const zeroTrustNetworkSessions = DataLogpushDatasetJobDatasetId._(
    TfArgLiteral('zero_trust_network_sessions'),
  );

  static const List<DataLogpushDatasetJobDatasetId> values = [
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

/// Factory wrapper for `cloudflare_logpush_dataset_job`.
///
/// Accepted Permissions
///
/// - `Logs Write`
final class DataCloudflareLogpushDatasetJob extends Data {
  static const String tfType = 'cloudflare_logpush_dataset_job';

  DataCloudflareLogpushDatasetJob(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataLogpushDatasetJobDatasetId? datasetId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'dataset_id': ?datasetId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushDatasetJobSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
