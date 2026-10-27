// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_workflow`.
const Set<String> _azurermLogicAppWorkflowSensitive = <String>{};

/// Typed helper for the `access_control` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowAccessControl {
  const LogicAppWorkflowAccessControl({
    this.action,
    this.content,
    this.trigger,
    this.workflowManagement,
  });

  final LogicAppWorkflowAction? action;

  final LogicAppWorkflowContent? content;

  final LogicAppWorkflowTrigger? trigger;

  final LogicAppWorkflowManagement? workflowManagement;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.encode(),
    'content': ?content?.encode(),
    'trigger': ?trigger?.encode(),
    'workflow_management': ?workflowManagement?.encode(),
  };
}

/// Typed helper for the `access_control.action` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowAction {
  const LogicAppWorkflowAction({required this.allowedCallerIpAddressRange});

  final TfArg<List<String>> allowedCallerIpAddressRange;

  @internal
  Map<String, Object?> encode() => {
    'allowed_caller_ip_address_range': allowedCallerIpAddressRange.toTfJson(),
  };
}

/// Typed helper for the `access_control.content` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowContent {
  const LogicAppWorkflowContent({required this.allowedCallerIpAddressRange});

  final TfArg<List<String>> allowedCallerIpAddressRange;

  @internal
  Map<String, Object?> encode() => {
    'allowed_caller_ip_address_range': allowedCallerIpAddressRange.toTfJson(),
  };
}

/// Typed helper for the `access_control.trigger` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowTrigger {
  const LogicAppWorkflowTrigger({
    this.allowedCallerIpAddressRange,
    this.openAuthenticationPolicy,
  });

  final TfArg<List<String>>? allowedCallerIpAddressRange;

  final List<LogicAppWorkflowOpenAuthenticationPolicy>?
  openAuthenticationPolicy;

  @internal
  Map<String, Object?> encode() => {
    'allowed_caller_ip_address_range': ?allowedCallerIpAddressRange?.toTfJson(),
    if (openAuthenticationPolicy != null)
      'open_authentication_policy': [
        for (final e in openAuthenticationPolicy!) e.encode(),
      ],
  };
}

/// Typed helper for the `access_control.trigger.open_authentication_policy` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowOpenAuthenticationPolicy {
  const LogicAppWorkflowOpenAuthenticationPolicy({
    required this.name,
    required this.claim,
  });

  final TfArg<String> name;

  final List<LogicAppWorkflowClaim> claim;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'claim': [for (final e in claim) e.encode()],
  };
}

/// Typed helper for the `access_control.trigger.open_authentication_policy.claim` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowClaim {
  const LogicAppWorkflowClaim({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `access_control.workflow_management` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowManagement {
  const LogicAppWorkflowManagement({required this.allowedCallerIpAddressRange});

  final TfArg<List<String>> allowedCallerIpAddressRange;

  @internal
  Map<String, Object?> encode() => {
    'allowed_caller_ip_address_range': allowedCallerIpAddressRange.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_logic_app_workflow` (derived from provider schema).
@immutable
final class LogicAppWorkflowIdentity {
  const LogicAppWorkflowIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_workflow`.
final class AzurermLogicAppWorkflow extends Resource {
  static const String tfType = 'azurerm_logic_app_workflow';

  AzurermLogicAppWorkflow(
    super.localName, {
    TfArg<bool>? enabled,
    TfArg<String>? integrationServiceEnvironmentId,
    required TfArg<String> location,
    TfArg<String>? logicAppIntegrationAccountId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<Map<String, String>>? workflowParameters,
    TfArg<String>? workflowSchema,
    TfArg<String>? workflowVersion,
    LogicAppWorkflowAccessControl? accessControl,
    LogicAppWorkflowIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'integration_service_environment_id':
               ?integrationServiceEnvironmentId,
           'location': location,
           'logic_app_integration_account_id': ?logicAppIntegrationAccountId,
           'name': name,
           'parameters': ?parameters,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'workflow_parameters': ?workflowParameters,
           'workflow_schema': ?workflowSchema,
           'workflow_version': ?workflowVersion,
           if (accessControl != null)
             'access_control': TfArg.literal(accessControl.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogicAppWorkflowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppWorkflow>`.
  RefTo<AzurermLogicAppWorkflow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_endpoint` attribute.
  TfRef<String> get accessEndpoint =>
      TfRef.attribute<String>(this, 'access_endpoint');

  /// Reference to `connector_endpoint_ip_addresses` attribute.
  TfRef<List<String>> get connectorEndpointIpAddresses =>
      TfRef.attribute<List<String>>(this, 'connector_endpoint_ip_addresses');

  /// Reference to `connector_outbound_ip_addresses` attribute.
  TfRef<List<String>> get connectorOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'connector_outbound_ip_addresses');

  /// Reference to `workflow_endpoint_ip_addresses` attribute.
  TfRef<List<String>> get workflowEndpointIpAddresses =>
      TfRef.attribute<List<String>>(this, 'workflow_endpoint_ip_addresses');

  /// Reference to `workflow_outbound_ip_addresses` attribute.
  TfRef<List<String>> get workflowOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'workflow_outbound_ip_addresses');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `integration_service_environment_id` attribute.
  TfRef<String> get integrationServiceEnvironmentId =>
      TfRef.attribute<String>(this, 'integration_service_environment_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logic_app_integration_account_id` attribute.
  TfRef<String> get logicAppIntegrationAccountId =>
      TfRef.attribute<String>(this, 'logic_app_integration_account_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workflow_parameters` attribute.
  TfRef<Map<String, String>> get workflowParameters =>
      TfRef.attribute<Map<String, String>>(this, 'workflow_parameters');

  /// Reference to `workflow_schema` attribute.
  TfRef<String> get workflowSchema =>
      TfRef.attribute<String>(this, 'workflow_schema');

  /// Reference to `workflow_version` attribute.
  TfRef<String> get workflowVersion =>
      TfRef.attribute<String>(this, 'workflow_version');
}
