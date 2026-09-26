// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_nat_gateway`.
const Set<String> _awsNatGatewaySensitive = <String>{};

/// Typed helper for the `availability_zone_address` block of
/// `aws_nat_gateway` (derived from provider schema).
@immutable
final class NatGatewayAvailabilityZoneAddress {
  const NatGatewayAvailabilityZoneAddress({
    this.allocationIds,
    this.availabilityZone,
    this.availabilityZoneId,
  });

  final TfArg<List<Object?>>? allocationIds;

  final TfArg<String>? availabilityZone;

  final TfArg<String>? availabilityZoneId;

  Map<String, Object?> encode() => {
    if (allocationIds != null) 'allocation_ids': allocationIds!.toTfJson(),
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (availabilityZoneId != null)
      'availability_zone_id': availabilityZoneId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_nat_gateway`.
final class AwsNatGateway extends Resource {
  static const String tfType = 'aws_nat_gateway';

  AwsNatGateway({
    required super.localName,
    TfArg<String>? allocationId,
    TfArg<String>? availabilityMode,
    TfArg<String>? connectivityType,
    TfArg<String>? privateIp,
    TfArg<String>? region,
    TfArg<List<String>>? secondaryAllocationIds,
    TfArg<num>? secondaryPrivateIpAddressCount,
    TfArg<List<String>>? secondaryPrivateIpAddresses,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    List<NatGatewayAvailabilityZoneAddress>? availabilityZoneAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allocationId != null) 'allocation_id': allocationId,
           if (availabilityMode != null) 'availability_mode': availabilityMode,
           if (connectivityType != null) 'connectivity_type': connectivityType,
           if (privateIp != null) 'private_ip': privateIp,
           if (region != null) 'region': region,
           if (secondaryAllocationIds != null)
             'secondary_allocation_ids': secondaryAllocationIds,
           if (secondaryPrivateIpAddressCount != null)
             'secondary_private_ip_address_count':
                 secondaryPrivateIpAddressCount,
           if (secondaryPrivateIpAddresses != null)
             'secondary_private_ip_addresses': secondaryPrivateIpAddresses,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (availabilityZoneAddress != null)
             'availability_zone_address': TfArg.literal([
               for (final e in availabilityZoneAddress) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNatGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `auto_provision_zones` attribute.
  TfRef<String> get autoProvisionZones =>
      TfRef.attribute<String>(this, 'auto_provision_zones');

  /// Reference to `auto_scaling_ips` attribute.
  TfRef<String> get autoScalingIps =>
      TfRef.attribute<String>(this, 'auto_scaling_ips');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `public_ip` attribute.
  TfRef<String> get publicIp => TfRef.attribute<String>(this, 'public_ip');

  /// Reference to `regional_nat_gateway_address` attribute.
  TfRef<List<Map<String, Object?>>> get regionalNatGatewayAddress =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'regional_nat_gateway_address',
      );

  /// Reference to `regional_nat_gateway_auto_mode` attribute.
  TfRef<String> get regionalNatGatewayAutoMode =>
      TfRef.attribute<String>(this, 'regional_nat_gateway_auto_mode');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');
}
