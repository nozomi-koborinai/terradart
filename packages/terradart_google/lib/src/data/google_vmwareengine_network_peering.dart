// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network_peering`.
const Set<String> _googleVmwareengineNetworkPeeringSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_network_peering`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineNetworkPeering extends Data {
  static const String tfType = 'google_vmwareengine_network_peering';

  DataGoogleVmwareengineNetworkPeering({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkPeeringSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vmware_engine_network` attribute.
  TfRef<String> get vmwareEngineNetwork =>
      TfRef.attribute<String>(this, 'vmware_engine_network');

  /// Reference to `vmware_engine_network_canonical` attribute.
  TfRef<String> get vmwareEngineNetworkCanonical =>
      TfRef.attribute<String>(this, 'vmware_engine_network_canonical');
}
