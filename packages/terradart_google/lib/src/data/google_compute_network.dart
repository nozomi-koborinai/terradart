// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_network`.
const Set<String> _googleComputeNetworkSensitive = <String>{};

/// Factory wrapper for `google_compute_network`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeNetwork extends Data {
  static const String tfType = 'google_compute_network';

  DataGoogleComputeNetwork({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? networkProfile,
    TfArg<String>? project,
    TfArg<String>? selfLink,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (networkProfile != null) 'network_profile': networkProfile,
           if (project != null) 'project': project,
           if (selfLink != null) 'self_link': selfLink,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNetworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateway_ipv4` attribute.
  TfRef<String> get gatewayIpv4 =>
      TfRef.attribute<String>(this, 'gateway_ipv4');

  /// Reference to `internal_ipv6_range` attribute.
  TfRef<String> get internalIpv6Range =>
      TfRef.attribute<String>(this, 'internal_ipv6_range');

  /// Reference to `network_id` attribute.
  TfRef<num> get networkId => TfRef.attribute<num>(this, 'network_id');

  /// Reference to `numeric_id` attribute.
  TfRef<String> get numericId => TfRef.attribute<String>(this, 'numeric_id');

  /// Reference to `subnetworks_self_links` attribute.
  TfRef<List<String>> get subnetworksSelfLinks =>
      TfRef.attribute<List<String>>(this, 'subnetworks_self_links');
}
