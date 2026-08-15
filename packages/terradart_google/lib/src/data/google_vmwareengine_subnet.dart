// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_subnet`.
const Set<String> _googleVmwareengineSubnetSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_subnet`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineSubnet extends Data {
  static const String tfType = 'google_vmwareengine_subnet';

  DataGoogleVmwareengineSubnet({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'name': name, 'parent': parent});

  @override
  Set<String> get sensitiveFields => _googleVmwareengineSubnetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

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
}
