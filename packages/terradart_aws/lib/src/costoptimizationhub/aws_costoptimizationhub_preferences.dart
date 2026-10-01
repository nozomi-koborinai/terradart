// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_costoptimizationhub_preferences`.
const Set<String> _awsCostoptimizationhubPreferencesSensitive = <String>{};

/// Costoptimizationhub Preferences Member Account Discount enum for `member_account_discount_visibility`.
extension type const CostoptimizationhubPreferencesMemberAccountDiscountVisibility._(
  TfArg<String> _
) implements TfArg<String> {
  CostoptimizationhubPreferencesMemberAccountDiscountVisibility.variable(
    String name,
  ) : this._(TfArg.variable(name));
  CostoptimizationhubPreferencesMemberAccountDiscountVisibility.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CostoptimizationhubPreferencesMemberAccountDiscountVisibility.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const all =
      CostoptimizationhubPreferencesMemberAccountDiscountVisibility._(
        TfArgLiteral('All'),
      );
  static const none =
      CostoptimizationhubPreferencesMemberAccountDiscountVisibility._(
        TfArgLiteral('None'),
      );

  static const List<
    CostoptimizationhubPreferencesMemberAccountDiscountVisibility
  >
  values = [all, none];
}

/// Costoptimizationhub Preferences Savings Estimation enum for `savings_estimation_mode`.
extension type const CostoptimizationhubPreferencesSavingsEstimationMode._(
  TfArg<String> _
) implements TfArg<String> {
  CostoptimizationhubPreferencesSavingsEstimationMode.variable(String name)
    : this._(TfArg.variable(name));
  CostoptimizationhubPreferencesSavingsEstimationMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CostoptimizationhubPreferencesSavingsEstimationMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const beforediscounts =
      CostoptimizationhubPreferencesSavingsEstimationMode._(
        TfArgLiteral('BeforeDiscounts'),
      );
  static const afterdiscounts =
      CostoptimizationhubPreferencesSavingsEstimationMode._(
        TfArgLiteral('AfterDiscounts'),
      );

  static const List<CostoptimizationhubPreferencesSavingsEstimationMode>
  values = [beforediscounts, afterdiscounts];
}

/// Factory wrapper for `aws_costoptimizationhub_preferences`.
final class AwsCostoptimizationhubPreferences extends Resource {
  static const String tfType = 'aws_costoptimizationhub_preferences';

  AwsCostoptimizationhubPreferences(
    super.localName, {
    CostoptimizationhubPreferencesMemberAccountDiscountVisibility?
    memberAccountDiscountVisibility,
    CostoptimizationhubPreferencesSavingsEstimationMode? savingsEstimationMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'member_account_discount_visibility':
               ?memberAccountDiscountVisibility,
           'savings_estimation_mode': ?savingsEstimationMode,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCostoptimizationhubPreferencesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCostoptimizationhubPreferences>`.
  RefTo<AwsCostoptimizationhubPreferences> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `member_account_discount_visibility` attribute.
  TfRef<String> get memberAccountDiscountVisibility =>
      TfRef.attribute<String>(this, 'member_account_discount_visibility');

  /// Reference to `savings_estimation_mode` attribute.
  TfRef<String> get savingsEstimationMode =>
      TfRef.attribute<String>(this, 'savings_estimation_mode');
}
