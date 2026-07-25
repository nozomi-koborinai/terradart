// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_subnet`.
const Set<String> _googleVmwareengineSubnetSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_subnet`.
///
/// Subnet in a private cloud. A Private Cloud contains two types of subnets:
/// `management` subnets (such as vMotion) that are read-only,and `userDefined`,
/// which can also be updated. This resource should be used to read and update
/// `userDefined` subnets. To read `management` subnets, please utilize the
/// subnet data source.
///
/// Google Cloud VMware Engine **subnet** — CIDR under a private cloud
/// (`parent`).
///
/// **Cost / apply:** No dedicated subnet SKU on VMware Engine
/// `C079-64FE-9109` after MCP `list_skus` (keyword subnet → 0). Requires a
/// never_apply [GoogleVmwareenginePrivateCloud] (node hours, e.g. SKU
/// `00C9-4870-5751` **$15.11/h**). Debt-only — **never** wire into
/// apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleVmwareengineSubnet extends Resource {
  static const String tfType = 'google_vmwareengine_subnet';

  GoogleVmwareengineSubnet({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> ipCidrRange,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'parent': parent, 'ip_cidr_range': ipCidrRange},
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineSubnetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dhcp_address_ranges` attribute.
  TfRef<List<Map<String, Object?>>> get dhcpAddressRanges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dhcp_address_ranges');

  /// Reference to `gateway_id` attribute.
  TfRef<String> get gatewayId => TfRef.attribute<String>(this, 'gateway_id');

  /// Reference to `gateway_ip` attribute.
  TfRef<String> get gatewayIp => TfRef.attribute<String>(this, 'gateway_ip');

  /// Reference to `standard_config` attribute.
  TfRef<bool> get standardConfig =>
      TfRef.attribute<bool>(this, 'standard_config');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
