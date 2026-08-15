// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_networking_vpc_service_controls`.
const Set<String> _googleServiceNetworkingVpcServiceControlsSensitive =
    <String>{};

/// Factory wrapper for `google_service_networking_vpc_service_controls`.
///
/// Manages the VPC Service Controls configuration for a service networking
/// connection
///
/// When enabled, Google Cloud makes the following route configuration changes
/// in the service producer VPC network: - Removes the IPv4 default route
/// (destination 0.0.0.0/0, next hop default internet gateway), Google Cloud
/// then creates an IPv4 route for destination 199.36.153.4/30 using the default
/// internet gateway next hop. - Creates Cloud DNS managed private zones and
/// authorizes those zones for the service producer VPC network. The zones
/// include googleapis.com, gcr.io, pkg.dev, notebooks.cloud.google.com,
/// kernels.googleusercontent.com, backupdr.cloud.google.com, and
/// backupdr.googleusercontent.com as necessary domains or host names for Google
/// APIs and services that are compatible with VPC Service Controls. Record data
/// in the zones resolves all host names to 199.36.153.4, 199.36.153.5,
/// 199.36.153.6, and 199.36.153.7.
///
/// When disabled, Google Cloud makes the following route configuration changes
/// in the service producer VPC network: - Restores a default route (destination
/// 0.0.0.0/0, next hop default internet gateway) - Deletes the Cloud DNS
/// managed private zones that provided the host name overrides.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleServiceNetworkingVpcServiceControls extends Resource {
  static const String tfType = 'google_service_networking_vpc_service_controls';

  GoogleServiceNetworkingVpcServiceControls({
    required super.localName,
    required TfArg<bool> enabled,
    required TfArg<String> network,
    TfArg<String>? project,
    required TfArg<String> service,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'network': network,
           if (project != null) 'project': project,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingVpcServiceControlsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
