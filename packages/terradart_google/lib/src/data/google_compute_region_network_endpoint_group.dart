// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_endpoint_group`.
const Set<String> _googleComputeRegionNetworkEndpointGroupSensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_network_endpoint_group`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionNetworkEndpointGroup extends Data {
  static const String tfType = 'google_compute_region_network_endpoint_group';

  DataGoogleComputeRegionNetworkEndpointGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? selfLink,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (selfLink != null) 'self_link': selfLink,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_engine` attribute.
  TfRef<List<Map<String, Object?>>> get appEngine =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'app_engine');

  /// Reference to `cloud_function` attribute.
  TfRef<List<Map<String, Object?>>> get cloudFunction =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_function');

  /// Reference to `cloud_run` attribute.
  TfRef<List<Map<String, Object?>>> get cloudRun =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cloud_run');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_endpoint_type` attribute.
  TfRef<String> get networkEndpointType =>
      TfRef.attribute<String>(this, 'network_endpoint_type');

  /// Reference to `psc_data` attribute.
  TfRef<List<Map<String, Object?>>> get pscData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_data');

  /// Reference to `psc_target_service` attribute.
  TfRef<String> get pscTargetService =>
      TfRef.attribute<String>(this, 'psc_target_service');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
