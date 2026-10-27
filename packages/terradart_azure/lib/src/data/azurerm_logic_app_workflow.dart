// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../logic/azurerm_logic_app_workflow.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_workflow`.
const Set<String> _azurermLogicAppWorkflowSensitive = <String>{};

/// Factory wrapper for `azurerm_logic_app_workflow`.
final class DataAzurermLogicAppWorkflow extends Data {
  static const String tfType = 'azurerm_logic_app_workflow';

  DataAzurermLogicAppWorkflow(
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
  Set<String> get sensitiveFields => _azurermLogicAppWorkflowSensitive;

  /// A reference to the `azurerm_logic_app_workflow` this data source reads, for
  /// arguments typed `RefTo<AzurermLogicAppWorkflow>`.
  RefTo<AzurermLogicAppWorkflow> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logic_app_integration_account_id` attribute.
  TfRef<String> get logicAppIntegrationAccountId =>
      TfRef.attribute<String>(this, 'logic_app_integration_account_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workflow_endpoint_ip_addresses` attribute.
  TfRef<List<String>> get workflowEndpointIpAddresses =>
      TfRef.attribute<List<String>>(this, 'workflow_endpoint_ip_addresses');

  /// Reference to `workflow_outbound_ip_addresses` attribute.
  TfRef<List<String>> get workflowOutboundIpAddresses =>
      TfRef.attribute<List<String>>(this, 'workflow_outbound_ip_addresses');

  /// Reference to `workflow_schema` attribute.
  TfRef<String> get workflowSchema =>
      TfRef.attribute<String>(this, 'workflow_schema');

  /// Reference to `workflow_version` attribute.
  TfRef<String> get workflowVersion =>
      TfRef.attribute<String>(this, 'workflow_version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
