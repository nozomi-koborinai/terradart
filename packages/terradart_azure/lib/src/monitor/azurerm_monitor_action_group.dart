// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_action_group`.
const Set<String> _azurermMonitorActionGroupSensitive = <String>{};

/// Typed helper for the `arm_role_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupArmRoleReceiver {
  const MonitorActionGroupArmRoleReceiver({
    required this.name,
    required this.roleId,
    this.useCommonAlertSchema,
  });

  final TfArg<String> name;

  final TfArg<String> roleId;

  final TfArg<bool>? useCommonAlertSchema;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'role_id': roleId.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
  };
}

/// Typed helper for the `automation_runbook_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupAutomationRunbookReceiver {
  const MonitorActionGroupAutomationRunbookReceiver({
    required this.automationAccountId,
    required this.isGlobalRunbook,
    required this.name,
    required this.runbookName,
    required this.serviceUri,
    this.useCommonAlertSchema,
    required this.webhookResourceId,
  });

  final TfArg<String> automationAccountId;

  final TfArg<bool> isGlobalRunbook;

  final TfArg<String> name;

  final TfArg<String> runbookName;

  final TfArg<String> serviceUri;

  final TfArg<bool>? useCommonAlertSchema;

  final TfArg<String> webhookResourceId;

  @internal
  Map<String, Object?> encode() => {
    'automation_account_id': automationAccountId.toTfJson(),
    'is_global_runbook': isGlobalRunbook.toTfJson(),
    'name': name.toTfJson(),
    'runbook_name': runbookName.toTfJson(),
    'service_uri': serviceUri.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
    'webhook_resource_id': webhookResourceId.toTfJson(),
  };
}

/// Typed helper for the `azure_app_push_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupAzureAppPushReceiver {
  const MonitorActionGroupAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  final TfArg<String> emailAddress;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'email_address': emailAddress.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `azure_function_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupAzureFunctionReceiver {
  const MonitorActionGroupAzureFunctionReceiver({
    required this.functionAppResourceId,
    required this.functionName,
    required this.httpTriggerUrl,
    required this.name,
    this.useCommonAlertSchema,
  });

  final TfArg<String> functionAppResourceId;

  final TfArg<String> functionName;

  final TfArg<String> httpTriggerUrl;

  final TfArg<String> name;

  final TfArg<bool>? useCommonAlertSchema;

  @internal
  Map<String, Object?> encode() => {
    'function_app_resource_id': functionAppResourceId.toTfJson(),
    'function_name': functionName.toTfJson(),
    'http_trigger_url': httpTriggerUrl.toTfJson(),
    'name': name.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
  };
}

/// Typed helper for the `email_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupEmailReceiver {
  const MonitorActionGroupEmailReceiver({
    required this.emailAddress,
    required this.name,
    this.useCommonAlertSchema,
  });

  final TfArg<String> emailAddress;

  final TfArg<String> name;

  final TfArg<bool>? useCommonAlertSchema;

  @internal
  Map<String, Object?> encode() => {
    'email_address': emailAddress.toTfJson(),
    'name': name.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
  };
}

/// Typed helper for the `event_hub_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupEventHubReceiver {
  const MonitorActionGroupEventHubReceiver({
    required this.eventHubName,
    required this.eventHubNamespace,
    required this.name,
    this.subscriptionId,
    this.tenantId,
    this.useCommonAlertSchema,
  });

  final TfArg<String> eventHubName;

  final TfArg<String> eventHubNamespace;

  final TfArg<String> name;

  final TfArg<String>? subscriptionId;

  final TfArg<String>? tenantId;

  final TfArg<bool>? useCommonAlertSchema;

  @internal
  Map<String, Object?> encode() => {
    'event_hub_name': eventHubName.toTfJson(),
    'event_hub_namespace': eventHubNamespace.toTfJson(),
    'name': name.toTfJson(),
    'subscription_id': ?subscriptionId?.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
  };
}

/// Typed helper for the `itsm_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupItsmReceiver {
  const MonitorActionGroupItsmReceiver({
    required this.connectionId,
    required this.name,
    required this.region,
    required this.ticketConfiguration,
    required this.workspaceId,
  });

  final TfArg<String> connectionId;

  final TfArg<String> name;

  final TfArg<String> region;

  final TfArg<String> ticketConfiguration;

  final TfArg<String> workspaceId;

  @internal
  Map<String, Object?> encode() => {
    'connection_id': connectionId.toTfJson(),
    'name': name.toTfJson(),
    'region': region.toTfJson(),
    'ticket_configuration': ticketConfiguration.toTfJson(),
    'workspace_id': workspaceId.toTfJson(),
  };
}

/// Typed helper for the `logic_app_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupLogicAppReceiver {
  const MonitorActionGroupLogicAppReceiver({
    required this.callbackUrl,
    required this.name,
    required this.resourceId,
    this.useCommonAlertSchema,
  });

  final TfArg<String> callbackUrl;

  final TfArg<String> name;

  final TfArg<String> resourceId;

  final TfArg<bool>? useCommonAlertSchema;

  @internal
  Map<String, Object?> encode() => {
    'callback_url': callbackUrl.toTfJson(),
    'name': name.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
  };
}

/// Typed helper for the `sms_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupSmsReceiver {
  const MonitorActionGroupSmsReceiver({
    required this.countryCode,
    required this.name,
    required this.phoneNumber,
  });

  final TfArg<String> countryCode;

  final TfArg<String> name;

  final TfArg<String> phoneNumber;

  @internal
  Map<String, Object?> encode() => {
    'country_code': countryCode.toTfJson(),
    'name': name.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
  };
}

/// Typed helper for the `voice_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupVoiceReceiver {
  const MonitorActionGroupVoiceReceiver({
    required this.countryCode,
    required this.name,
    required this.phoneNumber,
  });

  final TfArg<String> countryCode;

  final TfArg<String> name;

  final TfArg<String> phoneNumber;

  @internal
  Map<String, Object?> encode() => {
    'country_code': countryCode.toTfJson(),
    'name': name.toTfJson(),
    'phone_number': phoneNumber.toTfJson(),
  };
}

/// Typed helper for the `webhook_receiver` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupWebhookReceiver {
  const MonitorActionGroupWebhookReceiver({
    required this.name,
    required this.serviceUri,
    this.useCommonAlertSchema,
    this.aadAuth,
  });

  final TfArg<String> name;

  final TfArg<String> serviceUri;

  final TfArg<bool>? useCommonAlertSchema;

  final MonitorActionGroupAadAuth? aadAuth;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'service_uri': serviceUri.toTfJson(),
    'use_common_alert_schema': ?useCommonAlertSchema?.toTfJson(),
    'aad_auth': ?aadAuth?.encode(),
  };
}

/// Typed helper for the `webhook_receiver.aad_auth` block of
/// `azurerm_monitor_action_group` (derived from provider schema).
@immutable
final class MonitorActionGroupAadAuth {
  const MonitorActionGroupAadAuth({
    this.identifierUri,
    required this.objectId,
    this.tenantId,
  });

  final TfArg<String>? identifierUri;

  final TfArg<String> objectId;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'identifier_uri': ?identifierUri?.toTfJson(),
    'object_id': objectId.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_monitor_action_group`.
final class AzurermMonitorActionGroup extends Resource {
  static const String tfType = 'azurerm_monitor_action_group';

  AzurermMonitorActionGroup(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> shortName,
    TfArg<Map<String, String>>? tags,
    List<MonitorActionGroupArmRoleReceiver>? armRoleReceiver,
    List<MonitorActionGroupAutomationRunbookReceiver>?
    automationRunbookReceiver,
    List<MonitorActionGroupAzureAppPushReceiver>? azureAppPushReceiver,
    List<MonitorActionGroupAzureFunctionReceiver>? azureFunctionReceiver,
    List<MonitorActionGroupEmailReceiver>? emailReceiver,
    List<MonitorActionGroupEventHubReceiver>? eventHubReceiver,
    List<MonitorActionGroupItsmReceiver>? itsmReceiver,
    List<MonitorActionGroupLogicAppReceiver>? logicAppReceiver,
    List<MonitorActionGroupSmsReceiver>? smsReceiver,
    List<MonitorActionGroupVoiceReceiver>? voiceReceiver,
    List<MonitorActionGroupWebhookReceiver>? webhookReceiver,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'location': ?location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'short_name': shortName,
           'tags': ?tags,
           if (armRoleReceiver != null)
             'arm_role_receiver': TfArg.literal([
               for (final e in armRoleReceiver) e.encode(),
             ]),
           if (automationRunbookReceiver != null)
             'automation_runbook_receiver': TfArg.literal([
               for (final e in automationRunbookReceiver) e.encode(),
             ]),
           if (azureAppPushReceiver != null)
             'azure_app_push_receiver': TfArg.literal([
               for (final e in azureAppPushReceiver) e.encode(),
             ]),
           if (azureFunctionReceiver != null)
             'azure_function_receiver': TfArg.literal([
               for (final e in azureFunctionReceiver) e.encode(),
             ]),
           if (emailReceiver != null)
             'email_receiver': TfArg.literal([
               for (final e in emailReceiver) e.encode(),
             ]),
           if (eventHubReceiver != null)
             'event_hub_receiver': TfArg.literal([
               for (final e in eventHubReceiver) e.encode(),
             ]),
           if (itsmReceiver != null)
             'itsm_receiver': TfArg.literal([
               for (final e in itsmReceiver) e.encode(),
             ]),
           if (logicAppReceiver != null)
             'logic_app_receiver': TfArg.literal([
               for (final e in logicAppReceiver) e.encode(),
             ]),
           if (smsReceiver != null)
             'sms_receiver': TfArg.literal([
               for (final e in smsReceiver) e.encode(),
             ]),
           if (voiceReceiver != null)
             'voice_receiver': TfArg.literal([
               for (final e in voiceReceiver) e.encode(),
             ]),
           if (webhookReceiver != null)
             'webhook_receiver': TfArg.literal([
               for (final e in webhookReceiver) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorActionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorActionGroup>`.
  RefTo<AzurermMonitorActionGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
