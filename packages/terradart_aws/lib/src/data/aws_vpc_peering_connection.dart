// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_vpc_peering_connection.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

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

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connection`.
final class DataAwsVpcPeeringConnection extends Data {
  static const String tfType = 'aws_vpc_peering_connection';

  DataAwsVpcPeeringConnection(
    super.localName, {
    TfArg<String>? cidrBlock,
    TfArg<String>? ownerId,
    TfArg<String>? peerCidrBlock,
    TfArg<String>? peerOwnerId,
    RefTo<AwsVpc>? peerVpcId,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataVpcPeeringConnectionFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr_block': ?cidrBlock,
           'owner_id': ?ownerId,
           'peer_cidr_block': ?peerCidrBlock,
           'peer_owner_id': ?peerOwnerId,
           'peer_vpc_id': ?peerVpcId?.encodeAs('id'),
           'status': ?status,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionSensitive;

  /// A reference to the `aws_vpc_peering_connection` this data source reads, for
  /// arguments typed `RefTo<AwsVpcPeeringConnection>`.
  RefTo<AwsVpcPeeringConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `cidr_block` attribute.
  TfRef<String> get cidrBlock => TfRef.attribute<String>(this, 'cidr_block');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `peer_cidr_block` attribute.
  TfRef<String> get peerCidrBlock =>
      TfRef.attribute<String>(this, 'peer_cidr_block');

  /// Reference to `peer_owner_id` attribute.
  TfRef<String> get peerOwnerId =>
      TfRef.attribute<String>(this, 'peer_owner_id');

  /// Reference to `peer_vpc_id` attribute.
  TfRef<String> get peerVpcId => TfRef.attribute<String>(this, 'peer_vpc_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
