// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_peering_connection`.
const Set<String> _awsVpcPeeringConnectionSensitive = <String>{};

/// Typed helper for the `accepter` block of
/// `aws_vpc_peering_connection` (derived from provider schema).
@immutable
final class VpcPeeringConnectionAccepter {
  const VpcPeeringConnectionAccepter({this.allowRemoteVpcDnsResolution});

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  @internal
  Map<String, Object?> encode() => {
    'allow_remote_vpc_dns_resolution': ?allowRemoteVpcDnsResolution?.toTfJson(),
  };
}

/// Typed helper for the `requester` block of
/// `aws_vpc_peering_connection` (derived from provider schema).
@immutable
final class VpcPeeringConnectionRequester {
  const VpcPeeringConnectionRequester({this.allowRemoteVpcDnsResolution});

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  @internal
  Map<String, Object?> encode() => {
    'allow_remote_vpc_dns_resolution': ?allowRemoteVpcDnsResolution?.toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connection`.
final class AwsVpcPeeringConnection extends Resource {
  static const String tfType = 'aws_vpc_peering_connection';

  AwsVpcPeeringConnection(
    super.localName, {
    TfArg<bool>? autoAccept,
    TfArg<String>? peerOwnerId,
    TfArg<String>? peerRegion,
    required RefTo<AwsVpc> peerVpcId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required RefTo<AwsVpc> vpcId,
    VpcPeeringConnectionAccepter? accepter,
    VpcPeeringConnectionRequester? requester,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_accept': ?autoAccept,
           'peer_owner_id': ?peerOwnerId,
           'peer_region': ?peerRegion,
           'peer_vpc_id': peerVpcId.encodeAs('id'),
           'region': ?region,
           'tags': ?tags,
           'vpc_id': vpcId.encodeAs('id'),
           if (accepter != null) 'accepter': TfArg.literal(accepter.encode()),
           if (requester != null)
             'requester': TfArg.literal(requester.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcPeeringConnection>`.
  RefTo<AwsVpcPeeringConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_status` attribute.
  TfRef<String> get acceptStatus =>
      TfRef.attribute<String>(this, 'accept_status');

  /// Reference to `auto_accept` attribute.
  TfRef<bool> get autoAccept => TfRef.attribute<bool>(this, 'auto_accept');

  /// Reference to `peer_owner_id` attribute.
  TfRef<String> get peerOwnerId =>
      TfRef.attribute<String>(this, 'peer_owner_id');

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegion => TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `peer_vpc_id` attribute.
  TfRef<String> get peerVpcId => TfRef.attribute<String>(this, 'peer_vpc_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
