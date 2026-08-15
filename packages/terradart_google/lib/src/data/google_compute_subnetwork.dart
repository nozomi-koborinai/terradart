// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_subnetwork`.
const Set<String> _googleComputeSubnetworkSensitive = <String>{};

/// Factory wrapper for `google_compute_subnetwork`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSubnetwork extends Data {
  static const String tfType = 'google_compute_subnetwork';

  DataGoogleComputeSubnetwork({
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
  Set<String> get sensitiveFields => _googleComputeSubnetworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `external_ipv6_prefix` attribute.
  TfRef<String> get externalIpv6Prefix =>
      TfRef.attribute<String>(this, 'external_ipv6_prefix');

  /// Reference to `gateway_address` attribute.
  TfRef<String> get gatewayAddress =>
      TfRef.attribute<String>(this, 'gateway_address');

  /// Reference to `internal_ipv6_prefix` attribute.
  TfRef<String> get internalIpv6Prefix =>
      TfRef.attribute<String>(this, 'internal_ipv6_prefix');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `ipv6_access_type` attribute.
  TfRef<String> get ipv6AccessType =>
      TfRef.attribute<String>(this, 'ipv6_access_type');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `private_ip_google_access` attribute.
  TfRef<bool> get privateIpGoogleAccess =>
      TfRef.attribute<bool>(this, 'private_ip_google_access');

  /// Reference to `secondary_ip_range` attribute.
  TfRef<List<Map<String, Object?>>> get secondaryIpRange =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secondary_ip_range');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `subnetwork_id` attribute.
  TfRef<num> get subnetworkId => TfRef.attribute<num>(this, 'subnetwork_id');
}
