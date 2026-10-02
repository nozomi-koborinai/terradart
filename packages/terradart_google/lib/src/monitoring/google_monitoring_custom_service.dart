// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_custom_service`.
const Set<String> _googleMonitoringCustomServiceSensitive = <String>{};

/// Typed helper for the `telemetry` block of
/// `google_monitoring_custom_service` (derived from provider schema).
@immutable
final class MonitoringCustomServiceTelemetry {
  const MonitoringCustomServiceTelemetry({this.resourceName});

  final TfArg<String>? resourceName;

  @internal
  Map<String, Object?> encode() => {'resource_name': ?resourceName?.toTfJson()};
}

/// Factory wrapper for `google_monitoring_custom_service`.
///
/// A Service is a discrete, autonomous, and network-accessible unit, designed
/// to solve an individual concern. In Cloud Monitoring, a Service acts as the
/// root resource under which operational aspects of the service are accessible
///
/// Lightweight custom Monitoring service (distinct from
/// [GoogleMonitoringService] which models typed `basic_service` variants).
///
/// Example:
/// ```dart
/// GoogleMonitoringCustomService(
///   'checkout_api',
///   serviceId: TfArg.literal('checkout-api'),
///   displayName: TfArg.literal('Checkout API'),
/// );
/// ```
final class GoogleMonitoringCustomService extends Resource {
  static const String tfType = 'google_monitoring_custom_service';

  GoogleMonitoringCustomService(
    super.localName, {
    TfArg<String>? serviceId,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? userLabels,
    MonitoringCustomServiceTelemetry? telemetry,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': ?serviceId,
           'display_name': ?displayName,
           'user_labels': ?userLabels,
           if (telemetry != null)
             'telemetry': TfArg.literal(telemetry.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringCustomServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringCustomService>`.
  RefTo<GoogleMonitoringCustomService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabels =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');
}
