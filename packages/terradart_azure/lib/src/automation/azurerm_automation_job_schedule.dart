// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_job_schedule`.
const Set<String> _azurermAutomationJobScheduleSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_job_schedule`.
final class AzurermAutomationJobSchedule extends Resource {
  static const String tfType = 'azurerm_automation_job_schedule';

  AzurermAutomationJobSchedule(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? jobScheduleId,
    TfArg<Map<String, String>>? parameters,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? runOn,
    required TfArg<String> runbookName,
    required TfArg<String> scheduleName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'job_schedule_id': ?jobScheduleId,
           'parameters': ?parameters,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'run_on': ?runOn,
           'runbook_name': runbookName,
           'schedule_name': scheduleName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationJobScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationJobSchedule>`.
  RefTo<AzurermAutomationJobSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `job_schedule_id` attribute.
  TfRef<String> get jobScheduleId =>
      TfRef.attribute<String>(this, 'job_schedule_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `run_on` attribute.
  TfRef<String> get runOn => TfRef.attribute<String>(this, 'run_on');

  /// Reference to `runbook_name` attribute.
  TfRef<String> get runbookName =>
      TfRef.attribute<String>(this, 'runbook_name');

  /// Reference to `schedule_name` attribute.
  TfRef<String> get scheduleName =>
      TfRef.attribute<String>(this, 'schedule_name');
}
