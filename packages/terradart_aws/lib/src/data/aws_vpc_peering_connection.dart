// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_peering_connection`.
const Set<String> _awsVpcPeeringConnectionSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_vpc_peering_connection` (derived from provider schema).
@immutable
final class DataVpcPeeringConnectionFilter {
  const DataVpcPeeringConnectionFilter({
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

/// Factory wrapper for `aws_vpc_peering_connection`.
final class DataAwsVpcPeeringConnection extends Data {
  static const String tfType = 'aws_vpc_peering_connection';

  DataAwsVpcPeeringConnection({
    required super.localName,
    TfArg<String>? cidrBlock,
    TfArg<String>? ownerId,
    TfArg<String>? peerCidrBlock,
    TfArg<String>? peerOwnerId,
    TfArg<String>? peerVpcId,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    List<DataVpcPeeringConnectionFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (ownerId != null) 'owner_id': ownerId,
           if (peerCidrBlock != null) 'peer_cidr_block': peerCidrBlock,
           if (peerOwnerId != null) 'peer_owner_id': peerOwnerId,
           if (peerVpcId != null) 'peer_vpc_id': peerVpcId,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accepter` attribute.
  TfRef<Map<String, bool>> get accepter =>
      TfRef.attribute<Map<String, bool>>(this, 'accepter');

  /// Reference to `cidr_block_set` attribute.
  TfRef<List<Map<String, Object?>>> get cidrBlockSet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cidr_block_set');

  /// Reference to `ipv6_cidr_block_set` attribute.
  TfRef<List<Map<String, Object?>>> get ipv6CidrBlockSet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipv6_cidr_block_set');

  /// Reference to `peer_cidr_block_set` attribute.
  TfRef<List<Map<String, Object?>>> get peerCidrBlockSet =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'peer_cidr_block_set');

  /// Reference to `peer_ipv6_cidr_block_set` attribute.
  TfRef<List<Map<String, Object?>>> get peerIpv6CidrBlockSet =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'peer_ipv6_cidr_block_set',
      );

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegion => TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `requester` attribute.
  TfRef<Map<String, bool>> get requester =>
      TfRef.attribute<Map<String, bool>>(this, 'requester');

  /// Reference to `requester_region` attribute.
  TfRef<String> get requesterRegion =>
      TfRef.attribute<String>(this, 'requester_region');
}
