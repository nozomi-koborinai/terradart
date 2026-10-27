// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_test_global_vm_shutdown_schedule`.
const Set<String> _azurermDevTestGlobalVmShutdownScheduleSensitive = <String>{};

/// Typed helper for the `notification_settings` block of
/// `azurerm_dev_test_global_vm_shutdown_schedule` (derived from provider schema).
@immutable
final class DevTestGlobalVmShutdownScheduleNotificationSettings {
  const DevTestGlobalVmShutdownScheduleNotificationSettings({
    this.email,
    required this.enabled,
    this.timeInMinutes,
    this.webhookUrl,
  });

  final TfArg<String>? email;

  final TfArg<bool> enabled;

  final TfArg<num>? timeInMinutes;

  final TfArg<String>? webhookUrl;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'time_in_minutes': ?timeInMinutes?.toTfJson(),
    'webhook_url': ?webhookUrl?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dev_test_global_vm_shutdown_schedule`.
final class AzurermDevTestGlobalVmShutdownSchedule extends Resource {
  static const String tfType = 'azurerm_dev_test_global_vm_shutdown_schedule';

  AzurermDevTestGlobalVmShutdownSchedule(
    super.localName, {
    required TfArg<String> dailyRecurrenceTime,
    TfArg<bool>? enabled,
    required TfArg<String> location,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> timezone,
    required TfArg<String> virtualMachineId,
    required DevTestGlobalVmShutdownScheduleNotificationSettings
    notificationSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'daily_recurrence_time': dailyRecurrenceTime,
           'enabled': ?enabled,
           'location': location,
           'tags': ?tags,
           'timezone': timezone,
           'virtual_machine_id': virtualMachineId,
           'notification_settings': TfArg.literal(
             notificationSettings.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDevTestGlobalVmShutdownScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevTestGlobalVmShutdownSchedule>`.
  RefTo<AzurermDevTestGlobalVmShutdownSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `daily_recurrence_time` attribute.
  TfRef<String> get dailyRecurrenceTime =>
      TfRef.attribute<String>(this, 'daily_recurrence_time');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');
}
