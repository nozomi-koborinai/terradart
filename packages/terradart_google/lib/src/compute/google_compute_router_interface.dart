// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? subnetwork,
    TfArg<String>? interconnectAttachment,
    TfArg<String>? vpnTunnel,
    TfArg<String>? privateIpAddress,
    TfArg<String>? redundantInterface,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'router': router,
           if (region != null) 'region': region,
           if (ipRange != null) 'ip_range': ipRange,
           if (ipVersion != null) 'ip_version': ipVersion,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (interconnectAttachment != null)
             'interconnect_attachment': interconnectAttachment,
           if (vpnTunnel != null) 'vpn_tunnel': vpnTunnel,
           if (privateIpAddress != null) 'private_ip_address': privateIpAddress,
           if (redundantInterface != null)
             'redundant_interface': redundantInterface,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterInterfaceSensitive;

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
