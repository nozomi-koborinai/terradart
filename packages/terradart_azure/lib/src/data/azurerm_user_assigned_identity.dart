// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../identity/azurerm_user_assigned_identity.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_user_assigned_identity`.
const Set<String> _azurermUserAssignedIdentitySensitive = <String>{};

/// Factory wrapper for `azurerm_user_assigned_identity`.
final class DataAzurermUserAssignedIdentity extends Data {
  static const String tfType = 'azurerm_user_assigned_identity';

  DataAzurermUserAssignedIdentity(
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
  Set<String> get sensitiveFields => _azurermUserAssignedIdentitySensitive;

  /// A reference to the `azurerm_user_assigned_identity` this data source reads, for
  /// arguments typed `RefTo<AzurermUserAssignedIdentity>`.
  RefTo<AzurermUserAssignedIdentity> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `isolation_scope` attribute.
  TfRef<String> get isolationScope =>
      TfRef.attribute<String>(this, 'isolation_scope');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
