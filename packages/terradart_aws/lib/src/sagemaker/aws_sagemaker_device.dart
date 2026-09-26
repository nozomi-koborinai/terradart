// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_device`.
const Set<String> _awsSagemakerDeviceSensitive = <String>{};

/// Typed helper for the `device` block of
/// `aws_sagemaker_device` (derived from provider schema).
@immutable
final class SagemakerDeviceDevice {
  const SagemakerDeviceDevice({
    this.description,
    required this.deviceName,
    this.iotThingName,
  });

  final TfArg<String>? description;

  final TfArg<String> deviceName;

  final TfArg<String>? iotThingName;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (iotThingName != null) 'iot_thing_name': iotThingName!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_device`.
final class AwsSagemakerDevice extends Resource {
  static const String tfType = 'aws_sagemaker_device';

  AwsSagemakerDevice({
    required super.localName,
    required TfArg<String> deviceFleetName,
    TfArg<String>? region,
    required SagemakerDeviceDevice device,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_fleet_name': deviceFleetName,
           if (region != null) 'region': region,
           'device': TfArg.literal(device.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerDeviceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
