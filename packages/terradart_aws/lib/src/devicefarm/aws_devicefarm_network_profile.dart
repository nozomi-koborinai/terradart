// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_network_profile`.
const Set<String> _awsDevicefarmNetworkProfileSensitive = <String>{};

/// Devicefarm Network Profile enum for `type`.
enum DevicefarmNetworkProfileType implements TerraformEnum {
  curated('CURATED'),
  private('PRIVATE');

  const DevicefarmNetworkProfileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_devicefarm_network_profile`.
final class AwsDevicefarmNetworkProfile extends Resource {
  static const String tfType = 'aws_devicefarm_network_profile';

  AwsDevicefarmNetworkProfile({
    required super.localName,
    TfArg<String>? description,
    TfArg<num>? downlinkBandwidthBits,
    TfArg<num>? downlinkDelayMs,
    TfArg<num>? downlinkJitterMs,
    TfArg<num>? downlinkLossPercent,
    required TfArg<String> name,
    required TfArg<String> projectArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<DevicefarmNetworkProfileType>? type,
    TfArg<num>? uplinkBandwidthBits,
    TfArg<num>? uplinkDelayMs,
    TfArg<num>? uplinkJitterMs,
    TfArg<num>? uplinkLossPercent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'downlink_bandwidth_bits': ?downlinkBandwidthBits,
           'downlink_delay_ms': ?downlinkDelayMs,
           'downlink_jitter_ms': ?downlinkJitterMs,
           'downlink_loss_percent': ?downlinkLossPercent,
           'name': name,
           'project_arn': projectArn,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           'uplink_bandwidth_bits': ?uplinkBandwidthBits,
           'uplink_delay_ms': ?uplinkDelayMs,
           'uplink_jitter_ms': ?uplinkJitterMs,
           'uplink_loss_percent': ?uplinkLossPercent,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmNetworkProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmNetworkProfile>`.
  RefTo<AwsDevicefarmNetworkProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
