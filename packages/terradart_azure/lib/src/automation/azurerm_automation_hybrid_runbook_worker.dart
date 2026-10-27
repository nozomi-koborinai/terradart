// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_hybrid_runbook_worker`.
const Set<String> _azurermAutomationHybridRunbookWorkerSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_hybrid_runbook_worker`.
final class AzurermAutomationHybridRunbookWorker extends Resource {
  static const String tfType = 'azurerm_automation_hybrid_runbook_worker';

  AzurermAutomationHybridRunbookWorker(
    super.localName, {
    required TfArg<String> automationAccountName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> vmResourceId,
    required TfArg<String> workerGroupName,
    required TfArg<String> workerId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'vm_resource_id': vmResourceId,
           'worker_group_name': workerGroupName,
           'worker_id': workerId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationHybridRunbookWorkerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationHybridRunbookWorker>`.
  RefTo<AzurermAutomationHybridRunbookWorker> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip` attribute.
  TfRef<String> get ip => TfRef.attribute<String>(this, 'ip');

  /// Reference to `last_seen_date_time` attribute.
  TfRef<String> get lastSeenDateTime =>
      TfRef.attribute<String>(this, 'last_seen_date_time');

  /// Reference to `registration_date_time` attribute.
  TfRef<String> get registrationDateTime =>
      TfRef.attribute<String>(this, 'registration_date_time');

  /// Reference to `worker_name` attribute.
  TfRef<String> get workerName => TfRef.attribute<String>(this, 'worker_name');

  /// Reference to `worker_type` attribute.
  TfRef<String> get workerType => TfRef.attribute<String>(this, 'worker_type');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `vm_resource_id` attribute.
  TfRef<String> get vmResourceId =>
      TfRef.attribute<String>(this, 'vm_resource_id');

  /// Reference to `worker_group_name` attribute.
  TfRef<String> get workerGroupName =>
      TfRef.attribute<String>(this, 'worker_group_name');

  /// Reference to `worker_id` attribute.
  TfRef<String> get workerId => TfRef.attribute<String>(this, 'worker_id');
}
