// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_costoptimizationhub_preferences`.
const Set<String> _awsCostoptimizationhubPreferencesSensitive = <String>{};

/// Costoptimizationhub Preferences Member Account Discount enum for `member_account_discount_visibility`.
enum CostoptimizationhubPreferencesMemberAccountDiscountVisibility
    implements TerraformEnum {
  all('All'),
  none('None');

  const CostoptimizationhubPreferencesMemberAccountDiscountVisibility(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Costoptimizationhub Preferences Savings Estimation enum for `savings_estimation_mode`.
enum CostoptimizationhubPreferencesSavingsEstimationMode
    implements TerraformEnum {
  beforediscounts('BeforeDiscounts'),
  afterdiscounts('AfterDiscounts');

  const CostoptimizationhubPreferencesSavingsEstimationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_costoptimizationhub_preferences`.
final class AwsCostoptimizationhubPreferences extends Resource {
  static const String tfType = 'aws_costoptimizationhub_preferences';

  AwsCostoptimizationhubPreferences({
    required super.localName,
    TfArg<CostoptimizationhubPreferencesMemberAccountDiscountVisibility>?
    memberAccountDiscountVisibility,
    TfArg<CostoptimizationhubPreferencesSavingsEstimationMode>?
    savingsEstimationMode,
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
  TfRef<String> get memberAccountDiscountVisibilityRef =>
      TfRef.attribute<String>(this, 'member_account_discount_visibility');

  /// Reference to `savings_estimation_mode` attribute.
  TfRef<String> get savingsEstimationModeRef =>
      TfRef.attribute<String>(this, 'savings_estimation_mode');
}
