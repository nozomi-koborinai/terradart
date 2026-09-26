// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_nat_gateway`.
const Set<String> _awsNatGatewaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_nat_gateway` (derived from provider schema).
@immutable
final class DataNatGatewayFilter {
  const DataNatGatewayFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_nat_gateway`.
final class DataAwsNatGateway extends Data {
  static const String tfType = 'aws_nat_gateway';

  DataAwsNatGateway({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? state,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    List<DataNatGatewayFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (state != null) 'state': state,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNatGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_id` attribute.
  TfRef<String> get allocationId =>
      TfRef.attribute<String>(this, 'allocation_id');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `auto_provision_zones` attribute.
  TfRef<String> get autoProvisionZones =>
      TfRef.attribute<String>(this, 'auto_provision_zones');

  /// Reference to `auto_scaling_ips` attribute.
  TfRef<String> get autoScalingIps =>
      TfRef.attribute<String>(this, 'auto_scaling_ips');

  /// Reference to `availability_mode` attribute.
  TfRef<String> get availabilityMode =>
      TfRef.attribute<String>(this, 'availability_mode');

  /// Reference to `availability_zone_address` attribute.
  TfRef<List<Map<String, Object?>>> get availabilityZoneAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'availability_zone_address',
      );

  /// Reference to `connectivity_type` attribute.
  TfRef<String> get connectivityType =>
      TfRef.attribute<String>(this, 'connectivity_type');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `private_ip` attribute.
  TfRef<String> get privateIp => TfRef.attribute<String>(this, 'private_ip');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `regional_nat_gateway_address` attribute.
  TfRef<List<Map<String, Object?>>> get regionalNatGatewayAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'regional_nat_gateway_address',
      );

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `secondary_allocation_ids` attribute.
  TfRef<List<String>> get secondaryAllocationIds =>
      TfRef.attribute<List<String>>(this, 'secondary_allocation_ids');

  /// Reference to `secondary_private_ip_address_count` attribute.
  TfRef<num> get secondaryPrivateIpAddressCount =>
      TfRef.attribute<num>(this, 'secondary_private_ip_address_count');

  /// Reference to `secondary_private_ip_addresses` attribute.
  TfRef<List<String>> get secondaryPrivateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'secondary_private_ip_addresses');
}
