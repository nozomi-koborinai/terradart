// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_management_group`.
const Set<String> _azurermManagementGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_management_group`.
final class AzurermManagementGroup extends Resource {
  static const String tfType = 'azurerm_management_group';

  AzurermManagementGroup(
    super.localName, {
    TfArg<String>? displayName,
    TfArg<String>? name,
    TfArg<String>? parentManagementGroupId,
    TfArg<List<String>>? subscriptionIds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'name': ?name,
           'parent_management_group_id': ?parentManagementGroupId,
           'subscription_ids': ?subscriptionIds,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagementGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagementGroup>`.
  RefTo<AzurermManagementGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tenant_scoped_id` attribute.
  TfRef<String> get tenantScopedId =>
      TfRef.attribute<String>(this, 'tenant_scoped_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent_management_group_id` attribute.
  TfRef<String> get parentManagementGroupId =>
      TfRef.attribute<String>(this, 'parent_management_group_id');

  /// Reference to `subscription_ids` attribute.
  TfRef<List<String>> get subscriptionIds =>
      TfRef.attribute<List<String>>(this, 'subscription_ids');
}
