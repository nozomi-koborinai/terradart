// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_session`.
const Set<String> _awsEc2TrafficMirrorSessionSensitive = <String>{};

/// Factory wrapper for `aws_ec2_traffic_mirror_session`.
final class AwsEc2TrafficMirrorSession extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_session';

  AwsEc2TrafficMirrorSession({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> networkInterfaceId,
    TfArg<num>? packetLength,
    TfArg<String>? region,
    required TfArg<num> sessionNumber,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trafficMirrorFilterId,
    required TfArg<String> trafficMirrorTargetId,
    TfArg<num>? virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'network_interface_id': networkInterfaceId,
           if (packetLength != null) 'packet_length': packetLength,
           if (region != null) 'region': region,
           'session_number': sessionNumber,
           if (tags != null) 'tags': tags,
           'traffic_mirror_filter_id': trafficMirrorFilterId,
           'traffic_mirror_target_id': trafficMirrorTargetId,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorSessionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}
