// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_instance_public_ports`.
const Set<String> _awsLightsailInstancePublicPortsSensitive = <String>{};

/// Typed helper for the `port_info` block of
/// `aws_lightsail_instance_public_ports` (derived from provider schema).
@immutable
final class LightsailInstancePublicPortsPortInfo {
  const LightsailInstancePublicPortsPortInfo({
    this.cidrListAliases,
    this.cidrs,
    required this.fromPort,
    this.ipv6Cidrs,
    required this.protocol,
    required this.toPort,
  });

  final TfArg<List<String>>? cidrListAliases;

  final TfArg<List<String>>? cidrs;

  final TfArg<num> fromPort;

  final TfArg<List<String>>? ipv6Cidrs;

  final TfArg<String> protocol;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'cidr_list_aliases': ?cidrListAliases?.toTfJson(),
    'cidrs': ?cidrs?.toTfJson(),
    'from_port': fromPort.toTfJson(),
    'ipv6_cidrs': ?ipv6Cidrs?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// Factory wrapper for `aws_lightsail_instance_public_ports`.
final class AwsLightsailInstancePublicPorts extends Resource {
  static const String tfType = 'aws_lightsail_instance_public_ports';

  AwsLightsailInstancePublicPorts({
    required super.localName,
    required TfArg<String> instanceName,
    TfArg<String>? region,
    required List<LightsailInstancePublicPortsPortInfo> portInfo,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'region': ?region,
           'port_info': TfArg.literal([for (final e in portInfo) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailInstancePublicPortsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailInstancePublicPorts>`.
  RefTo<AwsLightsailInstancePublicPorts> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
