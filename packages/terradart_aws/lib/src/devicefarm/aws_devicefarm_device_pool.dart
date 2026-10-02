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

  final DevicefarmDevicePoolAttribute? attribute;

  final DevicefarmDevicePoolOperator? operator;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'attribute': ?attribute?.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
extension type const DevicefarmDevicePoolAttribute._(TfArg<String> _)
    implements TfArg<String> {
  DevicefarmDevicePoolAttribute.variable(String name)
    : this._(TfArg.variable(name));
  DevicefarmDevicePoolAttribute.expression(String template)
    : this._(TfArg.expression(template));
  const DevicefarmDevicePoolAttribute.arg(TfArg<String> arg) : this._(arg);

  static const arn = DevicefarmDevicePoolAttribute._(TfArgLiteral('ARN'));
  static const platform = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('PLATFORM'),
  );
  static const formFactor = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('FORM_FACTOR'),
  );
  static const manufacturer = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('MANUFACTURER'),
  );
  static const remoteAccessEnabled = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('REMOTE_ACCESS_ENABLED'),
  );
  static const remoteDebugEnabled = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('REMOTE_DEBUG_ENABLED'),
  );
  static const appiumVersion = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('APPIUM_VERSION'),
  );
  static const instanceArn = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('INSTANCE_ARN'),
  );
  static const instanceLabels = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('INSTANCE_LABELS'),
  );
  static const fleetType = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('FLEET_TYPE'),
  );
  static const osVersion = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('OS_VERSION'),
  );
  static const model = DevicefarmDevicePoolAttribute._(TfArgLiteral('MODEL'));
  static const availability = DevicefarmDevicePoolAttribute._(
    TfArgLiteral('AVAILABILITY'),
  );

  static const List<DevicefarmDevicePoolAttribute> values = [
    arn,
    platform,
    formFactor,
    manufacturer,
    remoteAccessEnabled,
    remoteDebugEnabled,
    appiumVersion,
    instanceArn,
    instanceLabels,
    fleetType,
    osVersion,
    model,
    availability,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const DevicefarmDevicePoolOperator._(TfArg<String> _)
    implements TfArg<String> {
  DevicefarmDevicePoolOperator.variable(String name)
    : this._(TfArg.variable(name));
  DevicefarmDevicePoolOperator.expression(String template)
    : this._(TfArg.expression(template));
  const DevicefarmDevicePoolOperator.arg(TfArg<String> arg) : this._(arg);

  static const equals = DevicefarmDevicePoolOperator._(TfArgLiteral('EQUALS'));
  static const lessThan = DevicefarmDevicePoolOperator._(
    TfArgLiteral('LESS_THAN'),
  );
  static const lessThanOrEquals = DevicefarmDevicePoolOperator._(
    TfArgLiteral('LESS_THAN_OR_EQUALS'),
  );
  static const greaterThan = DevicefarmDevicePoolOperator._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const greaterThanOrEquals = DevicefarmDevicePoolOperator._(
    TfArgLiteral('GREATER_THAN_OR_EQUALS'),
  );
  static const inCase = DevicefarmDevicePoolOperator._(TfArgLiteral('IN'));
  static const notIn = DevicefarmDevicePoolOperator._(TfArgLiteral('NOT_IN'));
  static const contains = DevicefarmDevicePoolOperator._(
    TfArgLiteral('CONTAINS'),
  );

  static const List<DevicefarmDevicePoolOperator> values = [
    equals,
    lessThan,
    lessThanOrEquals,
    greaterThan,
    greaterThanOrEquals,
    inCase,
    notIn,
    contains,
  ];
}

/// Factory wrapper for `aws_devicefarm_device_pool`.
final class AwsDevicefarmDevicePool extends Resource {
  static const String tfType = 'aws_devicefarm_device_pool';

  AwsDevicefarmDevicePool(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_devices` attribute.
  TfRef<num> get maxDevices => TfRef.attribute<num>(this, 'max_devices');

  /// Reference to `project_arn` attribute.
  TfRef<String> get projectArn => TfRef.attribute<String>(this, 'project_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
