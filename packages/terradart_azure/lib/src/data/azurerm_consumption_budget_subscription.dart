// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../consumption/azurerm_consumption_budget_subscription.dart';

/// Sensitive field paths for `azurerm_consumption_budget_subscription`.
const Set<String> _azurermConsumptionBudgetSubscriptionSensitive = <String>{};

/// Factory wrapper for `azurerm_consumption_budget_subscription`.
final class DataAzurermConsumptionBudgetSubscription extends Data {
  static const String tfType = 'azurerm_consumption_budget_subscription';

  DataAzurermConsumptionBudgetSubscription(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> subscriptionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'subscription_id': subscriptionId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermConsumptionBudgetSubscriptionSensitive;

  /// A reference to the `azurerm_consumption_budget_subscription` this data source reads, for
  /// arguments typed `RefTo<AzurermConsumptionBudgetSubscription>`.
  RefTo<AzurermConsumptionBudgetSubscription> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amount` attribute.
  TfRef<num> get amount => TfRef.attribute<num>(this, 'amount');

  /// Reference to `filter` attribute.
  TfRef<List<Map<String, Object?>>> get filter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'filter');

  /// Reference to `notification` attribute.
  TfRef<List<Map<String, Object?>>> get notification =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'notification');

  /// Reference to `time_grain` attribute.
  TfRef<String> get timeGrain => TfRef.attribute<String>(this, 'time_grain');

  /// Reference to `time_period` attribute.
  TfRef<List<Map<String, Object?>>> get timePeriod =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'time_period');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
