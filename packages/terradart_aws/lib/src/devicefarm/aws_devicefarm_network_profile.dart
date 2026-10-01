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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `downlink_bandwidth_bits` attribute.
  TfRef<num> get downlinkBandwidthBits =>
      TfRef.attribute<num>(this, 'downlink_bandwidth_bits');

  /// Reference to `downlink_delay_ms` attribute.
  TfRef<num> get downlinkDelayMs =>
      TfRef.attribute<num>(this, 'downlink_delay_ms');

  /// Reference to `downlink_jitter_ms` attribute.
  TfRef<num> get downlinkJitterMs =>
      TfRef.attribute<num>(this, 'downlink_jitter_ms');

  /// Reference to `downlink_loss_percent` attribute.
  TfRef<num> get downlinkLossPercent =>
      TfRef.attribute<num>(this, 'downlink_loss_percent');

  /// Reference to `project_arn` attribute.
  TfRef<String> get projectArn => TfRef.attribute<String>(this, 'project_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `uplink_bandwidth_bits` attribute.
  TfRef<num> get uplinkBandwidthBits =>
      TfRef.attribute<num>(this, 'uplink_bandwidth_bits');

  /// Reference to `uplink_delay_ms` attribute.
  TfRef<num> get uplinkDelayMs => TfRef.attribute<num>(this, 'uplink_delay_ms');

  /// Reference to `uplink_jitter_ms` attribute.
  TfRef<num> get uplinkJitterMs =>
      TfRef.attribute<num>(this, 'uplink_jitter_ms');

  /// Reference to `uplink_loss_percent` attribute.
  TfRef<num> get uplinkLossPercent =>
      TfRef.attribute<num>(this, 'uplink_loss_percent');
}
