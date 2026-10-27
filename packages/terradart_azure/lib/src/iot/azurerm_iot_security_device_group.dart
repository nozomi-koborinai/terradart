// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_iot_security_device_group`.
const Set<String> _azurermIotSecurityDeviceGroupSensitive = <String>{};

/// Typed helper for the `allow_rule` block of
/// `azurerm_iot_security_device_group` (derived from provider schema).
@immutable
final class IotSecurityDeviceGroupAllowRule {
  const IotSecurityDeviceGroupAllowRule({
    this.connectionFromIpsNotAllowed,
    this.connectionToIpsNotAllowed,
    this.localUsersNotAllowed,
    this.processesNotAllowed,
  });

  final TfArg<List<String>>? connectionFromIpsNotAllowed;

  final TfArg<List<String>>? connectionToIpsNotAllowed;

  final TfArg<List<String>>? localUsersNotAllowed;

  final TfArg<List<String>>? processesNotAllowed;

  @internal
  Map<String, Object?> encode() => {
    'connection_from_ips_not_allowed': ?connectionFromIpsNotAllowed?.toTfJson(),
    'connection_to_ips_not_allowed': ?connectionToIpsNotAllowed?.toTfJson(),
    'local_users_not_allowed': ?localUsersNotAllowed?.toTfJson(),
    'processes_not_allowed': ?processesNotAllowed?.toTfJson(),
  };
}

/// Typed helper for the `range_rule` block of
/// `azurerm_iot_security_device_group` (derived from provider schema).
@immutable
final class IotSecurityDeviceGroupRangeRule {
  const IotSecurityDeviceGroupRangeRule({
    required this.duration,
    required this.max,
    required this.min,
    required this.type,
  });

  final TfArg<String> duration;

  final TfArg<num> max;

  final TfArg<num> min;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'max': max.toTfJson(),
    'min': min.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iot_security_device_group`.
final class AzurermIotSecurityDeviceGroup extends Resource {
  static const String tfType = 'azurerm_iot_security_device_group';

  AzurermIotSecurityDeviceGroup(
    super.localName, {
    required TfArg<String> iothubId,
    required TfArg<String> name,
    IotSecurityDeviceGroupAllowRule? allowRule,
    List<IotSecurityDeviceGroupRangeRule>? rangeRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'iothub_id': iothubId,
           'name': name,
           if (allowRule != null)
             'allow_rule': TfArg.literal(allowRule.encode()),
           if (rangeRule != null)
             'range_rule': TfArg.literal([
               for (final e in rangeRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIotSecurityDeviceGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIotSecurityDeviceGroup>`.
  RefTo<AzurermIotSecurityDeviceGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');
}
