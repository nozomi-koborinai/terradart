// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../subscription/azurerm_subscription.dart';

/// Sensitive field paths for `azurerm_subscription`.
const Set<String> _azurermSubscriptionSensitive = <String>{};

/// Factory wrapper for `azurerm_subscription`.
final class DataAzurermSubscription extends Data {
  static const String tfType = 'azurerm_subscription';

  DataAzurermSubscription(
    super.localName, {
    TfArg<String>? subscriptionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'subscription_id': ?subscriptionId},
       );

  @override
  Set<String> get sensitiveFields => _azurermSubscriptionSensitive;

  /// A reference to the `azurerm_subscription` this data source reads, for
  /// arguments typed `RefTo<AzurermSubscription>`.
  RefTo<AzurermSubscription> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location_placement_id` attribute.
  TfRef<String> get locationPlacementId =>
      TfRef.attribute<String>(this, 'location_placement_id');

  /// Reference to `quota_id` attribute.
  TfRef<String> get quotaId => TfRef.attribute<String>(this, 'quota_id');

  /// Reference to `spending_limit` attribute.
  TfRef<String> get spendingLimit =>
      TfRef.attribute<String>(this, 'spending_limit');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
