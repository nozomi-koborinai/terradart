// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_user_assigned_identity`.
const Set<String> _azurermUserAssignedIdentitySensitive = <String>{};

/// User Assigned Identity Isolation enum for `isolation_scope`.
extension type const UserAssignedIdentityIsolationScope._(TfArg<String> _)
    implements TfArg<String> {
  UserAssignedIdentityIsolationScope.variable(String name)
    : this._(TfArg.variable(name));
  UserAssignedIdentityIsolationScope.expression(String template)
    : this._(TfArg.expression(template));
  const UserAssignedIdentityIsolationScope.arg(TfArg<String> arg) : this._(arg);

  static const regional = UserAssignedIdentityIsolationScope._(
    TfArgLiteral('Regional'),
  );

  static const List<UserAssignedIdentityIsolationScope> values = [regional];
}

/// Factory wrapper for `azurerm_user_assigned_identity`.
final class AzurermUserAssignedIdentity extends Resource {
  static const String tfType = 'azurerm_user_assigned_identity';

  AzurermUserAssignedIdentity(
    super.localName, {
    UserAssignedIdentityIsolationScope? isolationScope,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'isolation_scope': ?isolationScope,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermUserAssignedIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermUserAssignedIdentity>`.
  RefTo<AzurermUserAssignedIdentity> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `isolation_scope` attribute.
  TfRef<String> get isolationScope =>
      TfRef.attribute<String>(this, 'isolation_scope');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
