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

  final TfArg<DevicefarmDevicePoolAttribute>? attribute;

  final TfArg<DevicefarmDevicePoolOperator>? operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum DevicefarmDevicePoolAttribute implements TerraformEnum {
  arn('ARN'),
  platform('PLATFORM'),
  formFactor('FORM_FACTOR'),
  manufacturer('MANUFACTURER'),
  remoteAccessEnabled('REMOTE_ACCESS_ENABLED'),
  remoteDebugEnabled('REMOTE_DEBUG_ENABLED'),
  appiumVersion('APPIUM_VERSION'),
  instanceArn('INSTANCE_ARN'),
  instanceLabels('INSTANCE_LABELS'),
  fleetType('FLEET_TYPE'),
  osVersion('OS_VERSION'),
  model('MODEL'),
  availability('AVAILABILITY');

  const DevicefarmDevicePoolAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operator` — derived from the provider schema description.
enum DevicefarmDevicePoolOperator implements TerraformEnum {
  equals('EQUALS'),
  lessThan('LESS_THAN'),
  lessThanOrEquals('LESS_THAN_OR_EQUALS'),
  greaterThan('GREATER_THAN'),
  greaterThanOrEquals('GREATER_THAN_OR_EQUALS'),
  inCase('IN'),
  notIn('NOT_IN'),
  contains('CONTAINS');

  const DevicefarmDevicePoolOperator(this.terraformValue);
  @override
  final String terraformValue;
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
           'description': ?description,
           'max_devices': ?maxDevices,
           'name': name,
           'project_arn': projectArn,
           'region': ?region,
           'tags': ?tags,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmDevicePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmDevicePool>`.
  RefTo<AwsDevicefarmDevicePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `max_devices` attribute.
  TfRef<num> get maxDevicesRef => TfRef.attribute<num>(this, 'max_devices');

  /// Reference to `project_arn` attribute.
  TfRef<String> get projectArnRef =>
      TfRef.attribute<String>(this, 'project_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
