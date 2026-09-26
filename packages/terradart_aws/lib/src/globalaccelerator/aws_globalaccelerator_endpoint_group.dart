// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_endpoint_group`.
const Set<String> _awsGlobalacceleratorEndpointGroupSensitive = <String>{};

/// Typed helper for the `endpoint_configuration` block of
/// `aws_globalaccelerator_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorEndpointGroupEndpointConfiguration {
  const GlobalacceleratorEndpointGroupEndpointConfiguration({
    this.attachmentArn,
    this.clientIpPreservationEnabled,
    this.endpointId,
    this.weight,
  });

  final TfArg<String>? attachmentArn;

  final TfArg<bool>? clientIpPreservationEnabled;

  final TfArg<String>? endpointId;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (attachmentArn != null) 'attachment_arn': attachmentArn!.toTfJson(),
    if (clientIpPreservationEnabled != null)
      'client_ip_preservation_enabled': clientIpPreservationEnabled!.toTfJson(),
    if (endpointId != null) 'endpoint_id': endpointId!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `port_override` block of
/// `aws_globalaccelerator_endpoint_group` (derived from provider schema).
@immutable
final class GlobalacceleratorEndpointGroupPortOverride {
  const GlobalacceleratorEndpointGroupPortOverride({
    required this.endpointPort,
    required this.listenerPort,
  });

  final TfArg<num> endpointPort;

  final TfArg<num> listenerPort;

  Map<String, Object?> encode() => {
    'endpoint_port': endpointPort.toTfJson(),
    'listener_port': listenerPort.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_endpoint_group`.
final class AwsGlobalacceleratorEndpointGroup extends Resource {
  static const String tfType = 'aws_globalaccelerator_endpoint_group';

  AwsGlobalacceleratorEndpointGroup({
    required super.localName,
    TfArg<String>? endpointGroupRegion,
    TfArg<num>? healthCheckIntervalSeconds,
    TfArg<String>? healthCheckPath,
    TfArg<num>? healthCheckPort,
    TfArg<String>? healthCheckProtocol,
    required TfArg<String> listenerArn,
    TfArg<num>? thresholdCount,
    TfArg<num>? trafficDialPercentage,
    List<GlobalacceleratorEndpointGroupEndpointConfiguration>?
    endpointConfiguration,
    List<GlobalacceleratorEndpointGroupPortOverride>? portOverride,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (endpointGroupRegion != null)
             'endpoint_group_region': endpointGroupRegion,
           if (healthCheckIntervalSeconds != null)
             'health_check_interval_seconds': healthCheckIntervalSeconds,
           if (healthCheckPath != null) 'health_check_path': healthCheckPath,
           if (healthCheckPort != null) 'health_check_port': healthCheckPort,
           if (healthCheckProtocol != null)
             'health_check_protocol': healthCheckProtocol,
           'listener_arn': listenerArn,
           if (thresholdCount != null) 'threshold_count': thresholdCount,
           if (trafficDialPercentage != null)
             'traffic_dial_percentage': trafficDialPercentage,
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal([
               for (final e in endpointConfiguration) e.encode(),
             ]),
           if (portOverride != null)
             'port_override': TfArg.literal([
               for (final e in portOverride) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlobalacceleratorEndpointGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
