// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_peering_connection_accepter`.
const Set<String> _awsVpcPeeringConnectionAccepterSensitive = <String>{};

/// Typed helper for the `accepter` block of
/// `aws_vpc_peering_connection_accepter` (derived from provider schema).
@immutable
final class VpcPeeringConnectionAccepterAccepter {
  const VpcPeeringConnectionAccepterAccepter({
    this.allowRemoteVpcDnsResolution,
  });

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Typed helper for the `requester` block of
/// `aws_vpc_peering_connection_accepter` (derived from provider schema).
@immutable
final class VpcPeeringConnectionAccepterRequester {
  const VpcPeeringConnectionAccepterRequester({
    this.allowRemoteVpcDnsResolution,
  });

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connection_accepter`.
final class AwsVpcPeeringConnectionAccepter extends Resource {
  static const String tfType = 'aws_vpc_peering_connection_accepter';

  AwsVpcPeeringConnectionAccepter({
    required super.localName,
    TfArg<bool>? autoAccept,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vpcPeeringConnectionId,
    VpcPeeringConnectionAccepterAccepter? accepter,
    VpcPeeringConnectionAccepterRequester? requester,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoAccept != null) 'auto_accept': autoAccept,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'vpc_peering_connection_id': vpcPeeringConnectionId,
           if (accepter != null) 'accepter': TfArg.literal(accepter.encode()),
           if (requester != null)
             'requester': TfArg.literal(requester.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accept_status` attribute.
  TfRef<String> get acceptStatus =>
      TfRef.attribute<String>(this, 'accept_status');

  /// Reference to `peer_owner_id` attribute.
  TfRef<String> get peerOwnerId =>
      TfRef.attribute<String>(this, 'peer_owner_id');

  /// Reference to `peer_region` attribute.
  TfRef<String> get peerRegion => TfRef.attribute<String>(this, 'peer_region');

  /// Reference to `peer_vpc_id` attribute.
  TfRef<String> get peerVpcId => TfRef.attribute<String>(this, 'peer_vpc_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
