// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmonitor_probe`.
const Set<String> _awsNetworkmonitorProbeSensitive = <String>{};

/// Networkmonitor Probe enum for `protocol`.
extension type const NetworkmonitorProbeProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkmonitorProbeProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkmonitorProbeProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkmonitorProbeProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = NetworkmonitorProbeProtocol._(TfArgLiteral('TCP'));
  static const icmp = NetworkmonitorProbeProtocol._(TfArgLiteral('ICMP'));

  static const List<NetworkmonitorProbeProtocol> values = [tcp, icmp];
}

/// Factory wrapper for `aws_networkmonitor_probe`.
final class AwsNetworkmonitorProbe extends Resource {
  static const String tfType = 'aws_networkmonitor_probe';

  AwsNetworkmonitorProbe(
    super.localName, {
    required TfArg<String> destination,
    TfArg<num>? destinationPort,
    required TfArg<String> monitorName,
    TfArg<num>? packetSize,
    required NetworkmonitorProbeProtocol protocol,
    TfArg<String>? region,
    required TfArg<String> sourceArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination': destination,
           'destination_port': ?destinationPort,
           'monitor_name': monitorName,
           'packet_size': ?packetSize,
           'protocol': protocol,
           'region': ?region,
           'source_arn': sourceArn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmonitorProbeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmonitorProbe>`.
  RefTo<AwsNetworkmonitorProbe> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `probe_id` attribute.
  TfRef<String> get probeId => TfRef.attribute<String>(this, 'probe_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `destination_port` attribute.
  TfRef<num> get destinationPort =>
      TfRef.attribute<num>(this, 'destination_port');

  /// Reference to `monitor_name` attribute.
  TfRef<String> get monitorName =>
      TfRef.attribute<String>(this, 'monitor_name');

  /// Reference to `packet_size` attribute.
  TfRef<num> get packetSize => TfRef.attribute<num>(this, 'packet_size');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
