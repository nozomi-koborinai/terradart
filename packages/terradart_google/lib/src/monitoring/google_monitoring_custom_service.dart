// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_custom_service`.
const Set<String> _googleMonitoringCustomServiceSensitive = <String>{};

/// Factory wrapper for `google_monitoring_custom_service`.
///
/// Lightweight custom Monitoring service (distinct from
/// [GoogleMonitoringService] which models typed `basic_service` variants).
///
/// Example:
/// ```dart
/// GoogleMonitoringCustomService(
///   localName: 'checkout_api',
///   serviceId: TfArg.literal('checkout-api'),
///   displayName: TfArg.literal('Checkout API'),
/// );
/// ```
final class GoogleMonitoringCustomService extends Resource {
  static const String tfType = 'google_monitoring_custom_service';

  GoogleMonitoringCustomService({
    required super.localName,
    TfArg<String>? serviceId,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (serviceId != null) 'service_id': serviceId,
           if (displayName != null) 'display_name': displayName,
           if (userLabels != null) 'user_labels': userLabels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMonitoringCustomServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get serviceIdRef => TfRef.attribute<String>(this, 'service_id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
