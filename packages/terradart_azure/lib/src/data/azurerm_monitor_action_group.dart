// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../monitor/azurerm_monitor_action_group.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_action_group`.
const Set<String> _azurermMonitorActionGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_action_group`.
final class DataAzurermMonitorActionGroup extends Data {
  static const String tfType = 'azurerm_monitor_action_group';

  DataAzurermMonitorActionGroup(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorActionGroupSensitive;

  /// A reference to the `azurerm_monitor_action_group` this data source reads, for
  /// arguments typed `RefTo<AzurermMonitorActionGroup>`.
  RefTo<AzurermMonitorActionGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arm_role_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get armRoleReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'arm_role_receiver');

  /// Reference to `automation_runbook_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get automationRunbookReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'automation_runbook_receiver',
      );

  /// Reference to `azure_app_push_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get azureAppPushReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_app_push_receiver',
      );

  /// Reference to `azure_function_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get azureFunctionReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_function_receiver',
      );

  /// Reference to `email_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get emailReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'email_receiver');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_hub_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get eventHubReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'event_hub_receiver');

  /// Reference to `itsm_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get itsmReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'itsm_receiver');

  /// Reference to `logic_app_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get logicAppReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logic_app_receiver');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `sms_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get smsReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sms_receiver');

  /// Reference to `voice_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get voiceReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'voice_receiver');

  /// Reference to `webhook_receiver` attribute.
  TfRef<List<Map<String, Object?>>> get webhookReceiver =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'webhook_receiver');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
