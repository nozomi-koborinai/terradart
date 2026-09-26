// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_device_pool`.
const Set<String> _awsDevicefarmDevicePoolSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_devicefarm_device_pool` (derived from provider schema).
@immutable
final class DevicefarmDevicePoolRule {
  const DevicefarmDevicePoolRule({this.attribute, this.operator, this.value});

  final TfArg<String>? attribute;

  final TfArg<String>? operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (operator != null) 'operator': operator!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_devicefarm_device_pool`.
final class AwsDevicefarmDevicePool extends Resource {
  static const String tfType = 'aws_devicefarm_device_pool';

  AwsDevicefarmDevicePool({
    required super.localName,
    TfArg<String>? description,
    TfArg<num>? maxDevices,
    required TfArg<String> name,
    required TfArg<String> projectArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<DevicefarmDevicePoolRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (maxDevices != null) 'max_devices': maxDevices,
           'name': name,
           'project_arn': projectArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmDevicePoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
