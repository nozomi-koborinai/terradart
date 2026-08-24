// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_notification_policy`.
const Set<String> _cloudflareNotificationPolicySensitive = <String>{};

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
    this.trafficExclusions,
    this.tunnelId,
    this.tunnelName,
    this.type,
    this.where,
    this.zones,
  });

  final TfArg<List<Object?>>? actions;

  final TfArg<List<Object?>>? affectedAsns;

  final TfArg<List<Object?>>? affectedComponents;

  final TfArg<List<Object?>>? affectedLocations;

  final TfArg<List<Object?>>? airportCode;

  final TfArg<List<Object?>>? alertTriggerPreferences;

  final TfArg<List<Object?>>? alertTriggerPreferencesValue;

  final TfArg<List<Object?>>? enabled;

  final TfArg<List<Object?>>? environment;

  final TfArg<List<Object?>>? event;

  final TfArg<List<Object?>>? eventSource;

  final TfArg<List<Object?>>? eventType;

  final TfArg<List<Object?>>? groupBy;

  final TfArg<List<Object?>>? healthCheckId;

  final TfArg<List<Object?>>? incidentImpact;

  final TfArg<List<Object?>>? inputId;

  final TfArg<List<Object?>>? insightClass;

  final TfArg<List<Object?>>? limit;

  final TfArg<List<Object?>>? logoTag;

  final TfArg<List<Object?>>? megabitsPerSecond;

  final TfArg<List<Object?>>? newHealth;

  final TfArg<List<Object?>>? newStatus;

  final TfArg<List<Object?>>? packetsPerSecond;

  final TfArg<List<Object?>>? poolId;

  final TfArg<List<Object?>>? popNames;

  final TfArg<List<Object?>>? product;

  final TfArg<List<Object?>>? projectId;

  final TfArg<List<Object?>>? protocol;

  final TfArg<List<Object?>>? queryTag;

  final TfArg<List<Object?>>? requestsPerSecond;

  final TfArg<List<Object?>>? selectors;

  final TfArg<List<Object?>>? services;

  final TfArg<List<Object?>>? slo;

  final TfArg<List<Object?>>? status;

  final TfArg<List<Object?>>? targetHostname;

  final TfArg<List<Object?>>? targetIp;

  final TfArg<List<Object?>>? targetZoneName;

  final TfArg<List<Object?>>? trafficExclusions;

  final TfArg<List<Object?>>? tunnelId;

  final TfArg<List<Object?>>? tunnelName;

  final TfArg<List<Object?>>? type;

  final TfArg<List<Object?>>? where;

  final TfArg<List<Object?>>? zones;

  Map<String, Object?> encode() => {
    if (actions != null) 'actions': actions!.toTfJson(),
    if (affectedAsns != null) 'affected_asns': affectedAsns!.toTfJson(),
    if (affectedComponents != null)
      'affected_components': affectedComponents!.toTfJson(),
    if (affectedLocations != null)
      'affected_locations': affectedLocations!.toTfJson(),
    if (airportCode != null) 'airport_code': airportCode!.toTfJson(),
    if (alertTriggerPreferences != null)
      'alert_trigger_preferences': alertTriggerPreferences!.toTfJson(),
    if (alertTriggerPreferencesValue != null)
      'alert_trigger_preferences_value': alertTriggerPreferencesValue!
          .toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (event != null) 'event': event!.toTfJson(),
    if (eventSource != null) 'event_source': eventSource!.toTfJson(),
    if (eventType != null) 'event_type': eventType!.toTfJson(),
    if (groupBy != null) 'group_by': groupBy!.toTfJson(),
    if (healthCheckId != null) 'health_check_id': healthCheckId!.toTfJson(),
    if (incidentImpact != null) 'incident_impact': incidentImpact!.toTfJson(),
    if (inputId != null) 'input_id': inputId!.toTfJson(),
    if (insightClass != null) 'insight_class': insightClass!.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (logoTag != null) 'logo_tag': logoTag!.toTfJson(),
    if (megabitsPerSecond != null)
      'megabits_per_second': megabitsPerSecond!.toTfJson(),
    if (newHealth != null) 'new_health': newHealth!.toTfJson(),
    if (newStatus != null) 'new_status': newStatus!.toTfJson(),
    if (packetsPerSecond != null)
      'packets_per_second': packetsPerSecond!.toTfJson(),
    if (poolId != null) 'pool_id': poolId!.toTfJson(),
    if (popNames != null) 'pop_names': popNames!.toTfJson(),
    if (product != null) 'product': product!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (queryTag != null) 'query_tag': queryTag!.toTfJson(),
    if (requestsPerSecond != null)
      'requests_per_second': requestsPerSecond!.toTfJson(),
    if (selectors != null) 'selectors': selectors!.toTfJson(),
    if (services != null) 'services': services!.toTfJson(),
    if (slo != null) 'slo': slo!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (targetHostname != null) 'target_hostname': targetHostname!.toTfJson(),
    if (targetIp != null) 'target_ip': targetIp!.toTfJson(),
    if (targetZoneName != null) 'target_zone_name': targetZoneName!.toTfJson(),
    if (trafficExclusions != null)
      'traffic_exclusions': trafficExclusions!.toTfJson(),
    if (tunnelId != null) 'tunnel_id': tunnelId!.toTfJson(),
    if (tunnelName != null) 'tunnel_name': tunnelName!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (where != null) 'where': where!.toTfJson(),
    if (zones != null) 'zones': zones!.toTfJson(),
  };
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

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
}

/// Typed helper for the `mechanisms.pagerduty` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanismsPagerduty {
  const NotificationPolicyMechanismsPagerduty({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
}

/// Typed helper for the `mechanisms.webhooks` block of
/// `cloudflare_notification_policy` (derived from provider schema).
@immutable
final class NotificationPolicyMechanismsWebhooks {
  const NotificationPolicyMechanismsWebhooks({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
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
    required TfArg<String> accountId,
    TfArg<String>? alertInterval,
    required TfArg<String> alertType,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    NotificationPolicyFilters? filters,
    required NotificationPolicyMechanisms mechanisms,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (alertInterval != null) 'alert_interval': alertInterval,
           'alert_type': alertType,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (filters != null) 'filters': TfArg.literal(filters.encode()),
           'mechanisms': TfArg.literal(mechanisms.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareNotificationPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
