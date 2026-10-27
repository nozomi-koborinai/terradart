// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_management_group_subscription_association`.
const Set<String> _azurermManagementGroupSubscriptionAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_management_group_subscription_association`.
final class AzurermManagementGroupSubscriptionAssociation extends Resource {
  static const String tfType =
      'azurerm_management_group_subscription_association';

  AzurermManagementGroupSubscriptionAssociation(
    super.localName, {
    required TfArg<String> managementGroupId,
    required TfArg<String> subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'management_group_id': managementGroupId,
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagementGroupSubscriptionAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagementGroupSubscriptionAssociation>`.
  RefTo<AzurermManagementGroupSubscriptionAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
