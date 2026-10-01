// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_notification_policy`.
const Set<String> _cloudflareNotificationPolicySensitive = <String>{};

/// Notification Policy Alert enum for `alert_type`.
extension type const NotificationPolicyAlertType._(TfArg<String> _)
    implements TfArg<String> {
  NotificationPolicyAlertType.variable(String name)
    : this._(TfArg.variable(name));
  NotificationPolicyAlertType.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationPolicyAlertType.arg(TfArg<String> arg) : this._(arg);

  static const abuseReportAlert = NotificationPolicyAlertType._(
    TfArgLiteral('abuse_report_alert'),
  );
  static const accessCustomCertificateExpirationType =
      NotificationPolicyAlertType._(
        TfArgLiteral('access_custom_certificate_expiration_type'),
      );
  static const advancedDdosAttackL4Alert = NotificationPolicyAlertType._(
    TfArgLiteral('advanced_ddos_attack_l4_alert'),
  );
  static const advancedDdosAttackL7Alert = NotificationPolicyAlertType._(
    TfArgLiteral('advanced_ddos_attack_l7_alert'),
  );
  static const advancedHttpAlertError = NotificationPolicyAlertType._(
    TfArgLiteral('advanced_http_alert_error'),
  );
  static const bgpHijackNotification = NotificationPolicyAlertType._(
    TfArgLiteral('bgp_hijack_notification'),
  );
  static const billingUsageAlert = NotificationPolicyAlertType._(
    TfArgLiteral('billing_usage_alert'),
  );
  static const blockNotificationBlockRemoved = NotificationPolicyAlertType._(
    TfArgLiteral('block_notification_block_removed'),
  );
  static const blockNotificationNewBlock = NotificationPolicyAlertType._(
    TfArgLiteral('block_notification_new_block'),
  );
  static const blockNotificationReviewRejected = NotificationPolicyAlertType._(
    TfArgLiteral('block_notification_review_rejected'),
  );
  static const botTrafficBasicAlert = NotificationPolicyAlertType._(
    TfArgLiteral('bot_traffic_basic_alert'),
  );
  static const brandProtectionAlert = NotificationPolicyAlertType._(
    TfArgLiteral('brand_protection_alert'),
  );
  static const brandProtectionDigest = NotificationPolicyAlertType._(
    TfArgLiteral('brand_protection_digest'),
  );
  static const clickhouseAlertFwAnomaly = NotificationPolicyAlertType._(
    TfArgLiteral('clickhouse_alert_fw_anomaly'),
  );
  static const clickhouseAlertFwEntAnomaly = NotificationPolicyAlertType._(
    TfArgLiteral('clickhouse_alert_fw_ent_anomaly'),
  );
  static const cloudforceOneRequestNotification = NotificationPolicyAlertType._(
    TfArgLiteral('cloudforce_one_request_notification'),
  );
  static const cniMaintenanceNotification = NotificationPolicyAlertType._(
    TfArgLiteral('cni_maintenance_notification'),
  );
  static const customAnalytics = NotificationPolicyAlertType._(
    TfArgLiteral('custom_analytics'),
  );
  static const customBotDetectionAlert = NotificationPolicyAlertType._(
    TfArgLiteral('custom_bot_detection_alert'),
  );
  static const customSslCertificateEventType = NotificationPolicyAlertType._(
    TfArgLiteral('custom_ssl_certificate_event_type'),
  );
  static const dedicatedSslCertificateEventType = NotificationPolicyAlertType._(
    TfArgLiteral('dedicated_ssl_certificate_event_type'),
  );
  static const deviceConnectivityAnomalyAlert = NotificationPolicyAlertType._(
    TfArgLiteral('device_connectivity_anomaly_alert'),
  );
  static const dosAttackL4 = NotificationPolicyAlertType._(
    TfArgLiteral('dos_attack_l4'),
  );
  static const dosAttackL7 = NotificationPolicyAlertType._(
    TfArgLiteral('dos_attack_l7'),
  );
  static const expiringServiceTokenAlert = NotificationPolicyAlertType._(
    TfArgLiteral('expiring_service_token_alert'),
  );
  static const failingLogpushJobDisabledAlert = NotificationPolicyAlertType._(
    TfArgLiteral('failing_logpush_job_disabled_alert'),
  );
  static const fbmAutoAdvertisement = NotificationPolicyAlertType._(
    TfArgLiteral('fbm_auto_advertisement'),
  );
  static const fbmDosdAttack = NotificationPolicyAlertType._(
    TfArgLiteral('fbm_dosd_attack'),
  );
  static const fbmVolumetricAttack = NotificationPolicyAlertType._(
    TfArgLiteral('fbm_volumetric_attack'),
  );
  static const healthCheckStatusNotification = NotificationPolicyAlertType._(
    TfArgLiteral('health_check_status_notification'),
  );
  static const hostnameAopCustomCertificateExpirationType =
      NotificationPolicyAlertType._(
        TfArgLiteral('hostname_aop_custom_certificate_expiration_type'),
      );
  static const httpAlertEdgeError = NotificationPolicyAlertType._(
    TfArgLiteral('http_alert_edge_error'),
  );
  static const httpAlertOriginError = NotificationPolicyAlertType._(
    TfArgLiteral('http_alert_origin_error'),
  );
  static const imageNotification = NotificationPolicyAlertType._(
    TfArgLiteral('image_notification'),
  );
  static const imageResizingNotification = NotificationPolicyAlertType._(
    TfArgLiteral('image_resizing_notification'),
  );
  static const incidentAlert = NotificationPolicyAlertType._(
    TfArgLiteral('incident_alert'),
  );
  static const loadBalancingHealthAlert = NotificationPolicyAlertType._(
    TfArgLiteral('load_balancing_health_alert'),
  );
  static const loadBalancingPoolEnablementAlert = NotificationPolicyAlertType._(
    TfArgLiteral('load_balancing_pool_enablement_alert'),
  );
  static const logoMatchAlert = NotificationPolicyAlertType._(
    TfArgLiteral('logo_match_alert'),
  );
  static const magicTunnelHealthCheckEvent = NotificationPolicyAlertType._(
    TfArgLiteral('magic_tunnel_health_check_event'),
  );
  static const magicWanTunnelHealth = NotificationPolicyAlertType._(
    TfArgLiteral('magic_wan_tunnel_health'),
  );
  static const maintenanceEventNotification = NotificationPolicyAlertType._(
    TfArgLiteral('maintenance_event_notification'),
  );
  static const mtlsCertificateStoreCertificateExpirationType =
      NotificationPolicyAlertType._(
        TfArgLiteral('mtls_certificate_store_certificate_expiration_type'),
      );
  static const pagesEventAlert = NotificationPolicyAlertType._(
    TfArgLiteral('pages_event_alert'),
  );
  static const radarNotification = NotificationPolicyAlertType._(
    TfArgLiteral('radar_notification'),
  );
  static const realOriginMonitoring = NotificationPolicyAlertType._(
    TfArgLiteral('real_origin_monitoring'),
  );
  static const scriptmonitorAlertNewCodeChangeDetections =
      NotificationPolicyAlertType._(
        TfArgLiteral('scriptmonitor_alert_new_code_change_detections'),
      );
  static const scriptmonitorAlertNewHosts = NotificationPolicyAlertType._(
    TfArgLiteral('scriptmonitor_alert_new_hosts'),
  );
  static const scriptmonitorAlertNewMaliciousHosts =
      NotificationPolicyAlertType._(
        TfArgLiteral('scriptmonitor_alert_new_malicious_hosts'),
      );
  static const scriptmonitorAlertNewMaliciousScripts =
      NotificationPolicyAlertType._(
        TfArgLiteral('scriptmonitor_alert_new_malicious_scripts'),
      );
  static const scriptmonitorAlertNewMaliciousUrl =
      NotificationPolicyAlertType._(
        TfArgLiteral('scriptmonitor_alert_new_malicious_url'),
      );
  static const scriptmonitorAlertNewMaxLengthResourceUrl =
      NotificationPolicyAlertType._(
        TfArgLiteral('scriptmonitor_alert_new_max_length_resource_url'),
      );
  static const scriptmonitorAlertNewResources = NotificationPolicyAlertType._(
    TfArgLiteral('scriptmonitor_alert_new_resources'),
  );
  static const secondaryDnsAllPrimariesFailing = NotificationPolicyAlertType._(
    TfArgLiteral('secondary_dns_all_primaries_failing'),
  );
  static const secondaryDnsPrimariesFailing = NotificationPolicyAlertType._(
    TfArgLiteral('secondary_dns_primaries_failing'),
  );
  static const secondaryDnsWarning = NotificationPolicyAlertType._(
    TfArgLiteral('secondary_dns_warning'),
  );
  static const secondaryDnsZoneSuccessfullyUpdated =
      NotificationPolicyAlertType._(
        TfArgLiteral('secondary_dns_zone_successfully_updated'),
      );
  static const secondaryDnsZoneValidationWarning =
      NotificationPolicyAlertType._(
        TfArgLiteral('secondary_dns_zone_validation_warning'),
      );
  static const securityInsightsAlert = NotificationPolicyAlertType._(
    TfArgLiteral('security_insights_alert'),
  );
  static const sentinelAlert = NotificationPolicyAlertType._(
    TfArgLiteral('sentinel_alert'),
  );
  static const streamLiveNotifications = NotificationPolicyAlertType._(
    TfArgLiteral('stream_live_notifications'),
  );
  static const syntheticTestLatencyAlert = NotificationPolicyAlertType._(
    TfArgLiteral('synthetic_test_latency_alert'),
  );
  static const syntheticTestLowAvailabilityAlert =
      NotificationPolicyAlertType._(
        TfArgLiteral('synthetic_test_low_availability_alert'),
      );
  static const trafficAnomaliesAlert = NotificationPolicyAlertType._(
    TfArgLiteral('traffic_anomalies_alert'),
  );
  static const tunnelHealthEvent = NotificationPolicyAlertType._(
    TfArgLiteral('tunnel_health_event'),
  );
  static const tunnelUpdateEvent = NotificationPolicyAlertType._(
    TfArgLiteral('tunnel_update_event'),
  );
  static const universalSslEventType = NotificationPolicyAlertType._(
    TfArgLiteral('universal_ssl_event_type'),
  );
  static const webAnalyticsMetricsUpdate = NotificationPolicyAlertType._(
    TfArgLiteral('web_analytics_metrics_update'),
  );
  static const zoneAopCustomCertificateExpirationType =
      NotificationPolicyAlertType._(
        TfArgLiteral('zone_aop_custom_certificate_expiration_type'),
      );

  static const List<NotificationPolicyAlertType> values = [
    abuseReportAlert,
    accessCustomCertificateExpirationType,
    advancedDdosAttackL4Alert,
    advancedDdosAttackL7Alert,
    advancedHttpAlertError,
    bgpHijackNotification,
    billingUsageAlert,
    blockNotificationBlockRemoved,
    blockNotificationNewBlock,
    blockNotificationReviewRejected,
    botTrafficBasicAlert,
    brandProtectionAlert,
    brandProtectionDigest,
    clickhouseAlertFwAnomaly,
    clickhouseAlertFwEntAnomaly,
    cloudforceOneRequestNotification,
    cniMaintenanceNotification,
    customAnalytics,
    customBotDetectionAlert,
    customSslCertificateEventType,
    dedicatedSslCertificateEventType,
    deviceConnectivityAnomalyAlert,
    dosAttackL4,
    dosAttackL7,
    expiringServiceTokenAlert,
    failingLogpushJobDisabledAlert,
    fbmAutoAdvertisement,
    fbmDosdAttack,
    fbmVolumetricAttack,
    healthCheckStatusNotification,
    hostnameAopCustomCertificateExpirationType,
    httpAlertEdgeError,
    httpAlertOriginError,
    imageNotification,
    imageResizingNotification,
    incidentAlert,
    loadBalancingHealthAlert,
    loadBalancingPoolEnablementAlert,
    logoMatchAlert,
    magicTunnelHealthCheckEvent,
    magicWanTunnelHealth,
    maintenanceEventNotification,
    mtlsCertificateStoreCertificateExpirationType,
    pagesEventAlert,
    radarNotification,
    realOriginMonitoring,
    scriptmonitorAlertNewCodeChangeDetections,
    scriptmonitorAlertNewHosts,
    scriptmonitorAlertNewMaliciousHosts,
    scriptmonitorAlertNewMaliciousScripts,
    scriptmonitorAlertNewMaliciousUrl,
    scriptmonitorAlertNewMaxLengthResourceUrl,
    scriptmonitorAlertNewResources,
    secondaryDnsAllPrimariesFailing,
    secondaryDnsPrimariesFailing,
    secondaryDnsWarning,
    secondaryDnsZoneSuccessfullyUpdated,
    secondaryDnsZoneValidationWarning,
    securityInsightsAlert,
    sentinelAlert,
    streamLiveNotifications,
    syntheticTestLatencyAlert,
    syntheticTestLowAvailabilityAlert,
    trafficAnomaliesAlert,
    tunnelHealthEvent,
    tunnelUpdateEvent,
    universalSslEventType,
    webAnalyticsMetricsUpdate,
    zoneAopCustomCertificateExpirationType,
  ];
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

  final List<NotificationPolicyIncidentImpact>? incidentImpact;

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

  final List<NotificationPolicyTrafficExclusions>? trafficExclusions;

  final TfArg<List<String>>? tunnelId;

  final TfArg<List<String>>? tunnelName;

  final TfArg<List<String>>? type;

  final TfArg<List<String>>? where;

  final TfArg<List<String>>? zones;

  @internal
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
extension type const NotificationPolicyIncidentImpact._(TfArg<String> _)
    implements TfArg<String> {
  NotificationPolicyIncidentImpact.variable(String name)
    : this._(TfArg.variable(name));
  NotificationPolicyIncidentImpact.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationPolicyIncidentImpact.arg(TfArg<String> arg) : this._(arg);

  static const incidentImpactNone = NotificationPolicyIncidentImpact._(
    TfArgLiteral('INCIDENT_IMPACT_NONE'),
  );
  static const incidentImpactMinor = NotificationPolicyIncidentImpact._(
    TfArgLiteral('INCIDENT_IMPACT_MINOR'),
  );
  static const incidentImpactMajor = NotificationPolicyIncidentImpact._(
    TfArgLiteral('INCIDENT_IMPACT_MAJOR'),
  );
  static const incidentImpactCritical = NotificationPolicyIncidentImpact._(
    TfArgLiteral('INCIDENT_IMPACT_CRITICAL'),
  );

  static const List<NotificationPolicyIncidentImpact> values = [
    incidentImpactNone,
    incidentImpactMinor,
    incidentImpactMajor,
    incidentImpactCritical,
  ];
}

/// `traffic_exclusions` — derived from the provider schema description.
extension type const NotificationPolicyTrafficExclusions._(TfArg<String> _)
    implements TfArg<String> {
  NotificationPolicyTrafficExclusions.variable(String name)
    : this._(TfArg.variable(name));
  NotificationPolicyTrafficExclusions.expression(String template)
    : this._(TfArg.expression(template));
  const NotificationPolicyTrafficExclusions.arg(TfArg<String> arg)
    : this._(arg);

  static const securityEvents = NotificationPolicyTrafficExclusions._(
    TfArgLiteral('security_events'),
  );

  static const List<NotificationPolicyTrafficExclusions> values = [
    securityEvents,
  ];
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

  final List<NotificationPolicyEmail>? email;

  final List<NotificationPolicyPagerduty>? pagerduty;

  final List<NotificationPolicyWebhooks>? webhooks;

  @internal
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
final class NotificationPolicyEmail {
  const NotificationPolicyEmail({this.id});

  final TfArg<String>? id;

  @internal
  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Typed helper for the `mechanisms.pagerduty` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyPagerduty {
  const NotificationPolicyPagerduty({this.id});

  final TfArg<String>? id;

  @internal
  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
}

/// Typed helper for the `mechanisms.webhooks` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyWebhooks {
  const NotificationPolicyWebhooks({this.id});

  final TfArg<String>? id;

  @internal
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

  CloudflareNotificationPolicy(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? alertInterval,
    required NotificationPolicyAlertType alertType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `alert_interval` attribute.
  TfRef<String> get alertInterval =>
      TfRef.attribute<String>(this, 'alert_interval');

  /// Reference to `alert_type` attribute.
  TfRef<String> get alertType => TfRef.attribute<String>(this, 'alert_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
