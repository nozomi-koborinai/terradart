// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_webhook`.
const Set<String> _azurermAutomationWebhookSensitive = <String>{'uri'};

/// Factory wrapper for `azurerm_automation_webhook`.
final class AzurermAutomationWebhook extends Resource {
  static const String tfType = 'azurerm_automation_webhook';

  AzurermAutomationWebhook(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<bool>? enabled,
    required TfArg<String> expiryTime,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? runOnWorkerGroup,
    required TfArg<String> runbookName,
    Sensitive<String>? uri,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'enabled': ?enabled,
           'expiry_time': expiryTime,
           'name': name,
           'parameters': ?parameters,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'run_on_worker_group': ?runOnWorkerGroup,
           'runbook_name': runbookName,
           'uri': ?uri,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationWebhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationWebhook>`.
  RefTo<AzurermAutomationWebhook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expiry_time` attribute.
  TfRef<String> get expiryTime => TfRef.attribute<String>(this, 'expiry_time');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `run_on_worker_group` attribute.
  TfRef<String> get runOnWorkerGroup =>
      TfRef.attribute<String>(this, 'run_on_worker_group');

  /// Reference to `runbook_name` attribute.
  TfRef<String> get runbookName =>
      TfRef.attribute<String>(this, 'runbook_name');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
