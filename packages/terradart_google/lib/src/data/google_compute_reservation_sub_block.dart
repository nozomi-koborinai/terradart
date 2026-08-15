// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_reservation_sub_block`.
const Set<String> _googleComputeReservationSubBlockSensitive = <String>{};

/// Factory wrapper for `google_compute_reservation_sub_block`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeReservationSubBlock extends Data {
  static const String tfType = 'google_compute_reservation_sub_block';

  DataGoogleComputeReservationSubBlock({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> reservation,
    required TfArg<String> reservationBlock,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           'reservation': reservation,
           'reservation_block': reservationBlock,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeReservationSubBlockSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `health_info` attribute.
  TfRef<List<Map<String, Object?>>> get healthInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_info');

  /// Reference to `in_use_count` attribute.
  TfRef<num> get inUseCount => TfRef.attribute<num>(this, 'in_use_count');

  /// Reference to `physical_topology` attribute.
  TfRef<List<Map<String, Object?>>> get physicalTopology =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'physical_topology');

  /// Reference to `reservation_sub_block_maintenance` attribute.
  TfRef<List<Map<String, Object?>>> get reservationSubBlockMaintenance =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'reservation_sub_block_maintenance',
      );

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `sub_block_count` attribute.
  TfRef<num> get subBlockCount => TfRef.attribute<num>(this, 'sub_block_count');
}
