// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint`.
const Set<String>
_azurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSensitive =
    <String>{};

/// Machine Learning Workspace Network Outbound Rule Private Endpoint Sub Resource enum for `sub_resource_target`.
extension type const MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const account =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('account'),
      );
  static const vault =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('vault'),
      );
  static const amlworkspace =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('amlworkspace'),
      );
  static const blob =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('blob'),
      );
  static const table =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('table'),
      );
  static const queue =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('queue'),
      );
  static const file =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('file'),
      );
  static const web =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('web'),
      );
  static const dfs =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('dfs'),
      );
  static const rediscache =
      MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget._(
        TfArgLiteral('redisCache'),
      );

  static const List<
    MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget
  >
  values = [
    account,
    vault,
    amlworkspace,
    blob,
    table,
    queue,
    file,
    web,
    dfs,
    rediscache,
  ];
}

/// Factory wrapper for `azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint`.
final class AzurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpoint
    extends Resource {
  static const String tfType =
      'azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint';

  AzurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serviceResourceId,
    TfArg<bool>? sparkEnabled,
    required MachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSubResourceTarget
    subResourceTarget,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'service_resource_id': serviceResourceId,
           'spark_enabled': ?sparkEnabled,
           'sub_resource_target': subResourceTarget,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpoint>`.
  RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpoint>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_resource_id` attribute.
  TfRef<String> get serviceResourceId =>
      TfRef.attribute<String>(this, 'service_resource_id');

  /// Reference to `spark_enabled` attribute.
  TfRef<bool> get sparkEnabled => TfRef.attribute<bool>(this, 'spark_enabled');

  /// Reference to `sub_resource_target` attribute.
  TfRef<String> get subResourceTarget =>
      TfRef.attribute<String>(this, 'sub_resource_target');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
