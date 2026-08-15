// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_interconnect_location`.
const Set<String> _googleComputeInterconnectLocationSensitive = <String>{};

/// Factory wrapper for `google_compute_interconnect_location`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInterconnectLocation extends Data {
  static const String tfType = 'google_compute_interconnect_location';

  DataGoogleComputeInterconnectLocation({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInterconnectLocationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `city` attribute.
  TfRef<String> get city => TfRef.attribute<String>(this, 'city');

  /// Reference to `continent` attribute.
  TfRef<String> get continent => TfRef.attribute<String>(this, 'continent');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `facility_provider` attribute.
  TfRef<String> get facilityProvider =>
      TfRef.attribute<String>(this, 'facility_provider');

  /// Reference to `facility_provider_facility_id` attribute.
  TfRef<String> get facilityProviderFacilityId =>
      TfRef.attribute<String>(this, 'facility_provider_facility_id');

  /// Reference to `peeringdb_facility_id` attribute.
  TfRef<String> get peeringdbFacilityId =>
      TfRef.attribute<String>(this, 'peeringdb_facility_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
