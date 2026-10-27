// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_database_principal_assignment`.
const Set<String> _azurermKustoDatabasePrincipalAssignmentSensitive =
    <String>{};

/// Kusto Database Principal Assignment Principal enum for `principal_type`.
extension type const KustoDatabasePrincipalAssignmentPrincipalType._(
  TfArg<String> _
) implements TfArg<String> {
  KustoDatabasePrincipalAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  KustoDatabasePrincipalAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoDatabasePrincipalAssignmentPrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const app = KustoDatabasePrincipalAssignmentPrincipalType._(
    TfArgLiteral('App'),
  );
  static const group = KustoDatabasePrincipalAssignmentPrincipalType._(
    TfArgLiteral('Group'),
  );
  static const user = KustoDatabasePrincipalAssignmentPrincipalType._(
    TfArgLiteral('User'),
  );

  static const List<KustoDatabasePrincipalAssignmentPrincipalType> values = [
    app,
    group,
    user,
  ];
}

/// Kusto Database Principal Assignment enum for `role`.
extension type const KustoDatabasePrincipalAssignmentRole._(TfArg<String> _)
    implements TfArg<String> {
  KustoDatabasePrincipalAssignmentRole.variable(String name)
    : this._(TfArg.variable(name));
  KustoDatabasePrincipalAssignmentRole.expression(String template)
    : this._(TfArg.expression(template));
  const KustoDatabasePrincipalAssignmentRole.arg(TfArg<String> arg)
    : this._(arg);

  static const admin = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('Admin'),
  );
  static const ingestor = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('Ingestor'),
  );
  static const monitor = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('Monitor'),
  );
  static const unrestrictedviewer = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('UnrestrictedViewer'),
  );
  static const user = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('User'),
  );
  static const viewer = KustoDatabasePrincipalAssignmentRole._(
    TfArgLiteral('Viewer'),
  );

  static const List<KustoDatabasePrincipalAssignmentRole> values = [
    admin,
    ingestor,
    monitor,
    unrestrictedviewer,
    user,
    viewer,
  ];
}

/// Factory wrapper for `azurerm_kusto_database_principal_assignment`.
final class AzurermKustoDatabasePrincipalAssignment extends Resource {
  static const String tfType = 'azurerm_kusto_database_principal_assignment';

  AzurermKustoDatabasePrincipalAssignment(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> databaseName,
    required TfArg<String> name,
    required TfArg<String> principalId,
    required KustoDatabasePrincipalAssignmentPrincipalType principalType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required KustoDatabasePrincipalAssignmentRole role,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'database_name': databaseName,
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
      _azurermKustoDatabasePrincipalAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoDatabasePrincipalAssignment>`.
  RefTo<AzurermKustoDatabasePrincipalAssignment> get ref => RefTo.of(this);

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

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

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
