// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network_peering`.
const Set<String> _googleVmwareengineNetworkPeeringSensitive = <String>{};

/// Vmwareengine Network Peering Peer Network enum for `peer_network_type`.
enum VmwareengineNetworkPeeringPeerNetworkType implements TerraformEnum {
  standard('STANDARD'),
  vmwareEngineNetwork('VMWARE_ENGINE_NETWORK'),
  privateServicesAccess('PRIVATE_SERVICES_ACCESS'),
  netappCloudVolumes('NETAPP_CLOUD_VOLUMES'),
  thirdPartyService('THIRD_PARTY_SERVICE'),
  dellPowerscale('DELL_POWERSCALE'),
  googleCloudNetappVolumes('GOOGLE_CLOUD_NETAPP_VOLUMES');

  const VmwareengineNetworkPeeringPeerNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_vmwareengine_network_peering`.
///
/// Represents a network peering resource. Network peerings are global
/// resources.
///
/// Google Cloud VMware Engine **network peering** — peer a VMware Engine
/// network with a VPC / another VMware Engine network / PSA / NetApp /
/// third-party network.
///
/// **Cost / apply:** No dedicated peering SKU on VMware Engine
/// `C079-64FE-9109` after MCP `list_skus` (keyword Peering → 0). Requires a
/// [GoogleVmwareengineNetwork] used with never_apply private clouds (node
/// hours, e.g. SKU `00C9-4870-5751` **$15.11/h**). Debt-only — **never**
/// wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [peerNetwork], [peerNetworkType], and [vmwareEngineNetwork] are
/// required.
final class GoogleVmwareengineNetworkPeering extends Resource {
  static const String tfType = 'google_vmwareengine_network_peering';

  GoogleVmwareengineNetworkPeering({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> vmwareEngineNetwork,
    required TfArg<String> peerNetwork,
    required TfArg<VmwareengineNetworkPeeringPeerNetworkType> peerNetworkType,
    TfArg<String>? description,
    TfArg<bool>? exportCustomRoutes,
    TfArg<bool>? exportCustomRoutesWithPublicIp,
    TfArg<bool>? importCustomRoutes,
    TfArg<bool>? importCustomRoutesWithPublicIp,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'vmware_engine_network': vmwareEngineNetwork,
           'peer_network': peerNetwork,
           'peer_network_type': peerNetworkType,
           if (description != null) 'description': description,
           if (exportCustomRoutes != null)
             'export_custom_routes': exportCustomRoutes,
           if (exportCustomRoutesWithPublicIp != null)
             'export_custom_routes_with_public_ip':
                 exportCustomRoutesWithPublicIp,
           if (importCustomRoutes != null)
             'import_custom_routes': importCustomRoutes,
           if (importCustomRoutesWithPublicIp != null)
             'import_custom_routes_with_public_ip':
                 importCustomRoutesWithPublicIp,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkPeeringSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vmware_engine_network_canonical` attribute.
  TfRef<String> get vmwareEngineNetworkCanonical =>
      TfRef.attribute<String>(this, 'vmware_engine_network_canonical');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
