// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_network_profile`.
const Set<String> _awsDevicefarmNetworkProfileSensitive = <String>{};

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
    TfArg<String>? type,
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
           if (description != null) 'description': description,
           if (downlinkBandwidthBits != null)
             'downlink_bandwidth_bits': downlinkBandwidthBits,
           if (downlinkDelayMs != null) 'downlink_delay_ms': downlinkDelayMs,
           if (downlinkJitterMs != null) 'downlink_jitter_ms': downlinkJitterMs,
           if (downlinkLossPercent != null)
             'downlink_loss_percent': downlinkLossPercent,
           'name': name,
           'project_arn': projectArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (uplinkBandwidthBits != null)
             'uplink_bandwidth_bits': uplinkBandwidthBits,
           if (uplinkDelayMs != null) 'uplink_delay_ms': uplinkDelayMs,
           if (uplinkJitterMs != null) 'uplink_jitter_ms': uplinkJitterMs,
           if (uplinkLossPercent != null)
             'uplink_loss_percent': uplinkLossPercent,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmNetworkProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
