// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_router_interface`.
const Set<String> _googleComputeRouterInterfaceSensitive = <String>{};

/// Factory wrapper for `google_compute_router_interface`.
final class GoogleComputeRouterInterface extends Resource {
  static const String tfType = 'google_compute_router_interface';

  GoogleComputeRouterInterface({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> router,
    TfArg<String>? region,
    TfArg<String>? ipRange,
    TfArg<String>? ipVersion,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<String>? interconnectAttachment,
    TfArg<String>? vpnTunnel,
    TfArg<String>? privateIpAddress,
    TfArg<String>? redundantInterface,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           'region': ?region,
           'ip_range': ?ipRange,
           'ip_version': ?ipVersion,
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'interconnect_attachment': ?interconnectAttachment,
           'vpn_tunnel': ?vpnTunnel,
           'private_ip_address': ?privateIpAddress,
           'redundant_interface': ?redundantInterface,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterInterfaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouterInterface>`.
  RefTo<GoogleComputeRouterInterface> get ref => RefTo.of(this);

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
