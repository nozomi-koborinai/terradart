// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_budgets_budget`.
const Set<String> _awsBudgetsBudgetSensitive = <String>{};

/// Factory wrapper for `aws_budgets_budget`.
final class DataAwsBudgetsBudget extends Data {
  static const String tfType = 'aws_budgets_budget';

  DataAwsBudgetsBudget({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> name,
    TfArg<String>? namePrefix,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBudgetsBudgetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_adjust_data` attribute.
  TfRef<List<Map<String, Object?>>> get autoAdjustData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'auto_adjust_data');

  /// Reference to `billing_view_arn` attribute.
  TfRef<String> get billingViewArn =>
      TfRef.attribute<String>(this, 'billing_view_arn');

  /// Reference to `budget_exceeded` attribute.
  TfRef<bool> get budgetExceeded =>
      TfRef.attribute<bool>(this, 'budget_exceeded');

  /// Reference to `budget_limit` attribute.
  TfRef<List<Map<String, Object?>>> get budgetLimit =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'budget_limit');

  /// Reference to `budget_type` attribute.
  TfRef<String> get budgetType => TfRef.attribute<String>(this, 'budget_type');

  /// Reference to `calculated_spend` attribute.
  TfRef<List<Map<String, Object?>>> get calculatedSpend =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'calculated_spend');

  /// Reference to `cost_filter` attribute.
  TfRef<List<Map<String, Object?>>> get costFilter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cost_filter');

  /// Reference to `cost_types` attribute.
  TfRef<List<Map<String, Object?>>> get costTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cost_types');

  /// Reference to `notification` attribute.
  TfRef<List<Map<String, Object?>>> get notification =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'notification');

  /// Reference to `planned_limit` attribute.
  TfRef<List<Map<String, Object?>>> get plannedLimit =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'planned_limit');

  /// Reference to `time_period_end` attribute.
  TfRef<String> get timePeriodEnd =>
      TfRef.attribute<String>(this, 'time_period_end');

  /// Reference to `time_period_start` attribute.
  TfRef<String> get timePeriodStart =>
      TfRef.attribute<String>(this, 'time_period_start');

  /// Reference to `time_unit` attribute.
  TfRef<String> get timeUnit => TfRef.attribute<String>(this, 'time_unit');
}
