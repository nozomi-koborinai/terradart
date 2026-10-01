// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_router.dart' show GoogleComputeRouter;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_router_interface`.
const Set<String> _googleComputeRouterInterfaceSensitive = <String>{};

/// Factory wrapper for `google_compute_router_interface`.
final class GoogleComputeRouterInterface extends Resource {
  static const String tfType = 'google_compute_router_interface';

  GoogleComputeRouterInterface(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeRouter> router,
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
           'router': router.encodeAs('name'),
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `interconnect_attachment` attribute.
  TfRef<String> get interconnectAttachment =>
      TfRef.attribute<String>(this, 'interconnect_attachment');

  /// Reference to `ip_range` attribute.
  TfRef<String> get ipRange => TfRef.attribute<String>(this, 'ip_range');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `redundant_interface` attribute.
  TfRef<String> get redundantInterface =>
      TfRef.attribute<String>(this, 'redundant_interface');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `vpn_tunnel` attribute.
  TfRef<String> get vpnTunnel => TfRef.attribute<String>(this, 'vpn_tunnel');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
