// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_future_reservation`.
const Set<String> _googleComputeFutureReservationSensitive = <String>{};

/// Factory wrapper for `google_compute_future_reservation`.
final class GoogleComputeFutureReservation extends Resource {
  static const String tfType = 'google_compute_future_reservation';

  GoogleComputeFutureReservation({
    required super.localName,
    TfArg<String>? autoCreatedReservationsDeleteTime,
    TfArg<bool>? autoDeleteAutoCreatedReservations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? deploymentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? namePrefix,
    TfArg<String>? planningStatus,
    TfArg<String>? project,
    TfArg<String>? reservationMode,
    TfArg<String>? reservationName,
    TfArg<String>? schedulingType,
    TfArg<bool>? specificReservationRequired,
    TfArg<String>? zone,
    TfArg<Map<String, dynamic>>? aggregateReservation,
    TfArg<Map<String, dynamic>>? autoCreatedReservationsDuration,
    TfArg<Map<String, dynamic>>? commitmentInfo,
    TfArg<Map<String, dynamic>>? params,
    TfArg<Map<String, dynamic>>? shareSettings,
    TfArg<Map<String, dynamic>>? specificSkuProperties,
    required TfArg<Map<String, dynamic>> timeWindow,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (autoCreatedReservationsDeleteTime != null)
             'auto_created_reservations_delete_time':
                 autoCreatedReservationsDeleteTime,
           if (autoDeleteAutoCreatedReservations != null)
             'auto_delete_auto_created_reservations':
                 autoDeleteAutoCreatedReservations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deploymentType != null) 'deployment_type': deploymentType,
           if (description != null) 'description': description,
           'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (planningStatus != null) 'planning_status': planningStatus,
           if (project != null) 'project': project,
           if (reservationMode != null) 'reservation_mode': reservationMode,
           if (reservationName != null) 'reservation_name': reservationName,
           if (schedulingType != null) 'scheduling_type': schedulingType,
           if (specificReservationRequired != null)
             'specific_reservation_required': specificReservationRequired,
           if (zone != null) 'zone': zone,
           if (aggregateReservation != null)
             'aggregate_reservation': aggregateReservation,
           if (autoCreatedReservationsDuration != null)
             'auto_created_reservations_duration':
                 autoCreatedReservationsDuration,
           if (commitmentInfo != null) 'commitment_info': commitmentInfo,
           if (params != null) 'params': params,
           if (shareSettings != null) 'share_settings': shareSettings,
           if (specificSkuProperties != null)
             'specific_sku_properties': specificSkuProperties,
           'time_window': timeWindow,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeFutureReservationSensitive;
}
