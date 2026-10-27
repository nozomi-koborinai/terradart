// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../management/azurerm_management_group.dart';

/// Sensitive field paths for `azurerm_management_group`.
const Set<String> _azurermManagementGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_management_group`.
final class DataAzurermManagementGroup extends Data {
  static const String tfType = 'azurerm_management_group';

  DataAzurermManagementGroup(
    super.localName, {
    TfArg<String>? displayName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'display_name': ?displayName, 'name': ?name},
       );

  @override
  Set<String> get sensitiveFields => _azurermManagementGroupSensitive;

  /// A reference to the `azurerm_management_group` this data source reads, for
  /// arguments typed `RefTo<AzurermManagementGroup>`.
  RefTo<AzurermManagementGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_management_group_ids` attribute.
  TfRef<List<String>> get allManagementGroupIds =>
      TfRef.attribute<List<String>>(this, 'all_management_group_ids');

  /// Reference to `all_subscription_ids` attribute.
  TfRef<List<String>> get allSubscriptionIds =>
      TfRef.attribute<List<String>>(this, 'all_subscription_ids');

  /// Reference to `management_group_ids` attribute.
  TfRef<List<String>> get managementGroupIds =>
      TfRef.attribute<List<String>>(this, 'management_group_ids');

  /// Reference to `parent_management_group_id` attribute.
  TfRef<String> get parentManagementGroupId =>
      TfRef.attribute<String>(this, 'parent_management_group_id');

  /// Reference to `subscription_ids` attribute.
  TfRef<List<String>> get subscriptionIds =>
      TfRef.attribute<List<String>>(this, 'subscription_ids');

  /// Reference to `tenant_scoped_id` attribute.
  TfRef<String> get tenantScopedId =>
      TfRef.attribute<String>(this, 'tenant_scoped_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
