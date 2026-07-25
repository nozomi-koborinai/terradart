// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_network_policy`.
const Set<String> _googleVmwareengineNetworkPolicySensitive = <String>{};

/// Typed helper for the `external_ip` block of
/// `google_vmwareengine_network_policy` (derived from provider schema).
@immutable
final class VmwareengineNetworkPolicyExternalIp {
  const VmwareengineNetworkPolicyExternalIp({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `internet_access` block of
/// `google_vmwareengine_network_policy` (derived from provider schema).
@immutable
final class VmwareengineNetworkPolicyInternetAccess {
  const VmwareengineNetworkPolicyInternetAccess({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_vmwareengine_network_policy`.
///
/// Represents a network policy resource. Network policies are regional
/// resources.
///
/// Google Cloud VMware Engine **network policy** — edge services CIDR plus
/// optional external-IP / internet-access toggles on a VMware Engine
/// network.
///
/// **Cost / apply:** No dedicated network-policy SKU on VMware Engine
/// `C079-64FE-9109` after MCP `list_skus` (keyword network/External/
/// Internet → 0). Requires a [GoogleVmwareengineNetwork] that exists to
/// attach never_apply private clouds (node hours, e.g. SKU `00C9-4870-5751`
/// **$15.11/h**). Debt-only — **never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [edgeServicesCidr] and [vmwareEngineNetwork] are required.
final class GoogleVmwareengineNetworkPolicy extends Resource {
  static const String tfType = 'google_vmwareengine_network_policy';

  GoogleVmwareengineNetworkPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> edgeServicesCidr,
    required TfArg<String> vmwareEngineNetwork,
    TfArg<String>? description,
    VmwareengineNetworkPolicyExternalIp? externalIp,
    VmwareengineNetworkPolicyInternetAccess? internetAccess,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'edge_services_cidr': edgeServicesCidr,
           'vmware_engine_network': vmwareEngineNetwork,
           if (description != null) 'description': description,
           if (externalIp != null)
             'external_ip': TfArg.literal(externalIp.encode()),
           if (internetAccess != null)
             'internet_access': TfArg.literal(internetAccess.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineNetworkPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

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
