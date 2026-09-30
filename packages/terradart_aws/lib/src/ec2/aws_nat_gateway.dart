// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_nat_gateway`.
const Set<String> _awsNatGatewaySensitive = <String>{};

/// Nat Gateway Availability enum for `availability_mode`.
enum NatGatewayAvailabilityMode implements TerraformEnum {
  zonal('zonal'),
  regional('regional');

  const NatGatewayAvailabilityMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Nat Gateway Connectivity enum for `connectivity_type`.
enum NatGatewayConnectivityType implements TerraformEnum {
  private('private'),
  public('public');

  const NatGatewayConnectivityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `secondary_private_ip_address_count`, `secondary_private_ip_addresses` on `aws_nat_gateway`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.secondaryPrivateIpAddressCount(...)`.
sealed class NatGatewaySecondaryPrivateIpAddress {
  const NatGatewaySecondaryPrivateIpAddress();

  /// Sets `secondary_private_ip_address_count`.
  const factory NatGatewaySecondaryPrivateIpAddress.secondaryPrivateIpAddressCount(
    TfArg<num> secondaryPrivateIpAddressCount,
  ) = NatGatewaySecondaryPrivateIpAddressCount;

  /// Sets `secondary_private_ip_addresses`.
  const factory NatGatewaySecondaryPrivateIpAddress.secondaryPrivateIpAddresses(
    TfArg<List<String>> secondaryPrivateIpAddresses,
  ) = NatGatewaySecondaryPrivateIpAddressSecondaryPrivateIpAddresses;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NatGatewaySecondaryPrivateIpAddress.secondaryPrivateIpAddressCount] choice: sets `secondary_private_ip_address_count`.
final class NatGatewaySecondaryPrivateIpAddressCount
    extends NatGatewaySecondaryPrivateIpAddress {
  const NatGatewaySecondaryPrivateIpAddressCount(
    this.secondaryPrivateIpAddressCount,
  );

  final TfArg<num> secondaryPrivateIpAddressCount;

  @override
  String get blockKey => 'secondary_private_ip_address_count';

  @override
  Map<String, Object?> encode() => {
    'secondary_private_ip_address_count': secondaryPrivateIpAddressCount
        .toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secondary_private_ip_address_count': secondaryPrivateIpAddressCount,
  };
}

/// The [NatGatewaySecondaryPrivateIpAddress.secondaryPrivateIpAddresses] choice: sets `secondary_private_ip_addresses`.
final class NatGatewaySecondaryPrivateIpAddressSecondaryPrivateIpAddresses
    extends NatGatewaySecondaryPrivateIpAddress {
  const NatGatewaySecondaryPrivateIpAddressSecondaryPrivateIpAddresses(
    this.secondaryPrivateIpAddresses,
  );

  final TfArg<List<String>> secondaryPrivateIpAddresses;

  @override
  String get blockKey => 'secondary_private_ip_addresses';

  @override
  Map<String, Object?> encode() => {
    'secondary_private_ip_addresses': secondaryPrivateIpAddresses.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'secondary_private_ip_addresses': secondaryPrivateIpAddresses,
  };
}

/// Typed helper for the `availability_zone_address` block of
/// `aws_nat_gateway` (derived from provider schema).
@immutable
final class NatGatewayAvailabilityZoneAddress {
  const NatGatewayAvailabilityZoneAddress({
    this.allocationIds,
    this.availabilityZone,
    this.availabilityZoneId,
  });

  final TfArg<List<String>>? allocationIds;

  final TfArg<String>? availabilityZone;

  final TfArg<String>? availabilityZoneId;

  Map<String, Object?> encode() => {
    'allocation_ids': ?allocationIds?.toTfJson(),
    'availability_zone': ?availabilityZone?.toTfJson(),
    'availability_zone_id': ?availabilityZoneId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_nat_gateway`.
final class AwsNatGateway extends Resource {
  static const String tfType = 'aws_nat_gateway';

  AwsNatGateway({
    required super.localName,
    TfArg<String>? allocationId,
    TfArg<NatGatewayAvailabilityMode>? availabilityMode,
    TfArg<NatGatewayConnectivityType>? connectivityType,
    TfArg<String>? privateIp,
    TfArg<String>? region,
    TfArg<List<String>>? secondaryAllocationIds,
    NatGatewaySecondaryPrivateIpAddress? secondaryPrivateIpAddress,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<NatGatewayAvailabilityZoneAddress>? availabilityZoneAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_id': ?allocationId,
           'availability_mode': ?availabilityMode,
           'connectivity_type': ?connectivityType,
           'private_ip': ?privateIp,
           'region': ?region,
           'secondary_allocation_ids': ?secondaryAllocationIds,
           ...?secondaryPrivateIpAddress?.argMap,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (availabilityZoneAddress != null)
             'availability_zone_address': TfArg.literal([
               for (final e in availabilityZoneAddress) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNatGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNatGateway>`.
  RefTo<AwsNatGateway> get ref => RefTo.of(this);

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
