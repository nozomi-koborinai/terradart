// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpush_dataset_field`.
const Set<String> _cloudflareLogpushDatasetFieldSensitive = <String>{};

/// Data Logpush Dataset Field Dataset enum for `dataset_id`.
extension type const DataLogpushDatasetFieldDatasetId._(TfArg<String> _)
    implements TfArg<String> {
  DataLogpushDatasetFieldDatasetId.variable(String name)
    : this._(TfArg.variable(name));
  DataLogpushDatasetFieldDatasetId.expression(String template)
    : this._(TfArg.expression(template));
  const DataLogpushDatasetFieldDatasetId.arg(TfArg<String> arg) : this._(arg);

  static const accessRequests = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('access_requests'),
  );
  static const accountAbuseProtectionEvents =
      DataLogpushDatasetFieldDatasetId._(
        TfArgLiteral('account_abuse_protection_events'),
      );
  static const auditLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('audit_logs'),
  );
  static const auditLogsV2 = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('audit_logs_v2'),
  );
  static const bisoUserActions = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('biso_user_actions'),
  );
  static const casbFindings = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('casb_findings'),
  );
  static const devicePostureResults = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('device_posture_results'),
  );
  static const dexApplicationTests = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('dex_application_tests'),
  );
  static const dexDeviceStateEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('dex_device_state_events'),
  );
  static const dlpForensicCopies = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('dlp_forensic_copies'),
  );
  static const dnsFirewallLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('dns_firewall_logs'),
  );
  static const dnsLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('dns_logs'),
  );
  static const emailSecurityAlerts = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('email_security_alerts'),
  );
  static const emailSecurityPostDeliveryEvents =
      DataLogpushDatasetFieldDatasetId._(
        TfArgLiteral('email_security_post_delivery_events'),
      );
  static const firewallEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('firewall_events'),
  );
  static const gatewayDns = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('gateway_dns'),
  );
  static const gatewayHttp = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('gateway_http'),
  );
  static const gatewayNetwork = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('gateway_network'),
  );
  static const httpRequests = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('http_requests'),
  );
  static const ipsecLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('ipsec_logs'),
  );
  static const magicBgpLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('magic_bgp_logs'),
  );
  static const magicIdsDetections = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('magic_ids_detections'),
  );
  static const mcpPortalLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('mcp_portal_logs'),
  );
  static const mnmFlowLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('mnm_flow_logs'),
  );
  static const nelReports = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('nel_reports'),
  );
  static const networkAnalyticsLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('network_analytics_logs'),
  );
  static const pageShieldEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('page_shield_events'),
  );
  static const sinkholeHttpLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('sinkhole_http_logs'),
  );
  static const spectrumEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('spectrum_events'),
  );
  static const sshLogs = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('ssh_logs'),
  );
  static const turnstileEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('turnstile_events'),
  );
  static const warpConfigChanges = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('warp_config_changes'),
  );
  static const warpToggleChanges = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('warp_toggle_changes'),
  );
  static const websocketAnalytics = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('websocket_analytics'),
  );
  static const workersTraceEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('workers_trace_events'),
  );
  static const zarazEvents = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('zaraz_events'),
  );
  static const zeroTrustNetworkSessions = DataLogpushDatasetFieldDatasetId._(
    TfArgLiteral('zero_trust_network_sessions'),
  );

  static const List<DataLogpushDatasetFieldDatasetId> values = [
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

/// Factory wrapper for `cloudflare_logpush_dataset_field`.
///
/// Accepted Permissions
///
/// - `Logs Read`
final class DataCloudflareLogpushDatasetField extends Data {
  static const String tfType = 'cloudflare_logpush_dataset_field';

  DataCloudflareLogpushDatasetField(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataLogpushDatasetFieldDatasetId? datasetId,
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
  Set<String> get sensitiveFields => _cloudflareLogpushDatasetFieldSensitive;

  /// Reference to `fields` attribute.
  TfRef<Map<String, String>> get fields =>
      TfRef.attribute<Map<String, String>>(this, 'fields');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dataset_id` attribute.
  TfRef<String> get datasetId => TfRef.attribute<String>(this, 'dataset_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
