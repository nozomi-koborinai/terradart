// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network_endpoint_group`.
const Set<String> _googleComputeNetworkEndpointGroupSensitive = <String>{};

/// Factory wrapper for `google_compute_network_endpoint_group`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeNetworkEndpointGroup extends Data {
  static const String tfType = 'google_compute_network_endpoint_group';

  DataGoogleComputeNetworkEndpointGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? selfLink,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (selfLink != null) 'self_link': selfLink,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeNetworkEndpointGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_port` attribute.
  TfRef<num> get defaultPort => TfRef.attribute<num>(this, 'default_port');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `generated_id` attribute.
  TfRef<num> get generatedId => TfRef.attribute<num>(this, 'generated_id');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_endpoint_type` attribute.
  TfRef<String> get networkEndpointType =>
      TfRef.attribute<String>(this, 'network_endpoint_type');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
