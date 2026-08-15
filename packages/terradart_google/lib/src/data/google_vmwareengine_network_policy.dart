// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network_policy`.
const Set<String> _googleVmwareengineNetworkPolicySensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_network_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineNetworkPolicy extends Data {
  static const String tfType = 'google_vmwareengine_network_policy';

  DataGoogleVmwareengineNetworkPolicy({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkPolicySensitive;

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

  /// Reference to `edge_services_cidr` attribute.
  TfRef<String> get edgeServicesCidr =>
      TfRef.attribute<String>(this, 'edge_services_cidr');

  /// Reference to `external_ip` attribute.
  TfRef<List<Map<String, Object?>>> get externalIp =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'external_ip');

  /// Reference to `internet_access` attribute.
  TfRef<List<Map<String, Object?>>> get internetAccess =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'internet_access');

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
