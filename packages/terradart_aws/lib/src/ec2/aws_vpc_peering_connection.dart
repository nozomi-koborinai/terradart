// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_peering_connection`.
const Set<String> _awsVpcPeeringConnectionSensitive = <String>{};

/// Typed helper for the `accepter` block of
/// `aws_vpc_peering_connection` (derived from provider schema).
@immutable
final class VpcPeeringConnectionAccepter {
  const VpcPeeringConnectionAccepter({this.allowRemoteVpcDnsResolution});

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Typed helper for the `requester` block of
/// `aws_vpc_peering_connection` (derived from provider schema).
@immutable
final class VpcPeeringConnectionRequester {
  const VpcPeeringConnectionRequester({this.allowRemoteVpcDnsResolution});

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connection`.
final class AwsVpcPeeringConnection extends Resource {
  static const String tfType = 'aws_vpc_peering_connection';

  AwsVpcPeeringConnection({
    required super.localName,
    TfArg<bool>? autoAccept,
    TfArg<String>? peerOwnerId,
    TfArg<String>? peerRegion,
    required TfArg<String> peerVpcId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcId,
    VpcPeeringConnectionAccepter? accepter,
    VpcPeeringConnectionRequester? requester,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoAccept != null) 'auto_accept': autoAccept,
           if (peerOwnerId != null) 'peer_owner_id': peerOwnerId,
           if (peerRegion != null) 'peer_region': peerRegion,
           'peer_vpc_id': peerVpcId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_id': vpcId,
           if (accepter != null) 'accepter': TfArg.literal(accepter.encode()),
           if (requester != null)
             'requester': TfArg.literal(requester.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_status` attribute.
  TfRef<String> get acceptStatus =>
      TfRef.attribute<String>(this, 'accept_status');
}
