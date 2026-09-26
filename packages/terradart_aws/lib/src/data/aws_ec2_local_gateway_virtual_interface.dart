// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_local_gateway_virtual_interface`.
const Set<String> _awsEc2LocalGatewayVirtualInterfaceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_local_gateway_virtual_interface` (derived from provider schema).
@immutable
final class DataEc2LocalGatewayVirtualInterfaceFilter {
  const DataEc2LocalGatewayVirtualInterfaceFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_local_gateway_virtual_interface`.
final class DataAwsEc2LocalGatewayVirtualInterface extends Data {
  static const String tfType = 'aws_ec2_local_gateway_virtual_interface';

  DataAwsEc2LocalGatewayVirtualInterface({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2LocalGatewayVirtualInterfaceFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsEc2LocalGatewayVirtualInterfaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `local_address` attribute.
  TfRef<String> get localAddress =>
      TfRef.attribute<String>(this, 'local_address');

  /// Reference to `local_bgp_asn` attribute.
  TfRef<num> get localBgpAsn => TfRef.attribute<num>(this, 'local_bgp_asn');

  /// Reference to `local_gateway_id` attribute.
  TfRef<String> get localGatewayId =>
      TfRef.attribute<String>(this, 'local_gateway_id');

  /// Reference to `local_gateway_virtual_interface_group_id` attribute.
  TfRef<String> get localGatewayVirtualInterfaceGroupId =>
      TfRef.attribute<String>(this, 'local_gateway_virtual_interface_group_id');

  /// Reference to `local_gateway_virtual_interface_ids` attribute.
  TfRef<List<String>> get localGatewayVirtualInterfaceIds =>
      TfRef.attribute<List<String>>(
        this,
        'local_gateway_virtual_interface_ids',
      );

  /// Reference to `outpost_lag_id` attribute.
  TfRef<String> get outpostLagId =>
      TfRef.attribute<String>(this, 'outpost_lag_id');

  /// Reference to `peer_address` attribute.
  TfRef<String> get peerAddress =>
      TfRef.attribute<String>(this, 'peer_address');

  /// Reference to `peer_bgp_asn` attribute.
  TfRef<num> get peerBgpAsn => TfRef.attribute<num>(this, 'peer_bgp_asn');

  /// Reference to `vlan` attribute.
  TfRef<num> get vlan => TfRef.attribute<num>(this, 'vlan');
}
