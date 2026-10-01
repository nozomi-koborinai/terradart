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
           'description': ?description,
           'network_interface_id': networkInterfaceId,
           'packet_length': ?packetLength,
           'region': ?region,
           'session_number': sessionNumber,
           'tags': ?tags,
           'traffic_mirror_filter_id': trafficMirrorFilterId,
           'traffic_mirror_target_id': trafficMirrorTargetId,
           'virtual_network_id': ?virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorSessionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TrafficMirrorSession>`.
  RefTo<AwsEc2TrafficMirrorSession> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `packet_length` attribute.
  TfRef<num> get packetLength => TfRef.attribute<num>(this, 'packet_length');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `session_number` attribute.
  TfRef<num> get sessionNumber => TfRef.attribute<num>(this, 'session_number');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_mirror_filter_id` attribute.
  TfRef<String> get trafficMirrorFilterId =>
      TfRef.attribute<String>(this, 'traffic_mirror_filter_id');

  /// Reference to `traffic_mirror_target_id` attribute.
  TfRef<String> get trafficMirrorTargetId =>
      TfRef.attribute<String>(this, 'traffic_mirror_target_id');

  /// Reference to `virtual_network_id` attribute.
  TfRef<num> get virtualNetworkId =>
      TfRef.attribute<num>(this, 'virtual_network_id');
}
