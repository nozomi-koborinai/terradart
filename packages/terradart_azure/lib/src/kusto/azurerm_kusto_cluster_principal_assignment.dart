// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_cluster_principal_assignment`.
const Set<String> _azurermKustoClusterPrincipalAssignmentSensitive = <String>{};

/// Kusto Cluster Principal Assignment Principal enum for `principal_type`.
extension type const KustoClusterPrincipalAssignmentPrincipalType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoClusterPrincipalAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  KustoClusterPrincipalAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterPrincipalAssignmentPrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const app = KustoClusterPrincipalAssignmentPrincipalType._(
    TfArgLiteral('App'),
  );
  static const group = KustoClusterPrincipalAssignmentPrincipalType._(
    TfArgLiteral('Group'),
  );
  static const user = KustoClusterPrincipalAssignmentPrincipalType._(
    TfArgLiteral('User'),
  );

  static const List<KustoClusterPrincipalAssignmentPrincipalType> values = [
    app,
    group,
    user,
  ];
}

/// Kusto Cluster Principal Assignment enum for `role`.
extension type const KustoClusterPrincipalAssignmentRole._(TfArg<String> _)
    implements TfArg<String> {
  KustoClusterPrincipalAssignmentRole.variable(String name)
    : this._(TfArg.variable(name));
  KustoClusterPrincipalAssignmentRole.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterPrincipalAssignmentRole.arg(TfArg<String> arg)
    : this._(arg);

  static const alldatabasesadmin = KustoClusterPrincipalAssignmentRole._(
    TfArgLiteral('AllDatabasesAdmin'),
  );
  static const alldatabasesmonitor = KustoClusterPrincipalAssignmentRole._(
    TfArgLiteral('AllDatabasesMonitor'),
  );
  static const alldatabasesviewer = KustoClusterPrincipalAssignmentRole._(
    TfArgLiteral('AllDatabasesViewer'),
  );

  static const List<KustoClusterPrincipalAssignmentRole> values = [
    alldatabasesadmin,
    alldatabasesmonitor,
    alldatabasesviewer,
  ];
}

/// Factory wrapper for `azurerm_kusto_cluster_principal_assignment`.
final class AzurermKustoClusterPrincipalAssignment extends Resource {
  static const String tfType = 'azurerm_kusto_cluster_principal_assignment';

  AzurermKustoClusterPrincipalAssignment(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> name,
    required TfArg<String> principalId,
    required KustoClusterPrincipalAssignmentPrincipalType principalType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required KustoClusterPrincipalAssignmentRole role,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'name': name,
           'principal_id': principalId,
           'principal_type': principalType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'role': role,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoClusterPrincipalAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoClusterPrincipalAssignment>`.
  RefTo<AzurermKustoClusterPrincipalAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_name` attribute.
  TfRef<String> get principalName =>
      TfRef.attribute<String>(this, 'principal_name');

  /// Reference to `tenant_name` attribute.
  TfRef<String> get tenantName => TfRef.attribute<String>(this, 'tenant_name');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
