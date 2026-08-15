// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_reservation`.
const Set<String> _googleComputeReservationSensitive = <String>{};

/// Factory wrapper for `google_compute_reservation`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeReservation extends Data {
  static const String tfType = 'google_compute_reservation';

  DataGoogleComputeReservation({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeReservationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_names` attribute.
  TfRef<List<String>> get blockNames =>
      TfRef.attribute<List<String>>(this, 'block_names');

  /// Reference to `commitment` attribute.
  TfRef<String> get commitment => TfRef.attribute<String>(this, 'commitment');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `delete_after_duration` attribute.
  TfRef<List<Map<String, Object?>>> get deleteAfterDuration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'delete_after_duration',
      );

  /// Reference to `delete_at_time` attribute.
  TfRef<String> get deleteAtTime =>
      TfRef.attribute<String>(this, 'delete_at_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `linked_commitments` attribute.
  TfRef<List<String>> get linkedCommitments =>
      TfRef.attribute<List<String>>(this, 'linked_commitments');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `reservation_block_count` attribute.
  TfRef<num> get reservationBlockCount =>
      TfRef.attribute<num>(this, 'reservation_block_count');

  /// Reference to `reservation_sharing_policy` attribute.
  TfRef<List<Map<String, Object?>>> get reservationSharingPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'reservation_sharing_policy',
      );

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `share_settings` attribute.
  TfRef<List<Map<String, Object?>>> get shareSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'share_settings');

  /// Reference to `specific_reservation` attribute.
  TfRef<List<Map<String, Object?>>> get specificReservation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'specific_reservation');

  /// Reference to `specific_reservation_required` attribute.
  TfRef<bool> get specificReservationRequired =>
      TfRef.attribute<bool>(this, 'specific_reservation_required');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
