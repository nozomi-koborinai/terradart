// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_registry_task_schedule_run_now`.
const Set<String> _azurermContainerRegistryTaskScheduleRunNowSensitive =
    <String>{};

/// Factory wrapper for `azurerm_container_registry_task_schedule_run_now`.
final class AzurermContainerRegistryTaskScheduleRunNow extends Resource {
  static const String tfType =
      'azurerm_container_registry_task_schedule_run_now';

  AzurermContainerRegistryTaskScheduleRunNow(
    super.localName, {
    required TfArg<String> containerRegistryTaskId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'container_registry_task_id': containerRegistryTaskId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryTaskScheduleRunNowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryTaskScheduleRunNow>`.
  RefTo<AzurermContainerRegistryTaskScheduleRunNow> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_task_id` attribute.
  TfRef<String> get containerRegistryTaskId =>
      TfRef.attribute<String>(this, 'container_registry_task_id');
}
