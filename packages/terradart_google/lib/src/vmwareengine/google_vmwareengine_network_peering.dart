// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network_peering`.
const Set<String> _googleVmwareengineNetworkPeeringSensitive = <String>{};

/// Vmwareengine Network Peering Peer Network enum for `peer_network_type`.
extension type const VmwareengineNetworkPeeringPeerNetworkType._(
  TfArg<String> _
) implements TfArg<String> {
  VmwareengineNetworkPeeringPeerNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  VmwareengineNetworkPeeringPeerNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const VmwareengineNetworkPeeringPeerNetworkType.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = VmwareengineNetworkPeeringPeerNetworkType._(
    TfArgLiteral('STANDARD'),
  );
  static const vmwareEngineNetwork =
      VmwareengineNetworkPeeringPeerNetworkType._(
        TfArgLiteral('VMWARE_ENGINE_NETWORK'),
      );
  static const privateServicesAccess =
      VmwareengineNetworkPeeringPeerNetworkType._(
        TfArgLiteral('PRIVATE_SERVICES_ACCESS'),
      );
  static const netappCloudVolumes = VmwareengineNetworkPeeringPeerNetworkType._(
    TfArgLiteral('NETAPP_CLOUD_VOLUMES'),
  );
  static const thirdPartyService = VmwareengineNetworkPeeringPeerNetworkType._(
    TfArgLiteral('THIRD_PARTY_SERVICE'),
  );
  static const dellPowerscale = VmwareengineNetworkPeeringPeerNetworkType._(
    TfArgLiteral('DELL_POWERSCALE'),
  );
  static const googleCloudNetappVolumes =
      VmwareengineNetworkPeeringPeerNetworkType._(
        TfArgLiteral('GOOGLE_CLOUD_NETAPP_VOLUMES'),
      );

  static const List<VmwareengineNetworkPeeringPeerNetworkType> values = [
    standard,
    vmwareEngineNetwork,
    privateServicesAccess,
    netappCloudVolumes,
    thirdPartyService,
    dellPowerscale,
    googleCloudNetappVolumes,
  ];
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

  GoogleVmwareengineNetworkPeering(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> vmwareEngineNetwork,
    required TfArg<String> peerNetwork,
    required VmwareengineNetworkPeeringPeerNetworkType peerNetworkType,
    TfArg<String>? description,
    TfArg<bool>? exportCustomRoutes,
    TfArg<bool>? exportCustomRoutesWithPublicIp,
    TfArg<bool>? importCustomRoutes,
    TfArg<bool>? importCustomRoutesWithPublicIp,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'vmware_engine_network': vmwareEngineNetwork,
           'peer_network': peerNetwork,
           'peer_network_type': peerNetworkType,
           'description': ?description,
           'export_custom_routes': ?exportCustomRoutes,
           'export_custom_routes_with_public_ip':
               ?exportCustomRoutesWithPublicIp,
           'import_custom_routes': ?importCustomRoutes,
           'import_custom_routes_with_public_ip':
               ?importCustomRoutesWithPublicIp,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkPeeringSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVmwareengineNetworkPeering>`.
  RefTo<GoogleVmwareengineNetworkPeering> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `export_custom_routes` attribute.
  TfRef<bool> get exportCustomRoutes =>
      TfRef.attribute<bool>(this, 'export_custom_routes');

  /// Reference to `export_custom_routes_with_public_ip` attribute.
  TfRef<bool> get exportCustomRoutesWithPublicIp =>
      TfRef.attribute<bool>(this, 'export_custom_routes_with_public_ip');

  /// Reference to `import_custom_routes` attribute.
  TfRef<bool> get importCustomRoutes =>
      TfRef.attribute<bool>(this, 'import_custom_routes');

  /// Reference to `import_custom_routes_with_public_ip` attribute.
  TfRef<bool> get importCustomRoutesWithPublicIp =>
      TfRef.attribute<bool>(this, 'import_custom_routes_with_public_ip');

  /// Reference to `peer_network` attribute.
  TfRef<String> get peerNetwork =>
      TfRef.attribute<String>(this, 'peer_network');

  /// Reference to `peer_network_type` attribute.
  TfRef<String> get peerNetworkType =>
      TfRef.attribute<String>(this, 'peer_network_type');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `vmware_engine_network` attribute.
  TfRef<String> get vmwareEngineNetwork =>
      TfRef.attribute<String>(this, 'vmware_engine_network');
}
