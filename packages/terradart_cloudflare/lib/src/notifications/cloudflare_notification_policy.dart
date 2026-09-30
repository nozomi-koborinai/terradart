// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_notification_policy`.
const Set<String> _cloudflareNotificationPolicySensitive = <String>{};

/// Notification Policy Alert enum for `alert_type`.
enum NotificationPolicyAlertType implements TerraformEnum {
  abuseReportAlert('abuse_report_alert'),
  accessCustomCertificateExpirationType(
    'access_custom_certificate_expiration_type',
  ),
  advancedDdosAttackL4Alert('advanced_ddos_attack_l4_alert'),
  advancedDdosAttackL7Alert('advanced_ddos_attack_l7_alert'),
  advancedHttpAlertError('advanced_http_alert_error'),
  bgpHijackNotification('bgp_hijack_notification'),
  billingUsageAlert('billing_usage_alert'),
  blockNotificationBlockRemoved('block_notification_block_removed'),
  blockNotificationNewBlock('block_notification_new_block'),
  blockNotificationReviewRejected('block_notification_review_rejected'),
  botTrafficBasicAlert('bot_traffic_basic_alert'),
  brandProtectionAlert('brand_protection_alert'),
  brandProtectionDigest('brand_protection_digest'),
  clickhouseAlertFwAnomaly('clickhouse_alert_fw_anomaly'),
  clickhouseAlertFwEntAnomaly('clickhouse_alert_fw_ent_anomaly'),
  cloudforceOneRequestNotification('cloudforce_one_request_notification'),
  cniMaintenanceNotification('cni_maintenance_notification'),
  customAnalytics('custom_analytics'),
  customBotDetectionAlert('custom_bot_detection_alert'),
  customSslCertificateEventType('custom_ssl_certificate_event_type'),
  dedicatedSslCertificateEventType('dedicated_ssl_certificate_event_type'),
  deviceConnectivityAnomalyAlert('device_connectivity_anomaly_alert'),
  dosAttackL4('dos_attack_l4'),
  dosAttackL7('dos_attack_l7'),
  expiringServiceTokenAlert('expiring_service_token_alert'),
  failingLogpushJobDisabledAlert('failing_logpush_job_disabled_alert'),
  fbmAutoAdvertisement('fbm_auto_advertisement'),
  fbmDosdAttack('fbm_dosd_attack'),
  fbmVolumetricAttack('fbm_volumetric_attack'),
  healthCheckStatusNotification('health_check_status_notification'),
  hostnameAopCustomCertificateExpirationType(
    'hostname_aop_custom_certificate_expiration_type',
  ),
  httpAlertEdgeError('http_alert_edge_error'),
  httpAlertOriginError('http_alert_origin_error'),
  imageNotification('image_notification'),
  imageResizingNotification('image_resizing_notification'),
  incidentAlert('incident_alert'),
  loadBalancingHealthAlert('load_balancing_health_alert'),
  loadBalancingPoolEnablementAlert('load_balancing_pool_enablement_alert'),
  logoMatchAlert('logo_match_alert'),
  magicTunnelHealthCheckEvent('magic_tunnel_health_check_event'),
  magicWanTunnelHealth('magic_wan_tunnel_health'),
  maintenanceEventNotification('maintenance_event_notification'),
  mtlsCertificateStoreCertificateExpirationType(
    'mtls_certificate_store_certificate_expiration_type',
  ),
  pagesEventAlert('pages_event_alert'),
  radarNotification('radar_notification'),
  realOriginMonitoring('real_origin_monitoring'),
  scriptmonitorAlertNewCodeChangeDetections(
    'scriptmonitor_alert_new_code_change_detections',
  ),
  scriptmonitorAlertNewHosts('scriptmonitor_alert_new_hosts'),
  scriptmonitorAlertNewMaliciousHosts(
    'scriptmonitor_alert_new_malicious_hosts',
  ),
  scriptmonitorAlertNewMaliciousScripts(
    'scriptmonitor_alert_new_malicious_scripts',
  ),
  scriptmonitorAlertNewMaliciousUrl('scriptmonitor_alert_new_malicious_url'),
  scriptmonitorAlertNewMaxLengthResourceUrl(
    'scriptmonitor_alert_new_max_length_resource_url',
  ),
  scriptmonitorAlertNewResources('scriptmonitor_alert_new_resources'),
  secondaryDnsAllPrimariesFailing('secondary_dns_all_primaries_failing'),
  secondaryDnsPrimariesFailing('secondary_dns_primaries_failing'),
  secondaryDnsWarning('secondary_dns_warning'),
  secondaryDnsZoneSuccessfullyUpdated(
    'secondary_dns_zone_successfully_updated',
  ),
  secondaryDnsZoneValidationWarning('secondary_dns_zone_validation_warning'),
  securityInsightsAlert('security_insights_alert'),
  sentinelAlert('sentinel_alert'),
  streamLiveNotifications('stream_live_notifications'),
  syntheticTestLatencyAlert('synthetic_test_latency_alert'),
  syntheticTestLowAvailabilityAlert('synthetic_test_low_availability_alert'),
  trafficAnomaliesAlert('traffic_anomalies_alert'),
  tunnelHealthEvent('tunnel_health_event'),
  tunnelUpdateEvent('tunnel_update_event'),
  universalSslEventType('universal_ssl_event_type'),
  webAnalyticsMetricsUpdate('web_analytics_metrics_update'),
  zoneAopCustomCertificateExpirationType(
    'zone_aop_custom_certificate_expiration_type',
  );

  const NotificationPolicyAlertType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filters` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyFilters {
  const NotificationPolicyFilters({
    this.actions,
    this.affectedAsns,
    this.affectedComponents,
    this.affectedLocations,
    this.airportCode,
    this.alertTriggerPreferences,
    this.alertTriggerPreferencesValue,
    this.enabled,
    this.environment,
    this.event,
    this.eventSource,
    this.eventType,
    this.groupBy,
    this.healthCheckId,
    this.incidentImpact,
    this.inputId,
    this.insightClass,
    this.limit,
    this.logoTag,
    this.megabitsPerSecond,
    this.newHealth,
    this.newStatus,
    this.packetsPerSecond,
    this.poolId,
    this.popNames,
    this.product,
    this.projectId,
    this.protocol,
    this.queryTag,
    this.requestsPerSecond,
    this.selectors,
    this.services,
    this.slo,
    this.status,
    this.targetHostname,
    this.targetIp,
    this.targetZoneName,
    this.tokenId,
    this.trafficExclusions,
    this.tunnelId,
    this.tunnelName,
    this.type,
    this.where,
    this.zones,
  });

  final TfArg<List<String>>? actions;

  final TfArg<List<String>>? affectedAsns;

  final TfArg<List<String>>? affectedComponents;

  final TfArg<List<String>>? affectedLocations;

  final TfArg<List<String>>? airportCode;

  final TfArg<List<String>>? alertTriggerPreferences;

  final TfArg<List<String>>? alertTriggerPreferencesValue;

  final TfArg<List<String>>? enabled;

  final TfArg<List<String>>? environment;

  final TfArg<List<String>>? event;

  final TfArg<List<String>>? eventSource;

  final TfArg<List<String>>? eventType;

  final TfArg<List<String>>? groupBy;

  final TfArg<List<String>>? healthCheckId;

  final List<TfArg<NotificationPolicyFiltersIncidentImpact>>? incidentImpact;

  final TfArg<List<String>>? inputId;

  final TfArg<List<String>>? insightClass;

  final TfArg<List<String>>? limit;

  final TfArg<List<String>>? logoTag;

  final TfArg<List<String>>? megabitsPerSecond;

  final TfArg<List<String>>? newHealth;

  final TfArg<List<String>>? newStatus;

  final TfArg<List<String>>? packetsPerSecond;

  final TfArg<List<String>>? poolId;

  final TfArg<List<String>>? popNames;

  final TfArg<List<String>>? product;

  final TfArg<List<String>>? projectId;

  final TfArg<List<String>>? protocol;

  final TfArg<List<String>>? queryTag;

  final TfArg<List<String>>? requestsPerSecond;

  final TfArg<List<String>>? selectors;

  final TfArg<List<String>>? services;

  final TfArg<List<String>>? slo;

  final TfArg<List<String>>? status;

  final TfArg<List<String>>? targetHostname;

  final TfArg<List<String>>? targetIp;

  final TfArg<List<String>>? targetZoneName;

  final TfArg<List<String>>? tokenId;

  final List<TfArg<NotificationPolicyFiltersTrafficExclusions>>?
  trafficExclusions;

  final TfArg<List<String>>? tunnelId;

  final TfArg<List<String>>? tunnelName;

  final TfArg<List<String>>? type;

  final TfArg<List<String>>? where;

  final TfArg<List<String>>? zones;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    'affected_asns': ?affectedAsns?.toTfJson(),
    'affected_components': ?affectedComponents?.toTfJson(),
    'affected_locations': ?affectedLocations?.toTfJson(),
    'airport_code': ?airportCode?.toTfJson(),
    'alert_trigger_preferences': ?alertTriggerPreferences?.toTfJson(),
    'alert_trigger_preferences_value': ?alertTriggerPreferencesValue
        ?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'event': ?event?.toTfJson(),
    'event_source': ?eventSource?.toTfJson(),
    'event_type': ?eventType?.toTfJson(),
    'group_by': ?groupBy?.toTfJson(),
    'health_check_id': ?healthCheckId?.toTfJson(),
    if (incidentImpact != null)
      'incident_impact': [for (final e in incidentImpact!) e.toTfJson()],
    'input_id': ?inputId?.toTfJson(),
    'insight_class': ?insightClass?.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'logo_tag': ?logoTag?.toTfJson(),
    'megabits_per_second': ?megabitsPerSecond?.toTfJson(),
    'new_health': ?newHealth?.toTfJson(),
    'new_status': ?newStatus?.toTfJson(),
    'packets_per_second': ?packetsPerSecond?.toTfJson(),
    'pool_id': ?poolId?.toTfJson(),
    'pop_names': ?popNames?.toTfJson(),
    'product': ?product?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'query_tag': ?queryTag?.toTfJson(),
    'requests_per_second': ?requestsPerSecond?.toTfJson(),
    'selectors': ?selectors?.toTfJson(),
    'services': ?services?.toTfJson(),
    'slo': ?slo?.toTfJson(),
    'status': ?status?.toTfJson(),
    'target_hostname': ?targetHostname?.toTfJson(),
    'target_ip': ?targetIp?.toTfJson(),
    'target_zone_name': ?targetZoneName?.toTfJson(),
    'token_id': ?tokenId?.toTfJson(),
    if (trafficExclusions != null)
      'traffic_exclusions': [for (final e in trafficExclusions!) e.toTfJson()],
    'tunnel_id': ?tunnelId?.toTfJson(),
    'tunnel_name': ?tunnelName?.toTfJson(),
    'type': ?type?.toTfJson(),
    'where': ?where?.toTfJson(),
    'zones': ?zones?.toTfJson(),
  };
}

/// `incident_impact` — derived from the provider schema description.
enum NotificationPolicyFiltersIncidentImpact implements TerraformEnum {
  incidentImpactNone('INCIDENT_IMPACT_NONE'),
  incidentImpactMinor('INCIDENT_IMPACT_MINOR'),
  incidentImpactMajor('INCIDENT_IMPACT_MAJOR'),
  incidentImpactCritical('INCIDENT_IMPACT_CRITICAL');

  const NotificationPolicyFiltersIncidentImpact(this.terraformValue);
  @override
  final String terraformValue;
}

/// `traffic_exclusions` — derived from the provider schema description.
enum NotificationPolicyFiltersTrafficExclusions implements TerraformEnum {
  securityEvents('security_events');

  const NotificationPolicyFiltersTrafficExclusions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mechanisms` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanisms {
  const NotificationPolicyMechanisms({
    this.email,
    this.pagerduty,
    this.webhooks,
  });

  final List<NotificationPolicyMechanismsEmail>? email;

  final List<NotificationPolicyMechanismsPagerduty>? pagerduty;

  final List<NotificationPolicyMechanismsWebhooks>? webhooks;

  Map<String, Object?> encode() => {
    if (email != null) 'email': [for (final e in email!) e.encode()],
    if (pagerduty != null)
      'pagerduty': [for (final e in pagerduty!) e.encode()],
    if (webhooks != null) 'webhooks': [for (final e in webhooks!) e.encode()],
  };
}

/// Typed helper for the `mechanisms.email` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanismsEmail {
  const NotificationPolicyMechanismsEmail({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Typed helper for the `mechanisms.pagerduty` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanismsPagerduty {
  const NotificationPolicyMechanismsPagerduty({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Typed helper for the `mechanisms.webhooks` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanismsWebhooks {
  const NotificationPolicyMechanismsWebhooks({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Factory wrapper for `cloudflare_notification_policy`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Notifications Read`
/// - `Notifications Write` - `Zero Trust: PII Read`
final class CloudflareNotificationPolicy extends Resource {
  static const String tfType = 'cloudflare_notification_policy';

  CloudflareNotificationPolicy({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? alertInterval,
    required TfArg<NotificationPolicyAlertType> alertType,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    NotificationPolicyFilters? filters,
    required NotificationPolicyMechanisms mechanisms,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'alert_interval': ?alertInterval,
           'alert_type': alertType,
           'description': ?description,
           'enabled': ?enabled,
           'name': name,
           if (filters != null) 'filters': TfArg.literal(filters.encode()),
           'mechanisms': TfArg.literal(mechanisms.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareNotificationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareNotificationPolicy>`.
  RefTo<CloudflareNotificationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `alert_interval` attribute.
  TfRef<String> get alertIntervalRef =>
      TfRef.attribute<String>(this, 'alert_interval');

  /// Reference to `alert_type` attribute.
  TfRef<String> get alertTypeRef => TfRef.attribute<String>(this, 'alert_type');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');
}
