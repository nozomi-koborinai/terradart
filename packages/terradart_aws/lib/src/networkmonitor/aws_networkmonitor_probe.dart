// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmonitor_probe`.
const Set<String> _awsNetworkmonitorProbeSensitive = <String>{};

/// Factory wrapper for `aws_networkmonitor_probe`.
final class AwsNetworkmonitorProbe extends Resource {
  static const String tfType = 'aws_networkmonitor_probe';

  AwsNetworkmonitorProbe({
    required super.localName,
    required TfArg<String> destination,
    TfArg<num>? destinationPort,
    required TfArg<String> monitorName,
    TfArg<num>? packetSize,
    required TfArg<String> protocol,
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
           if (destinationPort != null) 'destination_port': destinationPort,
           'monitor_name': monitorName,
           if (packetSize != null) 'packet_size': packetSize,
           'protocol': protocol,
           if (region != null) 'region': region,
           'source_arn': sourceArn,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmonitorProbeSensitive;

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
}
