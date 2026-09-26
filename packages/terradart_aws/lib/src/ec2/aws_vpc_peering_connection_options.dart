// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_peering_connection_options`.
const Set<String> _awsVpcPeeringConnectionOptionsSensitive = <String>{};

/// Typed helper for the `accepter` block of
/// `aws_vpc_peering_connection_options` (derived from provider schema).
@immutable
final class VpcPeeringConnectionOptionsAccepter {
  const VpcPeeringConnectionOptionsAccepter({this.allowRemoteVpcDnsResolution});

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Typed helper for the `requester` block of
/// `aws_vpc_peering_connection_options` (derived from provider schema).
@immutable
final class VpcPeeringConnectionOptionsRequester {
  const VpcPeeringConnectionOptionsRequester({
    this.allowRemoteVpcDnsResolution,
  });

  final TfArg<bool>? allowRemoteVpcDnsResolution;

  Map<String, Object?> encode() => {
    if (allowRemoteVpcDnsResolution != null)
      'allow_remote_vpc_dns_resolution': allowRemoteVpcDnsResolution!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_peering_connection_options`.
final class AwsVpcPeeringConnectionOptions extends Resource {
  static const String tfType = 'aws_vpc_peering_connection_options';

  AwsVpcPeeringConnectionOptions({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> vpcPeeringConnectionId,
    VpcPeeringConnectionOptionsAccepter? accepter,
    VpcPeeringConnectionOptionsRequester? requester,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'vpc_peering_connection_id': vpcPeeringConnectionId,
           if (accepter != null) 'accepter': TfArg.literal(accepter.encode()),
           if (requester != null)
             'requester': TfArg.literal(requester.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcPeeringConnectionOptionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
